                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module usb_hid
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _HID_sendReport_PARM_2
                                     12 	.globl _USB_init
                                     13 	.globl _UIF_BUS_RST
                                     14 	.globl _UIF_DETECT
                                     15 	.globl _UIF_TRANSFER
                                     16 	.globl _UIF_SUSPEND
                                     17 	.globl _UIF_HST_SOF
                                     18 	.globl _UIF_FIFO_OV
                                     19 	.globl _U_SIE_FREE
                                     20 	.globl _U_TOG_OK
                                     21 	.globl _U_IS_NAK
                                     22 	.globl _ADC_CHAN0
                                     23 	.globl _ADC_CHAN1
                                     24 	.globl _CMP_CHAN
                                     25 	.globl _ADC_START
                                     26 	.globl _ADC_IF
                                     27 	.globl _CMP_IF
                                     28 	.globl _CMPO
                                     29 	.globl _U1RI
                                     30 	.globl _U1TI
                                     31 	.globl _U1RB8
                                     32 	.globl _U1TB8
                                     33 	.globl _U1REN
                                     34 	.globl _U1SMOD
                                     35 	.globl _U1SM0
                                     36 	.globl _S0_R_FIFO
                                     37 	.globl _S0_T_FIFO
                                     38 	.globl _S0_FREE
                                     39 	.globl _S0_IF_BYTE
                                     40 	.globl _S0_IF_FIRST
                                     41 	.globl _S0_IF_OV
                                     42 	.globl _S0_FST_ACT
                                     43 	.globl _CP_RL2
                                     44 	.globl _C_T2
                                     45 	.globl _TR2
                                     46 	.globl _EXEN2
                                     47 	.globl _TCLK
                                     48 	.globl _RCLK
                                     49 	.globl _EXF2
                                     50 	.globl _CAP1F
                                     51 	.globl _TF2
                                     52 	.globl _RI
                                     53 	.globl _TI
                                     54 	.globl _RB8
                                     55 	.globl _TB8
                                     56 	.globl _REN
                                     57 	.globl _SM2
                                     58 	.globl _SM1
                                     59 	.globl _SM0
                                     60 	.globl _IT0
                                     61 	.globl _IE0
                                     62 	.globl _IT1
                                     63 	.globl _IE1
                                     64 	.globl _TR0
                                     65 	.globl _TF0
                                     66 	.globl _TR1
                                     67 	.globl _TF1
                                     68 	.globl _RXD
                                     69 	.globl _PWM1_
                                     70 	.globl _TXD
                                     71 	.globl _PWM2_
                                     72 	.globl _AIN3
                                     73 	.globl _VBUS1
                                     74 	.globl _INT0
                                     75 	.globl _TXD1_
                                     76 	.globl _INT1
                                     77 	.globl _T0
                                     78 	.globl _RXD1_
                                     79 	.globl _PWM2
                                     80 	.globl _T1
                                     81 	.globl _UDP
                                     82 	.globl _UDM
                                     83 	.globl _TIN0
                                     84 	.globl _CAP1
                                     85 	.globl _T2
                                     86 	.globl _AIN0
                                     87 	.globl _VBUS2
                                     88 	.globl _TIN1
                                     89 	.globl _CAP2
                                     90 	.globl _T2EX
                                     91 	.globl _RXD_
                                     92 	.globl _TXD_
                                     93 	.globl _AIN1
                                     94 	.globl _UCC1
                                     95 	.globl _TIN2
                                     96 	.globl _SCS
                                     97 	.globl _CAP1_
                                     98 	.globl _T2_
                                     99 	.globl _AIN2
                                    100 	.globl _UCC2
                                    101 	.globl _TIN3
                                    102 	.globl _PWM1
                                    103 	.globl _MOSI
                                    104 	.globl _TIN4
                                    105 	.globl _RXD1
                                    106 	.globl _MISO
                                    107 	.globl _TIN5
                                    108 	.globl _TXD1
                                    109 	.globl _SCK
                                    110 	.globl _IE_SPI0
                                    111 	.globl _IE_TKEY
                                    112 	.globl _IE_USB
                                    113 	.globl _IE_ADC
                                    114 	.globl _IE_UART1
                                    115 	.globl _IE_PWMX
                                    116 	.globl _IE_GPIO
                                    117 	.globl _IE_WDOG
                                    118 	.globl _PX0
                                    119 	.globl _PT0
                                    120 	.globl _PX1
                                    121 	.globl _PT1
                                    122 	.globl _PS
                                    123 	.globl _PT2
                                    124 	.globl _PL_FLAG
                                    125 	.globl _PH_FLAG
                                    126 	.globl _EX0
                                    127 	.globl _ET0
                                    128 	.globl _EX1
                                    129 	.globl _ET1
                                    130 	.globl _ES
                                    131 	.globl _ET2
                                    132 	.globl _E_DIS
                                    133 	.globl _EA
                                    134 	.globl _P
                                    135 	.globl _F1
                                    136 	.globl _OV
                                    137 	.globl _RS0
                                    138 	.globl _RS1
                                    139 	.globl _F0
                                    140 	.globl _AC
                                    141 	.globl _CY
                                    142 	.globl _UEP1_DMA_H
                                    143 	.globl _UEP1_DMA_L
                                    144 	.globl _UEP1_DMA
                                    145 	.globl _UEP0_DMA_H
                                    146 	.globl _UEP0_DMA_L
                                    147 	.globl _UEP0_DMA
                                    148 	.globl _UEP2_3_MOD
                                    149 	.globl _UEP4_1_MOD
                                    150 	.globl _UEP3_DMA_H
                                    151 	.globl _UEP3_DMA_L
                                    152 	.globl _UEP3_DMA
                                    153 	.globl _UEP2_DMA_H
                                    154 	.globl _UEP2_DMA_L
                                    155 	.globl _UEP2_DMA
                                    156 	.globl _USB_DEV_AD
                                    157 	.globl _USB_CTRL
                                    158 	.globl _USB_INT_EN
                                    159 	.globl _UEP4_T_LEN
                                    160 	.globl _UEP4_CTRL
                                    161 	.globl _UEP0_T_LEN
                                    162 	.globl _UEP0_CTRL
                                    163 	.globl _USB_RX_LEN
                                    164 	.globl _USB_MIS_ST
                                    165 	.globl _USB_INT_ST
                                    166 	.globl _USB_INT_FG
                                    167 	.globl _UEP3_T_LEN
                                    168 	.globl _UEP3_CTRL
                                    169 	.globl _UEP2_T_LEN
                                    170 	.globl _UEP2_CTRL
                                    171 	.globl _UEP1_T_LEN
                                    172 	.globl _UEP1_CTRL
                                    173 	.globl _UDEV_CTRL
                                    174 	.globl _USB_C_CTRL
                                    175 	.globl _TKEY_DATH
                                    176 	.globl _TKEY_DATL
                                    177 	.globl _TKEY_DAT
                                    178 	.globl _TKEY_CTRL
                                    179 	.globl _ADC_DATA
                                    180 	.globl _ADC_CFG
                                    181 	.globl _ADC_CTRL
                                    182 	.globl _SBAUD1
                                    183 	.globl _SBUF1
                                    184 	.globl _SCON1
                                    185 	.globl _SPI0_SETUP
                                    186 	.globl _SPI0_CK_SE
                                    187 	.globl _SPI0_CTRL
                                    188 	.globl _SPI0_DATA
                                    189 	.globl _SPI0_STAT
                                    190 	.globl _PWM_CK_SE
                                    191 	.globl _PWM_CTRL
                                    192 	.globl _PWM_DATA1
                                    193 	.globl _PWM_DATA2
                                    194 	.globl _T2CAP1H
                                    195 	.globl _T2CAP1L
                                    196 	.globl _T2CAP1
                                    197 	.globl _TH2
                                    198 	.globl _TL2
                                    199 	.globl _T2COUNT
                                    200 	.globl _RCAP2H
                                    201 	.globl _RCAP2L
                                    202 	.globl _RCAP2
                                    203 	.globl _T2MOD
                                    204 	.globl _T2CON
                                    205 	.globl _SBUF
                                    206 	.globl _SCON
                                    207 	.globl _TH1
                                    208 	.globl _TH0
                                    209 	.globl _TL1
                                    210 	.globl _TL0
                                    211 	.globl _TMOD
                                    212 	.globl _TCON
                                    213 	.globl _XBUS_AUX
                                    214 	.globl _PIN_FUNC
                                    215 	.globl _P3_DIR_PU
                                    216 	.globl _P3_MOD_OC
                                    217 	.globl _P3
                                    218 	.globl _P2
                                    219 	.globl _P1_DIR_PU
                                    220 	.globl _P1_MOD_OC
                                    221 	.globl _P1
                                    222 	.globl _ROM_CTRL
                                    223 	.globl _ROM_DATA_H
                                    224 	.globl _ROM_DATA_L
                                    225 	.globl _ROM_DATA
                                    226 	.globl _ROM_ADDR_H
                                    227 	.globl _ROM_ADDR_L
                                    228 	.globl _ROM_ADDR
                                    229 	.globl _GPIO_IE
                                    230 	.globl _IP_EX
                                    231 	.globl _IE_EX
                                    232 	.globl _IP
                                    233 	.globl _IE
                                    234 	.globl _WDOG_COUNT
                                    235 	.globl _RESET_KEEP
                                    236 	.globl _WAKE_CTRL
                                    237 	.globl _CLOCK_CFG
                                    238 	.globl _PCON
                                    239 	.globl _GLOBAL_CFG
                                    240 	.globl _SAFE_MOD
                                    241 	.globl _DPH
                                    242 	.globl _DPL
                                    243 	.globl _SP
                                    244 	.globl _B
                                    245 	.globl _ACC
                                    246 	.globl _PSW
                                    247 	.globl _EP2_buffer
                                    248 	.globl _EP1_buffer
                                    249 	.globl _EP0_buffer
                                    250 	.globl _HID_EP1_writeBusyFlag
                                    251 	.globl _HID_init
                                    252 	.globl _HID_sendReport
                                    253 	.globl _HID_setup
                                    254 	.globl _HID_reset
                                    255 	.globl _HID_EP1_IN
                                    256 	.globl _HID_EP2_OUT
                                    257 ;--------------------------------------------------------
                                    258 ; special function registers
                                    259 ;--------------------------------------------------------
                                    260 	.area RSEG    (ABS,DATA)
      000000                        261 	.org 0x0000
                           0000D0   262 _PSW	=	0x00d0
                           0000E0   263 _ACC	=	0x00e0
                           0000F0   264 _B	=	0x00f0
                           000081   265 _SP	=	0x0081
                           000082   266 _DPL	=	0x0082
                           000083   267 _DPH	=	0x0083
                           0000A1   268 _SAFE_MOD	=	0x00a1
                           0000B1   269 _GLOBAL_CFG	=	0x00b1
                           000087   270 _PCON	=	0x0087
                           0000B9   271 _CLOCK_CFG	=	0x00b9
                           0000A9   272 _WAKE_CTRL	=	0x00a9
                           0000FE   273 _RESET_KEEP	=	0x00fe
                           0000FF   274 _WDOG_COUNT	=	0x00ff
                           0000A8   275 _IE	=	0x00a8
                           0000B8   276 _IP	=	0x00b8
                           0000E8   277 _IE_EX	=	0x00e8
                           0000E9   278 _IP_EX	=	0x00e9
                           0000C7   279 _GPIO_IE	=	0x00c7
                           008584   280 _ROM_ADDR	=	0x8584
                           000084   281 _ROM_ADDR_L	=	0x0084
                           000085   282 _ROM_ADDR_H	=	0x0085
                           008F8E   283 _ROM_DATA	=	0x8f8e
                           00008E   284 _ROM_DATA_L	=	0x008e
                           00008F   285 _ROM_DATA_H	=	0x008f
                           000086   286 _ROM_CTRL	=	0x0086
                           000090   287 _P1	=	0x0090
                           000092   288 _P1_MOD_OC	=	0x0092
                           000093   289 _P1_DIR_PU	=	0x0093
                           0000A0   290 _P2	=	0x00a0
                           0000B0   291 _P3	=	0x00b0
                           000096   292 _P3_MOD_OC	=	0x0096
                           000097   293 _P3_DIR_PU	=	0x0097
                           0000C6   294 _PIN_FUNC	=	0x00c6
                           0000A2   295 _XBUS_AUX	=	0x00a2
                           000088   296 _TCON	=	0x0088
                           000089   297 _TMOD	=	0x0089
                           00008A   298 _TL0	=	0x008a
                           00008B   299 _TL1	=	0x008b
                           00008C   300 _TH0	=	0x008c
                           00008D   301 _TH1	=	0x008d
                           000098   302 _SCON	=	0x0098
                           000099   303 _SBUF	=	0x0099
                           0000C8   304 _T2CON	=	0x00c8
                           0000C9   305 _T2MOD	=	0x00c9
                           00CBCA   306 _RCAP2	=	0xcbca
                           0000CA   307 _RCAP2L	=	0x00ca
                           0000CB   308 _RCAP2H	=	0x00cb
                           00CDCC   309 _T2COUNT	=	0xcdcc
                           0000CC   310 _TL2	=	0x00cc
                           0000CD   311 _TH2	=	0x00cd
                           00CFCE   312 _T2CAP1	=	0xcfce
                           0000CE   313 _T2CAP1L	=	0x00ce
                           0000CF   314 _T2CAP1H	=	0x00cf
                           00009B   315 _PWM_DATA2	=	0x009b
                           00009C   316 _PWM_DATA1	=	0x009c
                           00009D   317 _PWM_CTRL	=	0x009d
                           00009E   318 _PWM_CK_SE	=	0x009e
                           0000F8   319 _SPI0_STAT	=	0x00f8
                           0000F9   320 _SPI0_DATA	=	0x00f9
                           0000FA   321 _SPI0_CTRL	=	0x00fa
                           0000FB   322 _SPI0_CK_SE	=	0x00fb
                           0000FC   323 _SPI0_SETUP	=	0x00fc
                           0000C0   324 _SCON1	=	0x00c0
                           0000C1   325 _SBUF1	=	0x00c1
                           0000C2   326 _SBAUD1	=	0x00c2
                           000080   327 _ADC_CTRL	=	0x0080
                           00009A   328 _ADC_CFG	=	0x009a
                           00009F   329 _ADC_DATA	=	0x009f
                           0000C3   330 _TKEY_CTRL	=	0x00c3
                           00C5C4   331 _TKEY_DAT	=	0xc5c4
                           0000C4   332 _TKEY_DATL	=	0x00c4
                           0000C5   333 _TKEY_DATH	=	0x00c5
                           000091   334 _USB_C_CTRL	=	0x0091
                           0000D1   335 _UDEV_CTRL	=	0x00d1
                           0000D2   336 _UEP1_CTRL	=	0x00d2
                           0000D3   337 _UEP1_T_LEN	=	0x00d3
                           0000D4   338 _UEP2_CTRL	=	0x00d4
                           0000D5   339 _UEP2_T_LEN	=	0x00d5
                           0000D6   340 _UEP3_CTRL	=	0x00d6
                           0000D7   341 _UEP3_T_LEN	=	0x00d7
                           0000D8   342 _USB_INT_FG	=	0x00d8
                           0000D9   343 _USB_INT_ST	=	0x00d9
                           0000DA   344 _USB_MIS_ST	=	0x00da
                           0000DB   345 _USB_RX_LEN	=	0x00db
                           0000DC   346 _UEP0_CTRL	=	0x00dc
                           0000DD   347 _UEP0_T_LEN	=	0x00dd
                           0000DE   348 _UEP4_CTRL	=	0x00de
                           0000DF   349 _UEP4_T_LEN	=	0x00df
                           0000E1   350 _USB_INT_EN	=	0x00e1
                           0000E2   351 _USB_CTRL	=	0x00e2
                           0000E3   352 _USB_DEV_AD	=	0x00e3
                           00E5E4   353 _UEP2_DMA	=	0xe5e4
                           0000E4   354 _UEP2_DMA_L	=	0x00e4
                           0000E5   355 _UEP2_DMA_H	=	0x00e5
                           00E7E6   356 _UEP3_DMA	=	0xe7e6
                           0000E6   357 _UEP3_DMA_L	=	0x00e6
                           0000E7   358 _UEP3_DMA_H	=	0x00e7
                           0000EA   359 _UEP4_1_MOD	=	0x00ea
                           0000EB   360 _UEP2_3_MOD	=	0x00eb
                           00EDEC   361 _UEP0_DMA	=	0xedec
                           0000EC   362 _UEP0_DMA_L	=	0x00ec
                           0000ED   363 _UEP0_DMA_H	=	0x00ed
                           00EFEE   364 _UEP1_DMA	=	0xefee
                           0000EE   365 _UEP1_DMA_L	=	0x00ee
                           0000EF   366 _UEP1_DMA_H	=	0x00ef
                                    367 ;--------------------------------------------------------
                                    368 ; special function bits
                                    369 ;--------------------------------------------------------
                                    370 	.area RSEG    (ABS,DATA)
      000000                        371 	.org 0x0000
                           0000D7   372 _CY	=	0x00d7
                           0000D6   373 _AC	=	0x00d6
                           0000D5   374 _F0	=	0x00d5
                           0000D4   375 _RS1	=	0x00d4
                           0000D3   376 _RS0	=	0x00d3
                           0000D2   377 _OV	=	0x00d2
                           0000D1   378 _F1	=	0x00d1
                           0000D0   379 _P	=	0x00d0
                           0000AF   380 _EA	=	0x00af
                           0000AE   381 _E_DIS	=	0x00ae
                           0000AD   382 _ET2	=	0x00ad
                           0000AC   383 _ES	=	0x00ac
                           0000AB   384 _ET1	=	0x00ab
                           0000AA   385 _EX1	=	0x00aa
                           0000A9   386 _ET0	=	0x00a9
                           0000A8   387 _EX0	=	0x00a8
                           0000BF   388 _PH_FLAG	=	0x00bf
                           0000BE   389 _PL_FLAG	=	0x00be
                           0000BD   390 _PT2	=	0x00bd
                           0000BC   391 _PS	=	0x00bc
                           0000BB   392 _PT1	=	0x00bb
                           0000BA   393 _PX1	=	0x00ba
                           0000B9   394 _PT0	=	0x00b9
                           0000B8   395 _PX0	=	0x00b8
                           0000EF   396 _IE_WDOG	=	0x00ef
                           0000EE   397 _IE_GPIO	=	0x00ee
                           0000ED   398 _IE_PWMX	=	0x00ed
                           0000EC   399 _IE_UART1	=	0x00ec
                           0000EB   400 _IE_ADC	=	0x00eb
                           0000EA   401 _IE_USB	=	0x00ea
                           0000E9   402 _IE_TKEY	=	0x00e9
                           0000E8   403 _IE_SPI0	=	0x00e8
                           000097   404 _SCK	=	0x0097
                           000097   405 _TXD1	=	0x0097
                           000097   406 _TIN5	=	0x0097
                           000096   407 _MISO	=	0x0096
                           000096   408 _RXD1	=	0x0096
                           000096   409 _TIN4	=	0x0096
                           000095   410 _MOSI	=	0x0095
                           000095   411 _PWM1	=	0x0095
                           000095   412 _TIN3	=	0x0095
                           000095   413 _UCC2	=	0x0095
                           000095   414 _AIN2	=	0x0095
                           000094   415 _T2_	=	0x0094
                           000094   416 _CAP1_	=	0x0094
                           000094   417 _SCS	=	0x0094
                           000094   418 _TIN2	=	0x0094
                           000094   419 _UCC1	=	0x0094
                           000094   420 _AIN1	=	0x0094
                           000093   421 _TXD_	=	0x0093
                           000092   422 _RXD_	=	0x0092
                           000091   423 _T2EX	=	0x0091
                           000091   424 _CAP2	=	0x0091
                           000091   425 _TIN1	=	0x0091
                           000091   426 _VBUS2	=	0x0091
                           000091   427 _AIN0	=	0x0091
                           000090   428 _T2	=	0x0090
                           000090   429 _CAP1	=	0x0090
                           000090   430 _TIN0	=	0x0090
                           0000B7   431 _UDM	=	0x00b7
                           0000B6   432 _UDP	=	0x00b6
                           0000B5   433 _T1	=	0x00b5
                           0000B4   434 _PWM2	=	0x00b4
                           0000B4   435 _RXD1_	=	0x00b4
                           0000B4   436 _T0	=	0x00b4
                           0000B3   437 _INT1	=	0x00b3
                           0000B2   438 _TXD1_	=	0x00b2
                           0000B2   439 _INT0	=	0x00b2
                           0000B2   440 _VBUS1	=	0x00b2
                           0000B2   441 _AIN3	=	0x00b2
                           0000B1   442 _PWM2_	=	0x00b1
                           0000B1   443 _TXD	=	0x00b1
                           0000B0   444 _PWM1_	=	0x00b0
                           0000B0   445 _RXD	=	0x00b0
                           00008F   446 _TF1	=	0x008f
                           00008E   447 _TR1	=	0x008e
                           00008D   448 _TF0	=	0x008d
                           00008C   449 _TR0	=	0x008c
                           00008B   450 _IE1	=	0x008b
                           00008A   451 _IT1	=	0x008a
                           000089   452 _IE0	=	0x0089
                           000088   453 _IT0	=	0x0088
                           00009F   454 _SM0	=	0x009f
                           00009E   455 _SM1	=	0x009e
                           00009D   456 _SM2	=	0x009d
                           00009C   457 _REN	=	0x009c
                           00009B   458 _TB8	=	0x009b
                           00009A   459 _RB8	=	0x009a
                           000099   460 _TI	=	0x0099
                           000098   461 _RI	=	0x0098
                           0000CF   462 _TF2	=	0x00cf
                           0000CF   463 _CAP1F	=	0x00cf
                           0000CE   464 _EXF2	=	0x00ce
                           0000CD   465 _RCLK	=	0x00cd
                           0000CC   466 _TCLK	=	0x00cc
                           0000CB   467 _EXEN2	=	0x00cb
                           0000CA   468 _TR2	=	0x00ca
                           0000C9   469 _C_T2	=	0x00c9
                           0000C8   470 _CP_RL2	=	0x00c8
                           0000FF   471 _S0_FST_ACT	=	0x00ff
                           0000FE   472 _S0_IF_OV	=	0x00fe
                           0000FD   473 _S0_IF_FIRST	=	0x00fd
                           0000FC   474 _S0_IF_BYTE	=	0x00fc
                           0000FB   475 _S0_FREE	=	0x00fb
                           0000FA   476 _S0_T_FIFO	=	0x00fa
                           0000F8   477 _S0_R_FIFO	=	0x00f8
                           0000C7   478 _U1SM0	=	0x00c7
                           0000C5   479 _U1SMOD	=	0x00c5
                           0000C4   480 _U1REN	=	0x00c4
                           0000C3   481 _U1TB8	=	0x00c3
                           0000C2   482 _U1RB8	=	0x00c2
                           0000C1   483 _U1TI	=	0x00c1
                           0000C0   484 _U1RI	=	0x00c0
                           000087   485 _CMPO	=	0x0087
                           000086   486 _CMP_IF	=	0x0086
                           000085   487 _ADC_IF	=	0x0085
                           000084   488 _ADC_START	=	0x0084
                           000083   489 _CMP_CHAN	=	0x0083
                           000081   490 _ADC_CHAN1	=	0x0081
                           000080   491 _ADC_CHAN0	=	0x0080
                           0000DF   492 _U_IS_NAK	=	0x00df
                           0000DE   493 _U_TOG_OK	=	0x00de
                           0000DD   494 _U_SIE_FREE	=	0x00dd
                           0000DC   495 _UIF_FIFO_OV	=	0x00dc
                           0000DB   496 _UIF_HST_SOF	=	0x00db
                           0000DA   497 _UIF_SUSPEND	=	0x00da
                           0000D9   498 _UIF_TRANSFER	=	0x00d9
                           0000D8   499 _UIF_DETECT	=	0x00d8
                           0000D8   500 _UIF_BUS_RST	=	0x00d8
                                    501 ;--------------------------------------------------------
                                    502 ; overlayable register banks
                                    503 ;--------------------------------------------------------
                                    504 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        505 	.ds 8
                                    506 ;--------------------------------------------------------
                                    507 ; internal ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area DSEG    (DATA)
                                    510 ;--------------------------------------------------------
                                    511 ; overlayable items in internal ram
                                    512 ;--------------------------------------------------------
                                    513 	.area	OSEG    (OVR,DATA)
      000013                        514 _HID_sendReport_PARM_2:
      000013                        515 	.ds 1
                                    516 ;--------------------------------------------------------
                                    517 ; indirectly addressable internal ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area ISEG    (DATA)
                                    520 ;--------------------------------------------------------
                                    521 ; absolute internal ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area IABS    (ABS,DATA)
                                    524 	.area IABS    (ABS,DATA)
                                    525 ;--------------------------------------------------------
                                    526 ; bit data
                                    527 ;--------------------------------------------------------
                                    528 	.area BSEG    (BIT)
      000002                        529 _HID_EP1_writeBusyFlag::
      000002                        530 	.ds 1
                                    531 ;--------------------------------------------------------
                                    532 ; paged external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area PSEG    (PAG,XDATA)
                                    535 ;--------------------------------------------------------
                                    536 ; external ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XSEG    (XDATA)
                           000000   539 _EP0_buffer	=	0x0000
                           00000A   540 _EP1_buffer	=	0x000a
                           000014   541 _EP2_buffer	=	0x0014
                                    542 ;--------------------------------------------------------
                                    543 ; absolute external ram data
                                    544 ;--------------------------------------------------------
                                    545 	.area XABS    (ABS,XDATA)
                                    546 ;--------------------------------------------------------
                                    547 ; external initialized ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area HOME    (CODE)
                                    550 	.area GSINIT0 (CODE)
                                    551 	.area GSINIT1 (CODE)
                                    552 	.area GSINIT2 (CODE)
                                    553 	.area GSINIT3 (CODE)
                                    554 	.area GSINIT4 (CODE)
                                    555 	.area GSINIT5 (CODE)
                                    556 	.area GSINIT  (CODE)
                                    557 	.area GSFINAL (CODE)
                                    558 	.area CSEG    (CODE)
                                    559 ;--------------------------------------------------------
                                    560 ; global & static initialisations
                                    561 ;--------------------------------------------------------
                                    562 	.area HOME    (CODE)
                                    563 	.area GSINIT  (CODE)
                                    564 	.area GSFINAL (CODE)
                                    565 	.area GSINIT  (CODE)
                                    566 ;	src/usb_hid.c:14: volatile __bit HID_EP1_writeBusyFlag = 0;                   // upload pointer busy flag
                                    567 ;	assignBit
      0000B8 C2 02            [12]  568 	clr	_HID_EP1_writeBusyFlag
                                    569 ;--------------------------------------------------------
                                    570 ; Home
                                    571 ;--------------------------------------------------------
                                    572 	.area HOME    (CODE)
                                    573 	.area HOME    (CODE)
                                    574 ;--------------------------------------------------------
                                    575 ; code
                                    576 ;--------------------------------------------------------
                                    577 	.area CSEG    (CODE)
                                    578 ;------------------------------------------------------------
                                    579 ;Allocation info for local variables in function 'HID_init'
                                    580 ;------------------------------------------------------------
                                    581 ;	src/usb_hid.c:21: void HID_init(void) {
                                    582 ;	-----------------------------------------
                                    583 ;	 function HID_init
                                    584 ;	-----------------------------------------
      000887                        585 _HID_init:
                           000007   586 	ar7 = 0x07
                           000006   587 	ar6 = 0x06
                           000005   588 	ar5 = 0x05
                           000004   589 	ar4 = 0x04
                           000003   590 	ar3 = 0x03
                           000002   591 	ar2 = 0x02
                           000001   592 	ar1 = 0x01
                           000000   593 	ar0 = 0x00
                                    594 ;	src/usb_hid.c:22: USB_init();
      000887 12 08 68         [24]  595 	lcall	_USB_init
                                    596 ;	src/usb_hid.c:23: UEP1_T_LEN  = 0;
      00088A 75 D3 00         [24]  597 	mov	_UEP1_T_LEN,#0x00
                                    598 ;	src/usb_hid.c:24: }
      00088D 22               [24]  599 	ret
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'HID_sendReport'
                                    602 ;------------------------------------------------------------
                                    603 ;len                       Allocated with name '_HID_sendReport_PARM_2'
                                    604 ;buf                       Allocated to registers r6 r7 
                                    605 ;i                         Allocated to registers r5 
                                    606 ;------------------------------------------------------------
                                    607 ;	src/usb_hid.c:27: void HID_sendReport(__xdata uint8_t* buf, uint8_t len) {
                                    608 ;	-----------------------------------------
                                    609 ;	 function HID_sendReport
                                    610 ;	-----------------------------------------
      00088E                        611 _HID_sendReport:
      00088E AE 82            [24]  612 	mov	r6,dpl
      000890 AF 83            [24]  613 	mov	r7,dph
                                    614 ;	src/usb_hid.c:29: while(HID_EP1_writeBusyFlag);                             // wait for ready to write
      000892                        615 00101$:
      000892 20 02 FD         [24]  616 	jb	_HID_EP1_writeBusyFlag,00101$
                                    617 ;	src/usb_hid.c:30: for(i=0; i<len; i++) EP1_buffer[i] = buf[i];              // copy report to EP1 buffer
      000895 7D 00            [12]  618 	mov	r5,#0x00
      000897                        619 00106$:
      000897 C3               [12]  620 	clr	c
      000898 ED               [12]  621 	mov	a,r5
      000899 95 13            [12]  622 	subb	a,_HID_sendReport_PARM_2
      00089B 50 1A            [24]  623 	jnc	00104$
      00089D ED               [12]  624 	mov	a,r5
      00089E 24 0A            [12]  625 	add	a,#_EP1_buffer
      0008A0 FB               [12]  626 	mov	r3,a
      0008A1 E4               [12]  627 	clr	a
      0008A2 34 00            [12]  628 	addc	a,#(_EP1_buffer >> 8)
      0008A4 FC               [12]  629 	mov	r4,a
      0008A5 ED               [12]  630 	mov	a,r5
      0008A6 2E               [12]  631 	add	a,r6
      0008A7 F5 82            [12]  632 	mov	dpl,a
      0008A9 E4               [12]  633 	clr	a
      0008AA 3F               [12]  634 	addc	a,r7
      0008AB F5 83            [12]  635 	mov	dph,a
      0008AD E0               [24]  636 	movx	a,@dptr
      0008AE FA               [12]  637 	mov	r2,a
      0008AF 8B 82            [24]  638 	mov	dpl,r3
      0008B1 8C 83            [24]  639 	mov	dph,r4
      0008B3 F0               [24]  640 	movx	@dptr,a
      0008B4 0D               [12]  641 	inc	r5
      0008B5 80 E0            [24]  642 	sjmp	00106$
      0008B7                        643 00104$:
                                    644 ;	src/usb_hid.c:31: UEP1_T_LEN = len;                                         // set length to upload
      0008B7 85 13 D3         [24]  645 	mov	_UEP1_T_LEN,_HID_sendReport_PARM_2
                                    646 ;	src/usb_hid.c:32: HID_EP1_writeBusyFlag = 1;                                // set busy flag
                                    647 ;	assignBit
      0008BA D2 02            [12]  648 	setb	_HID_EP1_writeBusyFlag
                                    649 ;	src/usb_hid.c:33: UEP1_CTRL = UEP1_CTRL & ~MASK_UEP_T_RES | UEP_T_RES_ACK;  // upload data and respond ACK
      0008BC 53 D2 FC         [24]  650 	anl	_UEP1_CTRL,#0xfc
                                    651 ;	src/usb_hid.c:34: }
      0008BF 22               [24]  652 	ret
                                    653 ;------------------------------------------------------------
                                    654 ;Allocation info for local variables in function 'HID_setup'
                                    655 ;------------------------------------------------------------
                                    656 ;	src/usb_hid.c:41: void HID_setup(void) {
                                    657 ;	-----------------------------------------
                                    658 ;	 function HID_setup
                                    659 ;	-----------------------------------------
      0008C0                        660 _HID_setup:
                                    661 ;	src/usb_hid.c:42: UEP1_DMA    = EP1_ADDR;                   // EP1 data transfer address
      0008C0 75 EE 0A         [24]  662 	mov	((_UEP1_DMA >> 0) & 0xFF),#0x0a
      0008C3 75 EF 00         [24]  663 	mov	((_UEP1_DMA >> 8) & 0xFF),#0x00
                                    664 ;	src/usb_hid.c:43: UEP2_DMA    = EP2_ADDR;                   // EP2 data transfer address
      0008C6 75 E4 14         [24]  665 	mov	((_UEP2_DMA >> 0) & 0xFF),#0x14
      0008C9 75 E5 00         [24]  666 	mov	((_UEP2_DMA >> 8) & 0xFF),#0x00
                                    667 ;	src/usb_hid.c:45: | UEP_T_RES_NAK;              // EP1 IN transaction returns NAK
      0008CC 75 D2 12         [24]  668 	mov	_UEP1_CTRL,#0x12
                                    669 ;	src/usb_hid.c:47: | UEP_R_RES_ACK;              // EP2 OUT transaction returns ACK
      0008CF 75 D4 10         [24]  670 	mov	_UEP2_CTRL,#0x10
                                    671 ;	src/usb_hid.c:48: UEP4_1_MOD  = bUEP1_TX_EN;                // EP1 TX enable
      0008D2 75 EA 40         [24]  672 	mov	_UEP4_1_MOD,#0x40
                                    673 ;	src/usb_hid.c:49: UEP2_3_MOD  = bUEP2_RX_EN;                // EP2 RX enable
      0008D5 75 EB 08         [24]  674 	mov	_UEP2_3_MOD,#0x08
                                    675 ;	src/usb_hid.c:50: }
      0008D8 22               [24]  676 	ret
                                    677 ;------------------------------------------------------------
                                    678 ;Allocation info for local variables in function 'HID_reset'
                                    679 ;------------------------------------------------------------
                                    680 ;	src/usb_hid.c:53: void HID_reset(void) {
                                    681 ;	-----------------------------------------
                                    682 ;	 function HID_reset
                                    683 ;	-----------------------------------------
      0008D9                        684 _HID_reset:
                                    685 ;	src/usb_hid.c:54: UEP1_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK;
      0008D9 75 D2 12         [24]  686 	mov	_UEP1_CTRL,#0x12
                                    687 ;	src/usb_hid.c:55: UEP2_CTRL = bUEP_AUTO_TOG | UEP_R_RES_ACK;
      0008DC 75 D4 10         [24]  688 	mov	_UEP2_CTRL,#0x10
                                    689 ;	src/usb_hid.c:56: HID_EP1_writeBusyFlag = 0;
                                    690 ;	assignBit
      0008DF C2 02            [12]  691 	clr	_HID_EP1_writeBusyFlag
                                    692 ;	src/usb_hid.c:57: }
      0008E1 22               [24]  693 	ret
                                    694 ;------------------------------------------------------------
                                    695 ;Allocation info for local variables in function 'HID_EP1_IN'
                                    696 ;------------------------------------------------------------
                                    697 ;	src/usb_hid.c:60: void HID_EP1_IN(void) {
                                    698 ;	-----------------------------------------
                                    699 ;	 function HID_EP1_IN
                                    700 ;	-----------------------------------------
      0008E2                        701 _HID_EP1_IN:
                                    702 ;	src/usb_hid.c:61: UEP1_T_LEN = 0;                                           // no data to send anymore
      0008E2 75 D3 00         [24]  703 	mov	_UEP1_T_LEN,#0x00
                                    704 ;	src/usb_hid.c:62: UEP1_CTRL = UEP1_CTRL & ~MASK_UEP_T_RES | UEP_T_RES_NAK;  // default NAK
      0008E5 74 FC            [12]  705 	mov	a,#0xfc
      0008E7 55 D2            [12]  706 	anl	a,_UEP1_CTRL
      0008E9 44 02            [12]  707 	orl	a,#0x02
      0008EB F5 D2            [12]  708 	mov	_UEP1_CTRL,a
                                    709 ;	src/usb_hid.c:63: HID_EP1_writeBusyFlag = 0;                                // clear busy flag
                                    710 ;	assignBit
      0008ED C2 02            [12]  711 	clr	_HID_EP1_writeBusyFlag
                                    712 ;	src/usb_hid.c:64: }
      0008EF 22               [24]  713 	ret
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'HID_EP2_OUT'
                                    716 ;------------------------------------------------------------
                                    717 ;	src/usb_hid.c:67: void HID_EP2_OUT(void) {                                    // auto response
                                    718 ;	-----------------------------------------
                                    719 ;	 function HID_EP2_OUT
                                    720 ;	-----------------------------------------
      0008F0                        721 _HID_EP2_OUT:
                                    722 ;	src/usb_hid.c:68: }
      0008F0 22               [24]  723 	ret
                                    724 	.area CSEG    (CODE)
                                    725 	.area CONST   (CODE)
                                    726 	.area CABS    (ABS,CODE)
