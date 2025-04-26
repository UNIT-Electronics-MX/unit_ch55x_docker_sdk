                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module usb_handler
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _USB_EP0_OUT
                                     12 	.globl _USB_EP0_IN
                                     13 	.globl _USB_EP0_SETUP
                                     14 	.globl _USB_EP0_copyDescr
                                     15 	.globl _HID_EP2_OUT
                                     16 	.globl _HID_EP1_IN
                                     17 	.globl _HID_reset
                                     18 	.globl _HID_setup
                                     19 	.globl _UIF_BUS_RST
                                     20 	.globl _UIF_DETECT
                                     21 	.globl _UIF_TRANSFER
                                     22 	.globl _UIF_SUSPEND
                                     23 	.globl _UIF_HST_SOF
                                     24 	.globl _UIF_FIFO_OV
                                     25 	.globl _U_SIE_FREE
                                     26 	.globl _U_TOG_OK
                                     27 	.globl _U_IS_NAK
                                     28 	.globl _ADC_CHAN0
                                     29 	.globl _ADC_CHAN1
                                     30 	.globl _CMP_CHAN
                                     31 	.globl _ADC_START
                                     32 	.globl _ADC_IF
                                     33 	.globl _CMP_IF
                                     34 	.globl _CMPO
                                     35 	.globl _U1RI
                                     36 	.globl _U1TI
                                     37 	.globl _U1RB8
                                     38 	.globl _U1TB8
                                     39 	.globl _U1REN
                                     40 	.globl _U1SMOD
                                     41 	.globl _U1SM0
                                     42 	.globl _S0_R_FIFO
                                     43 	.globl _S0_T_FIFO
                                     44 	.globl _S0_FREE
                                     45 	.globl _S0_IF_BYTE
                                     46 	.globl _S0_IF_FIRST
                                     47 	.globl _S0_IF_OV
                                     48 	.globl _S0_FST_ACT
                                     49 	.globl _CP_RL2
                                     50 	.globl _C_T2
                                     51 	.globl _TR2
                                     52 	.globl _EXEN2
                                     53 	.globl _TCLK
                                     54 	.globl _RCLK
                                     55 	.globl _EXF2
                                     56 	.globl _CAP1F
                                     57 	.globl _TF2
                                     58 	.globl _RI
                                     59 	.globl _TI
                                     60 	.globl _RB8
                                     61 	.globl _TB8
                                     62 	.globl _REN
                                     63 	.globl _SM2
                                     64 	.globl _SM1
                                     65 	.globl _SM0
                                     66 	.globl _IT0
                                     67 	.globl _IE0
                                     68 	.globl _IT1
                                     69 	.globl _IE1
                                     70 	.globl _TR0
                                     71 	.globl _TF0
                                     72 	.globl _TR1
                                     73 	.globl _TF1
                                     74 	.globl _RXD
                                     75 	.globl _PWM1_
                                     76 	.globl _TXD
                                     77 	.globl _PWM2_
                                     78 	.globl _AIN3
                                     79 	.globl _VBUS1
                                     80 	.globl _INT0
                                     81 	.globl _TXD1_
                                     82 	.globl _INT1
                                     83 	.globl _T0
                                     84 	.globl _RXD1_
                                     85 	.globl _PWM2
                                     86 	.globl _T1
                                     87 	.globl _UDP
                                     88 	.globl _UDM
                                     89 	.globl _TIN0
                                     90 	.globl _CAP1
                                     91 	.globl _T2
                                     92 	.globl _AIN0
                                     93 	.globl _VBUS2
                                     94 	.globl _TIN1
                                     95 	.globl _CAP2
                                     96 	.globl _T2EX
                                     97 	.globl _RXD_
                                     98 	.globl _TXD_
                                     99 	.globl _AIN1
                                    100 	.globl _UCC1
                                    101 	.globl _TIN2
                                    102 	.globl _SCS
                                    103 	.globl _CAP1_
                                    104 	.globl _T2_
                                    105 	.globl _AIN2
                                    106 	.globl _UCC2
                                    107 	.globl _TIN3
                                    108 	.globl _PWM1
                                    109 	.globl _MOSI
                                    110 	.globl _TIN4
                                    111 	.globl _RXD1
                                    112 	.globl _MISO
                                    113 	.globl _TIN5
                                    114 	.globl _TXD1
                                    115 	.globl _SCK
                                    116 	.globl _IE_SPI0
                                    117 	.globl _IE_TKEY
                                    118 	.globl _IE_USB
                                    119 	.globl _IE_ADC
                                    120 	.globl _IE_UART1
                                    121 	.globl _IE_PWMX
                                    122 	.globl _IE_GPIO
                                    123 	.globl _IE_WDOG
                                    124 	.globl _PX0
                                    125 	.globl _PT0
                                    126 	.globl _PX1
                                    127 	.globl _PT1
                                    128 	.globl _PS
                                    129 	.globl _PT2
                                    130 	.globl _PL_FLAG
                                    131 	.globl _PH_FLAG
                                    132 	.globl _EX0
                                    133 	.globl _ET0
                                    134 	.globl _EX1
                                    135 	.globl _ET1
                                    136 	.globl _ES
                                    137 	.globl _ET2
                                    138 	.globl _E_DIS
                                    139 	.globl _EA
                                    140 	.globl _P
                                    141 	.globl _F1
                                    142 	.globl _OV
                                    143 	.globl _RS0
                                    144 	.globl _RS1
                                    145 	.globl _F0
                                    146 	.globl _AC
                                    147 	.globl _CY
                                    148 	.globl _UEP1_DMA_H
                                    149 	.globl _UEP1_DMA_L
                                    150 	.globl _UEP1_DMA
                                    151 	.globl _UEP0_DMA_H
                                    152 	.globl _UEP0_DMA_L
                                    153 	.globl _UEP0_DMA
                                    154 	.globl _UEP2_3_MOD
                                    155 	.globl _UEP4_1_MOD
                                    156 	.globl _UEP3_DMA_H
                                    157 	.globl _UEP3_DMA_L
                                    158 	.globl _UEP3_DMA
                                    159 	.globl _UEP2_DMA_H
                                    160 	.globl _UEP2_DMA_L
                                    161 	.globl _UEP2_DMA
                                    162 	.globl _USB_DEV_AD
                                    163 	.globl _USB_CTRL
                                    164 	.globl _USB_INT_EN
                                    165 	.globl _UEP4_T_LEN
                                    166 	.globl _UEP4_CTRL
                                    167 	.globl _UEP0_T_LEN
                                    168 	.globl _UEP0_CTRL
                                    169 	.globl _USB_RX_LEN
                                    170 	.globl _USB_MIS_ST
                                    171 	.globl _USB_INT_ST
                                    172 	.globl _USB_INT_FG
                                    173 	.globl _UEP3_T_LEN
                                    174 	.globl _UEP3_CTRL
                                    175 	.globl _UEP2_T_LEN
                                    176 	.globl _UEP2_CTRL
                                    177 	.globl _UEP1_T_LEN
                                    178 	.globl _UEP1_CTRL
                                    179 	.globl _UDEV_CTRL
                                    180 	.globl _USB_C_CTRL
                                    181 	.globl _TKEY_DATH
                                    182 	.globl _TKEY_DATL
                                    183 	.globl _TKEY_DAT
                                    184 	.globl _TKEY_CTRL
                                    185 	.globl _ADC_DATA
                                    186 	.globl _ADC_CFG
                                    187 	.globl _ADC_CTRL
                                    188 	.globl _SBAUD1
                                    189 	.globl _SBUF1
                                    190 	.globl _SCON1
                                    191 	.globl _SPI0_SETUP
                                    192 	.globl _SPI0_CK_SE
                                    193 	.globl _SPI0_CTRL
                                    194 	.globl _SPI0_DATA
                                    195 	.globl _SPI0_STAT
                                    196 	.globl _PWM_CK_SE
                                    197 	.globl _PWM_CTRL
                                    198 	.globl _PWM_DATA1
                                    199 	.globl _PWM_DATA2
                                    200 	.globl _T2CAP1H
                                    201 	.globl _T2CAP1L
                                    202 	.globl _T2CAP1
                                    203 	.globl _TH2
                                    204 	.globl _TL2
                                    205 	.globl _T2COUNT
                                    206 	.globl _RCAP2H
                                    207 	.globl _RCAP2L
                                    208 	.globl _RCAP2
                                    209 	.globl _T2MOD
                                    210 	.globl _T2CON
                                    211 	.globl _SBUF
                                    212 	.globl _SCON
                                    213 	.globl _TH1
                                    214 	.globl _TH0
                                    215 	.globl _TL1
                                    216 	.globl _TL0
                                    217 	.globl _TMOD
                                    218 	.globl _TCON
                                    219 	.globl _XBUS_AUX
                                    220 	.globl _PIN_FUNC
                                    221 	.globl _P3_DIR_PU
                                    222 	.globl _P3_MOD_OC
                                    223 	.globl _P3
                                    224 	.globl _P2
                                    225 	.globl _P1_DIR_PU
                                    226 	.globl _P1_MOD_OC
                                    227 	.globl _P1
                                    228 	.globl _ROM_CTRL
                                    229 	.globl _ROM_DATA_H
                                    230 	.globl _ROM_DATA_L
                                    231 	.globl _ROM_DATA
                                    232 	.globl _ROM_ADDR_H
                                    233 	.globl _ROM_ADDR_L
                                    234 	.globl _ROM_ADDR
                                    235 	.globl _GPIO_IE
                                    236 	.globl _IP_EX
                                    237 	.globl _IE_EX
                                    238 	.globl _IP
                                    239 	.globl _IE
                                    240 	.globl _WDOG_COUNT
                                    241 	.globl _RESET_KEEP
                                    242 	.globl _WAKE_CTRL
                                    243 	.globl _CLOCK_CFG
                                    244 	.globl _PCON
                                    245 	.globl _GLOBAL_CFG
                                    246 	.globl _SAFE_MOD
                                    247 	.globl _DPH
                                    248 	.globl _DPL
                                    249 	.globl _SP
                                    250 	.globl _B
                                    251 	.globl _ACC
                                    252 	.globl _PSW
                                    253 	.globl _EP2_buffer
                                    254 	.globl _EP1_buffer
                                    255 	.globl _EP0_buffer
                                    256 	.globl _pDescr
                                    257 	.globl _UsbConfig
                                    258 	.globl _SetupReq
                                    259 	.globl _SetupLen
                                    260 	.globl _USB_interrupt
                                    261 	.globl _USB_init
                                    262 ;--------------------------------------------------------
                                    263 ; special function registers
                                    264 ;--------------------------------------------------------
                                    265 	.area RSEG    (ABS,DATA)
      000000                        266 	.org 0x0000
                           0000D0   267 _PSW	=	0x00d0
                           0000E0   268 _ACC	=	0x00e0
                           0000F0   269 _B	=	0x00f0
                           000081   270 _SP	=	0x0081
                           000082   271 _DPL	=	0x0082
                           000083   272 _DPH	=	0x0083
                           0000A1   273 _SAFE_MOD	=	0x00a1
                           0000B1   274 _GLOBAL_CFG	=	0x00b1
                           000087   275 _PCON	=	0x0087
                           0000B9   276 _CLOCK_CFG	=	0x00b9
                           0000A9   277 _WAKE_CTRL	=	0x00a9
                           0000FE   278 _RESET_KEEP	=	0x00fe
                           0000FF   279 _WDOG_COUNT	=	0x00ff
                           0000A8   280 _IE	=	0x00a8
                           0000B8   281 _IP	=	0x00b8
                           0000E8   282 _IE_EX	=	0x00e8
                           0000E9   283 _IP_EX	=	0x00e9
                           0000C7   284 _GPIO_IE	=	0x00c7
                           008584   285 _ROM_ADDR	=	0x8584
                           000084   286 _ROM_ADDR_L	=	0x0084
                           000085   287 _ROM_ADDR_H	=	0x0085
                           008F8E   288 _ROM_DATA	=	0x8f8e
                           00008E   289 _ROM_DATA_L	=	0x008e
                           00008F   290 _ROM_DATA_H	=	0x008f
                           000086   291 _ROM_CTRL	=	0x0086
                           000090   292 _P1	=	0x0090
                           000092   293 _P1_MOD_OC	=	0x0092
                           000093   294 _P1_DIR_PU	=	0x0093
                           0000A0   295 _P2	=	0x00a0
                           0000B0   296 _P3	=	0x00b0
                           000096   297 _P3_MOD_OC	=	0x0096
                           000097   298 _P3_DIR_PU	=	0x0097
                           0000C6   299 _PIN_FUNC	=	0x00c6
                           0000A2   300 _XBUS_AUX	=	0x00a2
                           000088   301 _TCON	=	0x0088
                           000089   302 _TMOD	=	0x0089
                           00008A   303 _TL0	=	0x008a
                           00008B   304 _TL1	=	0x008b
                           00008C   305 _TH0	=	0x008c
                           00008D   306 _TH1	=	0x008d
                           000098   307 _SCON	=	0x0098
                           000099   308 _SBUF	=	0x0099
                           0000C8   309 _T2CON	=	0x00c8
                           0000C9   310 _T2MOD	=	0x00c9
                           00CBCA   311 _RCAP2	=	0xcbca
                           0000CA   312 _RCAP2L	=	0x00ca
                           0000CB   313 _RCAP2H	=	0x00cb
                           00CDCC   314 _T2COUNT	=	0xcdcc
                           0000CC   315 _TL2	=	0x00cc
                           0000CD   316 _TH2	=	0x00cd
                           00CFCE   317 _T2CAP1	=	0xcfce
                           0000CE   318 _T2CAP1L	=	0x00ce
                           0000CF   319 _T2CAP1H	=	0x00cf
                           00009B   320 _PWM_DATA2	=	0x009b
                           00009C   321 _PWM_DATA1	=	0x009c
                           00009D   322 _PWM_CTRL	=	0x009d
                           00009E   323 _PWM_CK_SE	=	0x009e
                           0000F8   324 _SPI0_STAT	=	0x00f8
                           0000F9   325 _SPI0_DATA	=	0x00f9
                           0000FA   326 _SPI0_CTRL	=	0x00fa
                           0000FB   327 _SPI0_CK_SE	=	0x00fb
                           0000FC   328 _SPI0_SETUP	=	0x00fc
                           0000C0   329 _SCON1	=	0x00c0
                           0000C1   330 _SBUF1	=	0x00c1
                           0000C2   331 _SBAUD1	=	0x00c2
                           000080   332 _ADC_CTRL	=	0x0080
                           00009A   333 _ADC_CFG	=	0x009a
                           00009F   334 _ADC_DATA	=	0x009f
                           0000C3   335 _TKEY_CTRL	=	0x00c3
                           00C5C4   336 _TKEY_DAT	=	0xc5c4
                           0000C4   337 _TKEY_DATL	=	0x00c4
                           0000C5   338 _TKEY_DATH	=	0x00c5
                           000091   339 _USB_C_CTRL	=	0x0091
                           0000D1   340 _UDEV_CTRL	=	0x00d1
                           0000D2   341 _UEP1_CTRL	=	0x00d2
                           0000D3   342 _UEP1_T_LEN	=	0x00d3
                           0000D4   343 _UEP2_CTRL	=	0x00d4
                           0000D5   344 _UEP2_T_LEN	=	0x00d5
                           0000D6   345 _UEP3_CTRL	=	0x00d6
                           0000D7   346 _UEP3_T_LEN	=	0x00d7
                           0000D8   347 _USB_INT_FG	=	0x00d8
                           0000D9   348 _USB_INT_ST	=	0x00d9
                           0000DA   349 _USB_MIS_ST	=	0x00da
                           0000DB   350 _USB_RX_LEN	=	0x00db
                           0000DC   351 _UEP0_CTRL	=	0x00dc
                           0000DD   352 _UEP0_T_LEN	=	0x00dd
                           0000DE   353 _UEP4_CTRL	=	0x00de
                           0000DF   354 _UEP4_T_LEN	=	0x00df
                           0000E1   355 _USB_INT_EN	=	0x00e1
                           0000E2   356 _USB_CTRL	=	0x00e2
                           0000E3   357 _USB_DEV_AD	=	0x00e3
                           00E5E4   358 _UEP2_DMA	=	0xe5e4
                           0000E4   359 _UEP2_DMA_L	=	0x00e4
                           0000E5   360 _UEP2_DMA_H	=	0x00e5
                           00E7E6   361 _UEP3_DMA	=	0xe7e6
                           0000E6   362 _UEP3_DMA_L	=	0x00e6
                           0000E7   363 _UEP3_DMA_H	=	0x00e7
                           0000EA   364 _UEP4_1_MOD	=	0x00ea
                           0000EB   365 _UEP2_3_MOD	=	0x00eb
                           00EDEC   366 _UEP0_DMA	=	0xedec
                           0000EC   367 _UEP0_DMA_L	=	0x00ec
                           0000ED   368 _UEP0_DMA_H	=	0x00ed
                           00EFEE   369 _UEP1_DMA	=	0xefee
                           0000EE   370 _UEP1_DMA_L	=	0x00ee
                           0000EF   371 _UEP1_DMA_H	=	0x00ef
                                    372 ;--------------------------------------------------------
                                    373 ; special function bits
                                    374 ;--------------------------------------------------------
                                    375 	.area RSEG    (ABS,DATA)
      000000                        376 	.org 0x0000
                           0000D7   377 _CY	=	0x00d7
                           0000D6   378 _AC	=	0x00d6
                           0000D5   379 _F0	=	0x00d5
                           0000D4   380 _RS1	=	0x00d4
                           0000D3   381 _RS0	=	0x00d3
                           0000D2   382 _OV	=	0x00d2
                           0000D1   383 _F1	=	0x00d1
                           0000D0   384 _P	=	0x00d0
                           0000AF   385 _EA	=	0x00af
                           0000AE   386 _E_DIS	=	0x00ae
                           0000AD   387 _ET2	=	0x00ad
                           0000AC   388 _ES	=	0x00ac
                           0000AB   389 _ET1	=	0x00ab
                           0000AA   390 _EX1	=	0x00aa
                           0000A9   391 _ET0	=	0x00a9
                           0000A8   392 _EX0	=	0x00a8
                           0000BF   393 _PH_FLAG	=	0x00bf
                           0000BE   394 _PL_FLAG	=	0x00be
                           0000BD   395 _PT2	=	0x00bd
                           0000BC   396 _PS	=	0x00bc
                           0000BB   397 _PT1	=	0x00bb
                           0000BA   398 _PX1	=	0x00ba
                           0000B9   399 _PT0	=	0x00b9
                           0000B8   400 _PX0	=	0x00b8
                           0000EF   401 _IE_WDOG	=	0x00ef
                           0000EE   402 _IE_GPIO	=	0x00ee
                           0000ED   403 _IE_PWMX	=	0x00ed
                           0000EC   404 _IE_UART1	=	0x00ec
                           0000EB   405 _IE_ADC	=	0x00eb
                           0000EA   406 _IE_USB	=	0x00ea
                           0000E9   407 _IE_TKEY	=	0x00e9
                           0000E8   408 _IE_SPI0	=	0x00e8
                           000097   409 _SCK	=	0x0097
                           000097   410 _TXD1	=	0x0097
                           000097   411 _TIN5	=	0x0097
                           000096   412 _MISO	=	0x0096
                           000096   413 _RXD1	=	0x0096
                           000096   414 _TIN4	=	0x0096
                           000095   415 _MOSI	=	0x0095
                           000095   416 _PWM1	=	0x0095
                           000095   417 _TIN3	=	0x0095
                           000095   418 _UCC2	=	0x0095
                           000095   419 _AIN2	=	0x0095
                           000094   420 _T2_	=	0x0094
                           000094   421 _CAP1_	=	0x0094
                           000094   422 _SCS	=	0x0094
                           000094   423 _TIN2	=	0x0094
                           000094   424 _UCC1	=	0x0094
                           000094   425 _AIN1	=	0x0094
                           000093   426 _TXD_	=	0x0093
                           000092   427 _RXD_	=	0x0092
                           000091   428 _T2EX	=	0x0091
                           000091   429 _CAP2	=	0x0091
                           000091   430 _TIN1	=	0x0091
                           000091   431 _VBUS2	=	0x0091
                           000091   432 _AIN0	=	0x0091
                           000090   433 _T2	=	0x0090
                           000090   434 _CAP1	=	0x0090
                           000090   435 _TIN0	=	0x0090
                           0000B7   436 _UDM	=	0x00b7
                           0000B6   437 _UDP	=	0x00b6
                           0000B5   438 _T1	=	0x00b5
                           0000B4   439 _PWM2	=	0x00b4
                           0000B4   440 _RXD1_	=	0x00b4
                           0000B4   441 _T0	=	0x00b4
                           0000B3   442 _INT1	=	0x00b3
                           0000B2   443 _TXD1_	=	0x00b2
                           0000B2   444 _INT0	=	0x00b2
                           0000B2   445 _VBUS1	=	0x00b2
                           0000B2   446 _AIN3	=	0x00b2
                           0000B1   447 _PWM2_	=	0x00b1
                           0000B1   448 _TXD	=	0x00b1
                           0000B0   449 _PWM1_	=	0x00b0
                           0000B0   450 _RXD	=	0x00b0
                           00008F   451 _TF1	=	0x008f
                           00008E   452 _TR1	=	0x008e
                           00008D   453 _TF0	=	0x008d
                           00008C   454 _TR0	=	0x008c
                           00008B   455 _IE1	=	0x008b
                           00008A   456 _IT1	=	0x008a
                           000089   457 _IE0	=	0x0089
                           000088   458 _IT0	=	0x0088
                           00009F   459 _SM0	=	0x009f
                           00009E   460 _SM1	=	0x009e
                           00009D   461 _SM2	=	0x009d
                           00009C   462 _REN	=	0x009c
                           00009B   463 _TB8	=	0x009b
                           00009A   464 _RB8	=	0x009a
                           000099   465 _TI	=	0x0099
                           000098   466 _RI	=	0x0098
                           0000CF   467 _TF2	=	0x00cf
                           0000CF   468 _CAP1F	=	0x00cf
                           0000CE   469 _EXF2	=	0x00ce
                           0000CD   470 _RCLK	=	0x00cd
                           0000CC   471 _TCLK	=	0x00cc
                           0000CB   472 _EXEN2	=	0x00cb
                           0000CA   473 _TR2	=	0x00ca
                           0000C9   474 _C_T2	=	0x00c9
                           0000C8   475 _CP_RL2	=	0x00c8
                           0000FF   476 _S0_FST_ACT	=	0x00ff
                           0000FE   477 _S0_IF_OV	=	0x00fe
                           0000FD   478 _S0_IF_FIRST	=	0x00fd
                           0000FC   479 _S0_IF_BYTE	=	0x00fc
                           0000FB   480 _S0_FREE	=	0x00fb
                           0000FA   481 _S0_T_FIFO	=	0x00fa
                           0000F8   482 _S0_R_FIFO	=	0x00f8
                           0000C7   483 _U1SM0	=	0x00c7
                           0000C5   484 _U1SMOD	=	0x00c5
                           0000C4   485 _U1REN	=	0x00c4
                           0000C3   486 _U1TB8	=	0x00c3
                           0000C2   487 _U1RB8	=	0x00c2
                           0000C1   488 _U1TI	=	0x00c1
                           0000C0   489 _U1RI	=	0x00c0
                           000087   490 _CMPO	=	0x0087
                           000086   491 _CMP_IF	=	0x0086
                           000085   492 _ADC_IF	=	0x0085
                           000084   493 _ADC_START	=	0x0084
                           000083   494 _CMP_CHAN	=	0x0083
                           000081   495 _ADC_CHAN1	=	0x0081
                           000080   496 _ADC_CHAN0	=	0x0080
                           0000DF   497 _U_IS_NAK	=	0x00df
                           0000DE   498 _U_TOG_OK	=	0x00de
                           0000DD   499 _U_SIE_FREE	=	0x00dd
                           0000DC   500 _UIF_FIFO_OV	=	0x00dc
                           0000DB   501 _UIF_HST_SOF	=	0x00db
                           0000DA   502 _UIF_SUSPEND	=	0x00da
                           0000D9   503 _UIF_TRANSFER	=	0x00d9
                           0000D8   504 _UIF_DETECT	=	0x00d8
                           0000D8   505 _UIF_BUS_RST	=	0x00d8
                                    506 ;--------------------------------------------------------
                                    507 ; overlayable register banks
                                    508 ;--------------------------------------------------------
                                    509 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        510 	.ds 8
                                    511 ;--------------------------------------------------------
                                    512 ; internal ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area DSEG    (DATA)
      00000D                        515 _SetupLen::
      00000D                        516 	.ds 2
      00000F                        517 _SetupReq::
      00000F                        518 	.ds 1
      000010                        519 _UsbConfig::
      000010                        520 	.ds 1
      000011                        521 _pDescr::
      000011                        522 	.ds 2
                                    523 ;--------------------------------------------------------
                                    524 ; overlayable items in internal ram
                                    525 ;--------------------------------------------------------
                                    526 	.area	OSEG    (OVR,DATA)
                                    527 ;--------------------------------------------------------
                                    528 ; indirectly addressable internal ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area ISEG    (DATA)
                                    531 ;--------------------------------------------------------
                                    532 ; absolute internal ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area IABS    (ABS,DATA)
                                    535 	.area IABS    (ABS,DATA)
                                    536 ;--------------------------------------------------------
                                    537 ; bit data
                                    538 ;--------------------------------------------------------
                                    539 	.area BSEG    (BIT)
      000000                        540 _USB_EP0_SETUP_sloc0_1_0:
      000000                        541 	.ds 1
      000001                        542 _USB_EP0_IN_sloc0_1_0:
      000001                        543 	.ds 1
                                    544 ;--------------------------------------------------------
                                    545 ; paged external ram data
                                    546 ;--------------------------------------------------------
                                    547 	.area PSEG    (PAG,XDATA)
                                    548 ;--------------------------------------------------------
                                    549 ; external ram data
                                    550 ;--------------------------------------------------------
                                    551 	.area XSEG    (XDATA)
                           000000   552 _EP0_buffer	=	0x0000
                           00000A   553 _EP1_buffer	=	0x000a
                           000014   554 _EP2_buffer	=	0x0014
                                    555 ;--------------------------------------------------------
                                    556 ; absolute external ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area XABS    (ABS,XDATA)
                                    559 ;--------------------------------------------------------
                                    560 ; external initialized ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area HOME    (CODE)
                                    563 	.area GSINIT0 (CODE)
                                    564 	.area GSINIT1 (CODE)
                                    565 	.area GSINIT2 (CODE)
                                    566 	.area GSINIT3 (CODE)
                                    567 	.area GSINIT4 (CODE)
                                    568 	.area GSINIT5 (CODE)
                                    569 	.area GSINIT  (CODE)
                                    570 	.area GSFINAL (CODE)
                                    571 	.area CSEG    (CODE)
                                    572 ;--------------------------------------------------------
                                    573 ; global & static initialisations
                                    574 ;--------------------------------------------------------
                                    575 	.area HOME    (CODE)
                                    576 	.area GSINIT  (CODE)
                                    577 	.area GSFINAL (CODE)
                                    578 	.area GSINIT  (CODE)
                                    579 ;--------------------------------------------------------
                                    580 ; Home
                                    581 ;--------------------------------------------------------
                                    582 	.area HOME    (CODE)
                                    583 	.area HOME    (CODE)
                                    584 ;--------------------------------------------------------
                                    585 ; code
                                    586 ;--------------------------------------------------------
                                    587 	.area CSEG    (CODE)
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'USB_EP0_copyDescr'
                                    590 ;------------------------------------------------------------
                                    591 ;len                       Allocated to registers 
                                    592 ;------------------------------------------------------------
                                    593 ;	src/usb_handler.c:18: void USB_EP0_copyDescr(uint8_t len) {
                                    594 ;	-----------------------------------------
                                    595 ;	 function USB_EP0_copyDescr
                                    596 ;	-----------------------------------------
      00048B                        597 _USB_EP0_copyDescr:
                           000007   598 	ar7 = 0x07
                           000006   599 	ar6 = 0x06
                           000005   600 	ar5 = 0x05
                           000004   601 	ar4 = 0x04
                           000003   602 	ar3 = 0x03
                           000002   603 	ar2 = 0x02
                           000001   604 	ar1 = 0x01
                           000000   605 	ar0 = 0x00
                                    606 ;	src/usb_handler.c:35: __endasm;
      00048B C0 07            [24]  607 	push	ar7 ; r7 -> stack
      00048D AF 82            [24]  608 	mov	r7, dpl ; r7 <- len
      00048F 05 A2            [12]  609 	inc	_XBUS_AUX ; select dptr1
      000491 90 00 00         [24]  610 	mov	dptr, #_EP0_buffer ; dptr1 <- EP0_buffer
      000494 15 A2            [12]  611 	dec	_XBUS_AUX ; select dptr0
      000496 85 11 82         [24]  612 	mov	dpl, _pDescr ; dptr0 <- *pDescr
      000499 85 12 83         [24]  613 	mov	dph, (_pDescr + 1)
      00049C                        614 	    01$:
      00049C E4               [12]  615 	clr	a ; acc <- #0
      00049D 93               [24]  616 	movc	a, @a+dptr ; acc <- *pDescr[dptr0]
      00049E A3               [24]  617 	inc	dptr ; inc dptr0
      00049F A5                     618 	.DB	0xA5 ; acc -> EP0_buffer[dptr1] & inc dptr1
      0004A0 DF FA            [24]  619 	djnz	r7, 01$ ; repeat len times
      0004A2 D0 07            [24]  620 	pop	ar7 ; r7 <- stack
                                    621 ;	src/usb_handler.c:36: }
      0004A4 22               [24]  622 	ret
                                    623 ;------------------------------------------------------------
                                    624 ;Allocation info for local variables in function 'USB_EP0_SETUP'
                                    625 ;------------------------------------------------------------
                                    626 ;len                       Allocated to registers r7 
                                    627 ;------------------------------------------------------------
                                    628 ;	src/usb_handler.c:42: void USB_EP0_SETUP(void) {
                                    629 ;	-----------------------------------------
                                    630 ;	 function USB_EP0_SETUP
                                    631 ;	-----------------------------------------
      0004A5                        632 _USB_EP0_SETUP:
                                    633 ;	src/usb_handler.c:43: uint8_t len = USB_RX_LEN;
      0004A5 AF DB            [24]  634 	mov	r7,_USB_RX_LEN
                                    635 ;	src/usb_handler.c:44: if(len == (sizeof(USB_SETUP_REQ))) {
      0004A7 BF 08 02         [24]  636 	cjne	r7,#0x08,00332$
      0004AA 80 03            [24]  637 	sjmp	00333$
      0004AC                        638 00332$:
      0004AC 02 07 63         [24]  639 	ljmp	00175$
      0004AF                        640 00333$:
                                    641 ;	src/usb_handler.c:45: SetupLen = ((uint16_t)USB_setupBuf->wLengthH<<8) | (USB_setupBuf->wLengthL);
      0004AF 90 00 07         [24]  642 	mov	dptr,#(_EP0_buffer + 0x0007)
      0004B2 E0               [24]  643 	movx	a,@dptr
      0004B3 FE               [12]  644 	mov	r6,a
      0004B4 7F 00            [12]  645 	mov	r7,#0x00
      0004B6 90 00 06         [24]  646 	mov	dptr,#(_EP0_buffer + 0x0006)
      0004B9 E0               [24]  647 	movx	a,@dptr
      0004BA FD               [12]  648 	mov	r5,a
      0004BB 7C 00            [12]  649 	mov	r4,#0x00
      0004BD 4F               [12]  650 	orl	a,r7
      0004BE F5 0D            [12]  651 	mov	_SetupLen,a
      0004C0 EC               [12]  652 	mov	a,r4
      0004C1 4E               [12]  653 	orl	a,r6
      0004C2 F5 0E            [12]  654 	mov	(_SetupLen + 1),a
                                    655 ;	src/usb_handler.c:46: len = 0;                                      // default is success and upload 0 length
      0004C4 7F 00            [12]  656 	mov	r7,#0x00
                                    657 ;	src/usb_handler.c:47: SetupReq = USB_setupBuf->bRequest;
      0004C6 90 00 01         [24]  658 	mov	dptr,#(_EP0_buffer + 0x0001)
      0004C9 E0               [24]  659 	movx	a,@dptr
      0004CA F5 0F            [12]  660 	mov	_SetupReq,a
                                    661 ;	src/usb_handler.c:49: if( (USB_setupBuf->bRequestType & USB_REQ_TYP_MASK) != USB_REQ_TYP_STANDARD ) {
      0004CC 90 00 00         [24]  662 	mov	dptr,#_EP0_buffer
      0004CF E0               [24]  663 	movx	a,@dptr
      0004D0 FE               [12]  664 	mov	r6,a
      0004D1 54 60            [12]  665 	anl	a,#0x60
      0004D3 60 05            [24]  666 	jz	00172$
                                    667 ;	src/usb_handler.c:53: len = 0xFF;                                 // command not supported
      0004D5 7F FF            [12]  668 	mov	r7,#0xff
      0004D7 02 07 65         [24]  669 	ljmp	00176$
      0004DA                        670 00172$:
                                    671 ;	src/usb_handler.c:58: switch(SetupReq) {                          // request ccfType
      0004DA E5 0F            [12]  672 	mov	a,_SetupReq
      0004DC 24 F4            [12]  673 	add	a,#0xff - 0x0b
      0004DE 50 03            [24]  674 	jnc	00335$
      0004E0 02 07 5F         [24]  675 	ljmp	00169$
      0004E3                        676 00335$:
      0004E3 E5 0F            [12]  677 	mov	a,_SetupReq
      0004E5 24 0B            [12]  678 	add	a,#(00336$-3-.)
      0004E7 83               [24]  679 	movc	a,@a+pc
      0004E8 F5 82            [12]  680 	mov	dpl,a
      0004EA E5 0F            [12]  681 	mov	a,_SetupReq
      0004EC 24 10            [12]  682 	add	a,#(00337$-3-.)
      0004EE 83               [24]  683 	movc	a,@a+pc
      0004EF F5 83            [12]  684 	mov	dph,a
      0004F1 E4               [12]  685 	clr	a
      0004F2 73               [24]  686 	jmp	@a+dptr
      0004F3                        687 00336$:
      0004F3 41                     688 	.db	00165$
      0004F4 2F                     689 	.db	00129$
      0004F5 5F                     690 	.db	00169$
      0004F6 A0                     691 	.db	00146$
      0004F7 5F                     692 	.db	00169$
      0004F8 FE                     693 	.db	00122$
      0004F9 0B                     694 	.db	00101$
      0004FA 5F                     695 	.db	00169$
      0004FB 0B                     696 	.db	00123$
      0004FC 26                     697 	.db	00126$
      0004FD 65                     698 	.db	00176$
      0004FE 65                     699 	.db	00176$
      0004FF                        700 00337$:
      0004FF 07                     701 	.db	00165$>>8
      000500 06                     702 	.db	00129$>>8
      000501 07                     703 	.db	00169$>>8
      000502 06                     704 	.db	00146$>>8
      000503 07                     705 	.db	00169$>>8
      000504 05                     706 	.db	00122$>>8
      000505 05                     707 	.db	00101$>>8
      000506 07                     708 	.db	00169$>>8
      000507 06                     709 	.db	00123$>>8
      000508 06                     710 	.db	00126$>>8
      000509 07                     711 	.db	00176$>>8
      00050A 07                     712 	.db	00176$>>8
                                    713 ;	src/usb_handler.c:59: case USB_GET_DESCRIPTOR:
      00050B                        714 00101$:
                                    715 ;	src/usb_handler.c:60: switch(USB_setupBuf->wValueH) {
      00050B 90 00 03         [24]  716 	mov	dptr,#(_EP0_buffer + 0x0003)
      00050E E0               [24]  717 	movx	a,@dptr
      00050F FE               [12]  718 	mov	r6,a
      000510 BE 01 02         [24]  719 	cjne	r6,#0x01,00338$
      000513 80 12            [24]  720 	sjmp	00102$
      000515                        721 00338$:
      000515 BE 02 02         [24]  722 	cjne	r6,#0x02,00339$
      000518 80 17            [24]  723 	sjmp	00103$
      00051A                        724 00339$:
      00051A BE 03 02         [24]  725 	cjne	r6,#0x03,00340$
      00051D 80 1C            [24]  726 	sjmp	00104$
      00051F                        727 00340$:
      00051F BE 22 02         [24]  728 	cjne	r6,#0x22,00341$
      000522 80 69            [24]  729 	sjmp	00112$
      000524                        730 00341$:
      000524 02 05 A5         [24]  731 	ljmp	00116$
                                    732 ;	src/usb_handler.c:62: case USB_DESCR_TYP_DEVICE:            // Device Descriptor
      000527                        733 00102$:
                                    734 ;	src/usb_handler.c:63: pDescr = (uint8_t*)&DevDescr;       // put descriptor into out buffer
      000527 75 11 A2         [24]  735 	mov	_pDescr,#_DevDescr
      00052A 75 12 09         [24]  736 	mov	(_pDescr + 1),#(_DevDescr >> 8)
                                    737 ;	src/usb_handler.c:64: len = sizeof(DevDescr);             // descriptor length
      00052D 7F 12            [12]  738 	mov	r7,#0x12
                                    739 ;	src/usb_handler.c:65: break;
                                    740 ;	src/usb_handler.c:67: case USB_DESCR_TYP_CONFIG:            // Configuration Descriptor
      00052F 80 76            [24]  741 	sjmp	00117$
      000531                        742 00103$:
                                    743 ;	src/usb_handler.c:68: pDescr = (uint8_t*)&CfgDescr;       // put descriptor into out buffer
      000531 75 11 B4         [24]  744 	mov	_pDescr,#_CfgDescr
      000534 75 12 09         [24]  745 	mov	(_pDescr + 1),#(_CfgDescr >> 8)
                                    746 ;	src/usb_handler.c:69: len = sizeof(CfgDescr);             // descriptor length
      000537 7F 29            [12]  747 	mov	r7,#0x29
                                    748 ;	src/usb_handler.c:70: break;
                                    749 ;	src/usb_handler.c:72: case USB_DESCR_TYP_STRING:
      000539 80 6C            [24]  750 	sjmp	00117$
      00053B                        751 00104$:
                                    752 ;	src/usb_handler.c:73: switch(USB_setupBuf->wValueL) {      // String Descriptor Index
      00053B 90 00 02         [24]  753 	mov	dptr,#(_EP0_buffer + 0x0002)
      00053E E0               [24]  754 	movx	a,@dptr
      00053F FE               [12]  755 	mov  r6,a
      000540 24 FB            [12]  756 	add	a,#0xff - 0x04
      000542 40 38            [24]  757 	jc	00110$
      000544 EE               [12]  758 	mov	a,r6
      000545 2E               [12]  759 	add	a,r6
                                    760 ;	src/usb_handler.c:74: case 0:   pDescr = USB_STR_DESCR_i0; break;
      000546 90 05 4A         [24]  761 	mov	dptr,#00343$
      000549 73               [24]  762 	jmp	@a+dptr
      00054A                        763 00343$:
      00054A 80 08            [24]  764 	sjmp	00105$
      00054C 80 0E            [24]  765 	sjmp	00106$
      00054E 80 14            [24]  766 	sjmp	00107$
      000550 80 1A            [24]  767 	sjmp	00108$
      000552 80 20            [24]  768 	sjmp	00109$
      000554                        769 00105$:
      000554 75 11 9D         [24]  770 	mov	_pDescr,#_LangDescr
      000557 75 12 0A         [24]  771 	mov	(_pDescr + 1),#(_LangDescr >> 8)
                                    772 ;	src/usb_handler.c:75: case 1:   pDescr = USB_STR_DESCR_i1; break;
      00055A 80 26            [24]  773 	sjmp	00111$
      00055C                        774 00106$:
      00055C 75 11 A1         [24]  775 	mov	_pDescr,#_ManufDescr
      00055F 75 12 0A         [24]  776 	mov	(_pDescr + 1),#(_ManufDescr >> 8)
                                    777 ;	src/usb_handler.c:76: case 2:   pDescr = USB_STR_DESCR_i2; break;
      000562 80 1E            [24]  778 	sjmp	00111$
      000564                        779 00107$:
      000564 75 11 BD         [24]  780 	mov	_pDescr,#_ProdDescr
      000567 75 12 0A         [24]  781 	mov	(_pDescr + 1),#(_ProdDescr >> 8)
                                    782 ;	src/usb_handler.c:77: case 3:   pDescr = USB_STR_DESCR_i3; break;
      00056A 80 16            [24]  783 	sjmp	00111$
      00056C                        784 00108$:
      00056C 75 11 D7         [24]  785 	mov	_pDescr,#_SerDescr
      00056F 75 12 0A         [24]  786 	mov	(_pDescr + 1),#(_SerDescr >> 8)
                                    787 ;	src/usb_handler.c:79: case 4:   pDescr = USB_STR_DESCR_i4; break;
      000572 80 0E            [24]  788 	sjmp	00111$
      000574                        789 00109$:
      000574 75 11 EB         [24]  790 	mov	_pDescr,#_InterfDescr
      000577 75 12 0A         [24]  791 	mov	(_pDescr + 1),#(_InterfDescr >> 8)
                                    792 ;	src/usb_handler.c:99: default:  pDescr = USB_STR_DESCR_ix; break;
      00057A 80 06            [24]  793 	sjmp	00111$
      00057C                        794 00110$:
      00057C 75 11 D7         [24]  795 	mov	_pDescr,#_SerDescr
      00057F 75 12 0A         [24]  796 	mov	(_pDescr + 1),#(_SerDescr >> 8)
                                    797 ;	src/usb_handler.c:100: }
      000582                        798 00111$:
                                    799 ;	src/usb_handler.c:101: len = pDescr[0];                    // descriptor length
      000582 85 11 82         [24]  800 	mov	dpl,_pDescr
      000585 85 12 83         [24]  801 	mov	dph,(_pDescr + 1)
      000588 E4               [12]  802 	clr	a
      000589 93               [24]  803 	movc	a,@a+dptr
      00058A FF               [12]  804 	mov	r7,a
                                    805 ;	src/usb_handler.c:102: break;
                                    806 ;	src/usb_handler.c:105: case USB_DESCR_TYP_REPORT:
      00058B 80 1A            [24]  807 	sjmp	00117$
      00058D                        808 00112$:
                                    809 ;	src/usb_handler.c:106: if(USB_setupBuf->wValueL == 0) {
      00058D 90 00 02         [24]  810 	mov	dptr,#(_EP0_buffer + 0x0002)
      000590 E0               [24]  811 	movx	a,@dptr
      000591 70 0E            [24]  812 	jnz	00114$
                                    813 ;	src/usb_handler.c:107: pDescr = USB_REPORT_DESCR;
      000593 75 11 DD         [24]  814 	mov	_pDescr,#_ReportDescr
      000596 75 12 09         [24]  815 	mov	(_pDescr + 1),#(_ReportDescr >> 8)
                                    816 ;	src/usb_handler.c:108: len = USB_REPORT_DESCR_LEN;
      000599 90 0A 9C         [24]  817 	mov	dptr,#_ReportDescrLen
      00059C E4               [12]  818 	clr	a
      00059D 93               [24]  819 	movc	a,@a+dptr
      00059E FF               [12]  820 	mov	r7,a
      00059F 80 06            [24]  821 	sjmp	00117$
      0005A1                        822 00114$:
                                    823 ;	src/usb_handler.c:110: else len = 0xff;
      0005A1 7F FF            [12]  824 	mov	r7,#0xff
                                    825 ;	src/usb_handler.c:111: break;
                                    826 ;	src/usb_handler.c:114: default:
      0005A3 80 02            [24]  827 	sjmp	00117$
      0005A5                        828 00116$:
                                    829 ;	src/usb_handler.c:115: len = 0xff;                         // unsupported descriptors or error
      0005A5 7F FF            [12]  830 	mov	r7,#0xff
                                    831 ;	src/usb_handler.c:117: }
      0005A7                        832 00117$:
                                    833 ;	src/usb_handler.c:119: if(len != 0xff) {
      0005A7 BF FF 03         [24]  834 	cjne	r7,#0xff,00345$
      0005AA 02 07 65         [24]  835 	ljmp	00176$
      0005AD                        836 00345$:
                                    837 ;	src/usb_handler.c:120: if(SetupLen > len) SetupLen = len;    // limit length
      0005AD 8F 05            [24]  838 	mov	ar5,r7
      0005AF 7E 00            [12]  839 	mov	r6,#0x00
      0005B1 C3               [12]  840 	clr	c
      0005B2 ED               [12]  841 	mov	a,r5
      0005B3 95 0D            [12]  842 	subb	a,_SetupLen
      0005B5 EE               [12]  843 	mov	a,r6
      0005B6 95 0E            [12]  844 	subb	a,(_SetupLen + 1)
      0005B8 50 04            [24]  845 	jnc	00119$
      0005BA 8D 0D            [24]  846 	mov	_SetupLen,r5
      0005BC 8E 0E            [24]  847 	mov	(_SetupLen + 1),r6
      0005BE                        848 00119$:
                                    849 ;	src/usb_handler.c:121: len = SetupLen >= EP0_SIZE ? EP0_SIZE : SetupLen;
      0005BE AD 0D            [24]  850 	mov	r5,_SetupLen
      0005C0 AE 0E            [24]  851 	mov	r6,(_SetupLen + 1)
      0005C2 C3               [12]  852 	clr	c
      0005C3 ED               [12]  853 	mov	a,r5
      0005C4 94 08            [12]  854 	subb	a,#0x08
      0005C6 EE               [12]  855 	mov	a,r6
      0005C7 94 00            [12]  856 	subb	a,#0x00
      0005C9 92 00            [24]  857 	mov	_USB_EP0_SETUP_sloc0_1_0,c
      0005CB 40 06            [24]  858 	jc	00185$
      0005CD 7D 08            [12]  859 	mov	r5,#0x08
      0005CF 7E 00            [12]  860 	mov	r6,#0x00
      0005D1 80 04            [24]  861 	sjmp	00186$
      0005D3                        862 00185$:
      0005D3 AD 0D            [24]  863 	mov	r5,_SetupLen
      0005D5 AE 0E            [24]  864 	mov	r6,(_SetupLen + 1)
      0005D7                        865 00186$:
      0005D7 8D 07            [24]  866 	mov	ar7,r5
                                    867 ;	src/usb_handler.c:122: USB_EP0_copyDescr(len);               // copy descriptor to Ep0
      0005D9 8F 82            [24]  868 	mov	dpl,r7
      0005DB 12 04 8B         [24]  869 	lcall	_USB_EP0_copyDescr
                                    870 ;	src/usb_handler.c:123: SetupLen -= len;
      0005DE 8F 05            [24]  871 	mov	ar5,r7
      0005E0 7E 00            [12]  872 	mov	r6,#0x00
      0005E2 AB 0D            [24]  873 	mov	r3,_SetupLen
      0005E4 AC 0E            [24]  874 	mov	r4,(_SetupLen + 1)
      0005E6 EB               [12]  875 	mov	a,r3
      0005E7 C3               [12]  876 	clr	c
      0005E8 9D               [12]  877 	subb	a,r5
      0005E9 FB               [12]  878 	mov	r3,a
      0005EA EC               [12]  879 	mov	a,r4
      0005EB 9E               [12]  880 	subb	a,r6
      0005EC FC               [12]  881 	mov	r4,a
      0005ED 8B 0D            [24]  882 	mov	_SetupLen,r3
      0005EF 8C 0E            [24]  883 	mov	(_SetupLen + 1),r4
                                    884 ;	src/usb_handler.c:124: pDescr += len;
      0005F1 EF               [12]  885 	mov	a,r7
      0005F2 25 11            [12]  886 	add	a,_pDescr
      0005F4 F5 11            [12]  887 	mov	_pDescr,a
      0005F6 E4               [12]  888 	clr	a
      0005F7 35 12            [12]  889 	addc	a,(_pDescr + 1)
      0005F9 F5 12            [12]  890 	mov	(_pDescr + 1),a
                                    891 ;	src/usb_handler.c:126: break;
      0005FB 02 07 65         [24]  892 	ljmp	00176$
                                    893 ;	src/usb_handler.c:128: case USB_SET_ADDRESS:
      0005FE                        894 00122$:
                                    895 ;	src/usb_handler.c:129: SetupLen = USB_setupBuf->wValueL;        // save the assigned address
      0005FE 90 00 02         [24]  896 	mov	dptr,#(_EP0_buffer + 0x0002)
      000601 E0               [24]  897 	movx	a,@dptr
      000602 FE               [12]  898 	mov	r6,a
      000603 8E 0D            [24]  899 	mov	_SetupLen,r6
      000605 75 0E 00         [24]  900 	mov	(_SetupLen + 1),#0x00
                                    901 ;	src/usb_handler.c:130: break;
      000608 02 07 65         [24]  902 	ljmp	00176$
                                    903 ;	src/usb_handler.c:132: case USB_GET_CONFIGURATION:
      00060B                        904 00123$:
                                    905 ;	src/usb_handler.c:133: EP0_buffer[0] = UsbConfig;
      00060B 90 00 00         [24]  906 	mov	dptr,#_EP0_buffer
      00060E E5 10            [12]  907 	mov	a,_UsbConfig
      000610 F0               [24]  908 	movx	@dptr,a
                                    909 ;	src/usb_handler.c:134: if (SetupLen >= 1) len = 1;
      000611 AD 0D            [24]  910 	mov	r5,_SetupLen
      000613 AE 0E            [24]  911 	mov	r6,(_SetupLen + 1)
      000615 C3               [12]  912 	clr	c
      000616 ED               [12]  913 	mov	a,r5
      000617 94 01            [12]  914 	subb	a,#0x01
      000619 EE               [12]  915 	mov	a,r6
      00061A 94 00            [12]  916 	subb	a,#0x00
      00061C 50 03            [24]  917 	jnc	00348$
      00061E 02 07 65         [24]  918 	ljmp	00176$
      000621                        919 00348$:
      000621 7F 01            [12]  920 	mov	r7,#0x01
                                    921 ;	src/usb_handler.c:135: break;
      000623 02 07 65         [24]  922 	ljmp	00176$
                                    923 ;	src/usb_handler.c:137: case USB_SET_CONFIGURATION:
      000626                        924 00126$:
                                    925 ;	src/usb_handler.c:138: UsbConfig = USB_setupBuf->wValueL;
      000626 90 00 02         [24]  926 	mov	dptr,#(_EP0_buffer + 0x0002)
      000629 E0               [24]  927 	movx	a,@dptr
      00062A F5 10            [12]  928 	mov	_UsbConfig,a
                                    929 ;	src/usb_handler.c:139: break;
      00062C 02 07 65         [24]  930 	ljmp	00176$
                                    931 ;	src/usb_handler.c:147: case USB_CLEAR_FEATURE:
      00062F                        932 00129$:
                                    933 ;	src/usb_handler.c:148: if( (USB_setupBuf->bRequestType & 0x1F) == USB_REQ_RECIP_DEVICE ) {
      00062F 90 00 00         [24]  934 	mov	dptr,#_EP0_buffer
      000632 E0               [24]  935 	movx	a,@dptr
      000633 54 1F            [12]  936 	anl	a,#0x1f
      000635 70 2F            [24]  937 	jnz	00144$
                                    938 ;	src/usb_handler.c:149: if( ( ( (uint16_t)USB_setupBuf->wValueH << 8 ) | USB_setupBuf->wValueL ) == 0x01 ) {
      000637 90 00 03         [24]  939 	mov	dptr,#(_EP0_buffer + 0x0003)
      00063A E0               [24]  940 	movx	a,@dptr
      00063B FD               [12]  941 	mov	r5,a
      00063C 7E 00            [12]  942 	mov	r6,#0x00
      00063E 90 00 02         [24]  943 	mov	dptr,#(_EP0_buffer + 0x0002)
      000641 E0               [24]  944 	movx	a,@dptr
      000642 FC               [12]  945 	mov	r4,a
      000643 7B 00            [12]  946 	mov	r3,#0x00
      000645 42 06            [12]  947 	orl	ar6,a
      000647 EB               [12]  948 	mov	a,r3
      000648 42 05            [12]  949 	orl	ar5,a
      00064A BE 01 14         [24]  950 	cjne	r6,#0x01,00134$
      00064D BD 00 11         [24]  951 	cjne	r5,#0x00,00134$
                                    952 ;	src/usb_handler.c:150: if( ((uint8_t*)&CfgDescr)[7] & 0x20) {
      000650 90 09 BB         [24]  953 	mov	dptr,#(_CfgDescr + 0x0007)
      000653 E4               [12]  954 	clr	a
      000654 93               [24]  955 	movc	a,@a+dptr
      000655 FE               [12]  956 	mov	r6,a
      000656 30 E5 03         [24]  957 	jnb	acc.5,00353$
      000659 02 07 65         [24]  958 	ljmp	00176$
      00065C                        959 00353$:
                                    960 ;	src/usb_handler.c:153: else len = 0xFF;               // failed
      00065C 7F FF            [12]  961 	mov	r7,#0xff
      00065E 02 07 65         [24]  962 	ljmp	00176$
      000661                        963 00134$:
                                    964 ;	src/usb_handler.c:155: else len = 0xFF;                 // failed
      000661 7F FF            [12]  965 	mov	r7,#0xff
      000663 02 07 65         [24]  966 	ljmp	00176$
      000666                        967 00144$:
                                    968 ;	src/usb_handler.c:157: else if( (USB_setupBuf->bRequestType & USB_REQ_RECIP_MASK) == USB_REQ_RECIP_ENDP ) {
      000666 90 00 00         [24]  969 	mov	dptr,#_EP0_buffer
      000669 E0               [24]  970 	movx	a,@dptr
      00066A FE               [12]  971 	mov	r6,a
      00066B 53 06 1F         [24]  972 	anl	ar6,#0x1f
      00066E 7D 00            [12]  973 	mov	r5,#0x00
      000670 BE 02 28         [24]  974 	cjne	r6,#0x02,00141$
      000673 BD 00 25         [24]  975 	cjne	r5,#0x00,00141$
                                    976 ;	src/usb_handler.c:158: switch(USB_setupBuf->wIndexL) {
      000676 90 00 04         [24]  977 	mov	dptr,#(_EP0_buffer + 0x0004)
      000679 E0               [24]  978 	movx	a,@dptr
      00067A FE               [12]  979 	mov	r6,a
      00067B BE 02 02         [24]  980 	cjne	r6,#0x02,00356$
      00067E 80 05            [24]  981 	sjmp	00136$
      000680                        982 00356$:
                                    983 ;	src/usb_handler.c:185: case 0x02:
      000680 BE 81 13         [24]  984 	cjne	r6,#0x81,00138$
      000683 80 06            [24]  985 	sjmp	00137$
      000685                        986 00136$:
                                    987 ;	src/usb_handler.c:186: UEP2_CTRL = UEP2_CTRL & ~ ( bUEP_R_TOG | MASK_UEP_R_RES ) | UEP_R_RES_ACK;
      000685 53 D4 73         [24]  988 	anl	_UEP2_CTRL,#0x73
                                    989 ;	src/usb_handler.c:187: break;
      000688 02 07 65         [24]  990 	ljmp	00176$
                                    991 ;	src/usb_handler.c:190: case 0x81:
      00068B                        992 00137$:
                                    993 ;	src/usb_handler.c:191: UEP1_CTRL = UEP1_CTRL & ~ ( bUEP_T_TOG | MASK_UEP_T_RES ) | UEP_T_RES_NAK;
      00068B 74 BC            [12]  994 	mov	a,#0xbc
      00068D 55 D2            [12]  995 	anl	a,_UEP1_CTRL
      00068F 44 02            [12]  996 	orl	a,#0x02
      000691 F5 D2            [12]  997 	mov	_UEP1_CTRL,a
                                    998 ;	src/usb_handler.c:192: break;
      000693 02 07 65         [24]  999 	ljmp	00176$
                                   1000 ;	src/usb_handler.c:199: default:
      000696                       1001 00138$:
                                   1002 ;	src/usb_handler.c:200: len = 0xFF;                 // unsupported endpoint
      000696 7F FF            [12] 1003 	mov	r7,#0xff
                                   1004 ;	src/usb_handler.c:202: }
      000698 02 07 65         [24] 1005 	ljmp	00176$
      00069B                       1006 00141$:
                                   1007 ;	src/usb_handler.c:204: else len = 0xFF;                  // unsupported for non-endpoint
      00069B 7F FF            [12] 1008 	mov	r7,#0xff
                                   1009 ;	src/usb_handler.c:205: break;
      00069D 02 07 65         [24] 1010 	ljmp	00176$
                                   1011 ;	src/usb_handler.c:207: case USB_SET_FEATURE:
      0006A0                       1012 00146$:
                                   1013 ;	src/usb_handler.c:208: if( (USB_setupBuf->bRequestType & 0x1F) == USB_REQ_RECIP_DEVICE ) {
      0006A0 90 00 00         [24] 1014 	mov	dptr,#_EP0_buffer
      0006A3 E0               [24] 1015 	movx	a,@dptr
      0006A4 54 1F            [12] 1016 	anl	a,#0x1f
      0006A6 70 2F            [24] 1017 	jnz	00163$
                                   1018 ;	src/usb_handler.c:209: if( ( ( (uint16_t)USB_setupBuf->wValueH << 8 ) | USB_setupBuf->wValueL ) == 0x01 ) {
      0006A8 90 00 03         [24] 1019 	mov	dptr,#(_EP0_buffer + 0x0003)
      0006AB E0               [24] 1020 	movx	a,@dptr
      0006AC FD               [12] 1021 	mov	r5,a
      0006AD 7E 00            [12] 1022 	mov	r6,#0x00
      0006AF 90 00 02         [24] 1023 	mov	dptr,#(_EP0_buffer + 0x0002)
      0006B2 E0               [24] 1024 	movx	a,@dptr
      0006B3 FC               [12] 1025 	mov	r4,a
      0006B4 7B 00            [12] 1026 	mov	r3,#0x00
      0006B6 42 06            [12] 1027 	orl	ar6,a
      0006B8 EB               [12] 1028 	mov	a,r3
      0006B9 42 05            [12] 1029 	orl	ar5,a
      0006BB BE 01 14         [24] 1030 	cjne	r6,#0x01,00150$
      0006BE BD 00 11         [24] 1031 	cjne	r5,#0x00,00150$
                                   1032 ;	src/usb_handler.c:210: if( !(((uint8_t*)&CfgDescr)[7] & 0x20) ) len = 0xFF;  // failed
      0006C1 90 09 BB         [24] 1033 	mov	dptr,#(_CfgDescr + 0x0007)
      0006C4 E4               [12] 1034 	clr	a
      0006C5 93               [24] 1035 	movc	a,@a+dptr
      0006C6 FE               [12] 1036 	mov	r6,a
      0006C7 30 E5 03         [24] 1037 	jnb	acc.5,00362$
      0006CA 02 07 65         [24] 1038 	ljmp	00176$
      0006CD                       1039 00362$:
      0006CD 7F FF            [12] 1040 	mov	r7,#0xff
      0006CF 02 07 65         [24] 1041 	ljmp	00176$
      0006D2                       1042 00150$:
                                   1043 ;	src/usb_handler.c:212: else len = 0xFF;                                        // failed
      0006D2 7F FF            [12] 1044 	mov	r7,#0xff
      0006D4 02 07 65         [24] 1045 	ljmp	00176$
      0006D7                       1046 00163$:
                                   1047 ;	src/usb_handler.c:214: else if( (USB_setupBuf->bRequestType & 0x1F) == USB_REQ_RECIP_ENDP ) {
      0006D7 90 00 00         [24] 1048 	mov	dptr,#_EP0_buffer
      0006DA E0               [24] 1049 	movx	a,@dptr
      0006DB FE               [12] 1050 	mov	r6,a
      0006DC 53 06 1F         [24] 1051 	anl	ar6,#0x1f
      0006DF 7D 00            [12] 1052 	mov	r5,#0x00
      0006E1 BE 02 59         [24] 1053 	cjne	r6,#0x02,00160$
      0006E4 BD 00 56         [24] 1054 	cjne	r5,#0x00,00160$
                                   1055 ;	src/usb_handler.c:215: if( ( ( (uint16_t)USB_setupBuf->wValueH << 8 ) | USB_setupBuf->wValueL ) == 0x00 ) {
      0006E7 90 00 03         [24] 1056 	mov	dptr,#(_EP0_buffer + 0x0003)
      0006EA E0               [24] 1057 	movx	a,@dptr
      0006EB FD               [12] 1058 	mov	r5,a
      0006EC 7E 00            [12] 1059 	mov	r6,#0x00
      0006EE 90 00 02         [24] 1060 	mov	dptr,#(_EP0_buffer + 0x0002)
      0006F1 E0               [24] 1061 	movx	a,@dptr
      0006F2 FC               [12] 1062 	mov	r4,a
      0006F3 7B 00            [12] 1063 	mov	r3,#0x00
      0006F5 42 06            [12] 1064 	orl	ar6,a
      0006F7 EB               [12] 1065 	mov	a,r3
      0006F8 42 05            [12] 1066 	orl	ar5,a
      0006FA EE               [12] 1067 	mov	a,r6
      0006FB 4D               [12] 1068 	orl	a,r5
      0006FC 70 3B            [24] 1069 	jnz	00157$
                                   1070 ;	src/usb_handler.c:216: switch( ( (uint16_t)USB_setupBuf->wIndexH << 8 ) | USB_setupBuf->wIndexL ) {
      0006FE 90 00 05         [24] 1071 	mov	dptr,#(_EP0_buffer + 0x0005)
      000701 E0               [24] 1072 	movx	a,@dptr
      000702 FD               [12] 1073 	mov	r5,a
      000703 7E 00            [12] 1074 	mov	r6,#0x00
      000705 90 00 04         [24] 1075 	mov	dptr,#(_EP0_buffer + 0x0004)
      000708 E0               [24] 1076 	movx	a,@dptr
      000709 FC               [12] 1077 	mov	r4,a
      00070A 7B 00            [12] 1078 	mov	r3,#0x00
      00070C 42 06            [12] 1079 	orl	ar6,a
      00070E EB               [12] 1080 	mov	a,r3
      00070F 42 05            [12] 1081 	orl	ar5,a
      000711 BE 02 05         [24] 1082 	cjne	r6,#0x02,00366$
      000714 BD 00 02         [24] 1083 	cjne	r5,#0x00,00366$
      000717 80 08            [24] 1084 	sjmp	00152$
      000719                       1085 00366$:
                                   1086 ;	src/usb_handler.c:243: case 0x02:
      000719 BE 81 19         [24] 1087 	cjne	r6,#0x81,00154$
      00071C BD 00 16         [24] 1088 	cjne	r5,#0x00,00154$
      00071F 80 0A            [24] 1089 	sjmp	00153$
      000721                       1090 00152$:
                                   1091 ;	src/usb_handler.c:244: UEP2_CTRL = UEP2_CTRL & (~bUEP_R_TOG) | UEP_R_RES_STALL;// Set EP2 OUT Stall 
      000721 74 7F            [12] 1092 	mov	a,#0x7f
      000723 55 D4            [12] 1093 	anl	a,_UEP2_CTRL
      000725 44 0C            [12] 1094 	orl	a,#0x0c
      000727 F5 D4            [12] 1095 	mov	_UEP2_CTRL,a
                                   1096 ;	src/usb_handler.c:245: break;
                                   1097 ;	src/usb_handler.c:248: case 0x81:
      000729 80 3A            [24] 1098 	sjmp	00176$
      00072B                       1099 00153$:
                                   1100 ;	src/usb_handler.c:249: UEP1_CTRL = UEP1_CTRL & (~bUEP_T_TOG) | UEP_T_RES_STALL;// Set EP1 IN STALL 
      00072B 74 BF            [12] 1101 	mov	a,#0xbf
      00072D 55 D2            [12] 1102 	anl	a,_UEP1_CTRL
      00072F 44 03            [12] 1103 	orl	a,#0x03
      000731 F5 D2            [12] 1104 	mov	_UEP1_CTRL,a
                                   1105 ;	src/usb_handler.c:250: break;
                                   1106 ;	src/usb_handler.c:257: default:
      000733 80 30            [24] 1107 	sjmp	00176$
      000735                       1108 00154$:
                                   1109 ;	src/usb_handler.c:258: len = 0xFF;               // failed
      000735 7F FF            [12] 1110 	mov	r7,#0xff
                                   1111 ;	src/usb_handler.c:260: }
      000737 80 2C            [24] 1112 	sjmp	00176$
      000739                       1113 00157$:
                                   1114 ;	src/usb_handler.c:262: else len = 0xFF;                // failed
      000739 7F FF            [12] 1115 	mov	r7,#0xff
      00073B 80 28            [24] 1116 	sjmp	00176$
      00073D                       1117 00160$:
                                   1118 ;	src/usb_handler.c:264: else len = 0xFF;                  // failed
      00073D 7F FF            [12] 1119 	mov	r7,#0xff
                                   1120 ;	src/usb_handler.c:265: break;
                                   1121 ;	src/usb_handler.c:267: case USB_GET_STATUS:
      00073F 80 24            [24] 1122 	sjmp	00176$
      000741                       1123 00165$:
                                   1124 ;	src/usb_handler.c:268: EP0_buffer[0] = 0x00;
      000741 90 00 00         [24] 1125 	mov	dptr,#_EP0_buffer
      000744 E4               [12] 1126 	clr	a
      000745 F0               [24] 1127 	movx	@dptr,a
                                   1128 ;	src/usb_handler.c:269: EP0_buffer[1] = 0x00;
      000746 90 00 01         [24] 1129 	mov	dptr,#(_EP0_buffer + 0x0001)
      000749 F0               [24] 1130 	movx	@dptr,a
                                   1131 ;	src/usb_handler.c:270: if(SetupLen >= 2) len = 2;
      00074A AD 0D            [24] 1132 	mov	r5,_SetupLen
      00074C AE 0E            [24] 1133 	mov	r6,(_SetupLen + 1)
      00074E C3               [12] 1134 	clr	c
      00074F ED               [12] 1135 	mov	a,r5
      000750 94 02            [12] 1136 	subb	a,#0x02
      000752 EE               [12] 1137 	mov	a,r6
      000753 94 00            [12] 1138 	subb	a,#0x00
      000755 40 04            [24] 1139 	jc	00167$
      000757 7F 02            [12] 1140 	mov	r7,#0x02
      000759 80 0A            [24] 1141 	sjmp	00176$
      00075B                       1142 00167$:
                                   1143 ;	src/usb_handler.c:271: else len = SetupLen;
      00075B AF 0D            [24] 1144 	mov	r7,_SetupLen
                                   1145 ;	src/usb_handler.c:272: break;
                                   1146 ;	src/usb_handler.c:274: default:
      00075D 80 06            [24] 1147 	sjmp	00176$
      00075F                       1148 00169$:
                                   1149 ;	src/usb_handler.c:275: len = 0xff;                       // failed
      00075F 7F FF            [12] 1150 	mov	r7,#0xff
                                   1151 ;	src/usb_handler.c:277: }
      000761 80 02            [24] 1152 	sjmp	00176$
      000763                       1153 00175$:
                                   1154 ;	src/usb_handler.c:280: else len = 0xff;                          // wrong packet length
      000763 7F FF            [12] 1155 	mov	r7,#0xff
      000765                       1156 00176$:
                                   1157 ;	src/usb_handler.c:282: if(len == 0xff) {
      000765 BF FF 07         [24] 1158 	cjne	r7,#0xff,00181$
                                   1159 ;	src/usb_handler.c:283: SetupReq = 0xFF;
      000768 75 0F FF         [24] 1160 	mov	_SetupReq,#0xff
                                   1161 ;	src/usb_handler.c:284: UEP0_CTRL = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_STALL | UEP_T_RES_STALL;//STALL
      00076B 75 DC CF         [24] 1162 	mov	_UEP0_CTRL,#0xcf
      00076E 22               [24] 1163 	ret
      00076F                       1164 00181$:
                                   1165 ;	src/usb_handler.c:286: else if(len <= EP0_SIZE) {      // Tx data to host or send 0-length packet
      00076F EF               [12] 1166 	mov	a,r7
      000770 24 F7            [12] 1167 	add	a,#0xff - 0x08
      000772 40 06            [24] 1168 	jc	00178$
                                   1169 ;	src/usb_handler.c:287: UEP0_T_LEN = len;
      000774 8F DD            [24] 1170 	mov	_UEP0_T_LEN,r7
                                   1171 ;	src/usb_handler.c:288: UEP0_CTRL = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_ACK | UEP_T_RES_ACK;// Expect DATA1, Answer ACK
      000776 75 DC C0         [24] 1172 	mov	_UEP0_CTRL,#0xc0
      000779 22               [24] 1173 	ret
      00077A                       1174 00178$:
                                   1175 ;	src/usb_handler.c:291: UEP0_T_LEN = 0;  // Tx data to host or send 0-length packet
      00077A 75 DD 00         [24] 1176 	mov	_UEP0_T_LEN,#0x00
                                   1177 ;	src/usb_handler.c:292: UEP0_CTRL = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_ACK | UEP_T_RES_ACK;// Expect DATA1, Answer ACK
      00077D 75 DC C0         [24] 1178 	mov	_UEP0_CTRL,#0xc0
                                   1179 ;	src/usb_handler.c:294: }
      000780 22               [24] 1180 	ret
                                   1181 ;------------------------------------------------------------
                                   1182 ;Allocation info for local variables in function 'USB_EP0_IN'
                                   1183 ;------------------------------------------------------------
                                   1184 ;len                       Allocated to registers r6 
                                   1185 ;------------------------------------------------------------
                                   1186 ;	src/usb_handler.c:296: void USB_EP0_IN(void) {
                                   1187 ;	-----------------------------------------
                                   1188 ;	 function USB_EP0_IN
                                   1189 ;	-----------------------------------------
      000781                       1190 _USB_EP0_IN:
                                   1191 ;	src/usb_handler.c:298: switch(SetupReq) {
      000781 74 05            [12] 1192 	mov	a,#0x05
      000783 B5 0F 02         [24] 1193 	cjne	a,_SetupReq,00121$
      000786 80 46            [24] 1194 	sjmp	00102$
      000788                       1195 00121$:
      000788 74 06            [12] 1196 	mov	a,#0x06
      00078A B5 0F 4F         [24] 1197 	cjne	a,_SetupReq,00103$
                                   1198 ;	src/usb_handler.c:301: len = SetupLen >= EP0_SIZE ? EP0_SIZE : SetupLen;
      00078D AE 0D            [24] 1199 	mov	r6,_SetupLen
      00078F AF 0E            [24] 1200 	mov	r7,(_SetupLen + 1)
      000791 C3               [12] 1201 	clr	c
      000792 EE               [12] 1202 	mov	a,r6
      000793 94 08            [12] 1203 	subb	a,#0x08
      000795 EF               [12] 1204 	mov	a,r7
      000796 94 00            [12] 1205 	subb	a,#0x00
      000798 92 01            [24] 1206 	mov	_USB_EP0_IN_sloc0_1_0,c
      00079A 40 06            [24] 1207 	jc	00107$
      00079C 7E 08            [12] 1208 	mov	r6,#0x08
      00079E 7F 00            [12] 1209 	mov	r7,#0x00
      0007A0 80 04            [24] 1210 	sjmp	00108$
      0007A2                       1211 00107$:
      0007A2 AE 0D            [24] 1212 	mov	r6,_SetupLen
      0007A4 AF 0E            [24] 1213 	mov	r7,(_SetupLen + 1)
      0007A6                       1214 00108$:
                                   1215 ;	src/usb_handler.c:302: USB_EP0_copyDescr(len);                     // copy descriptor to Ep0                                
      0007A6 8E 82            [24] 1216 	mov	dpl,r6
      0007A8 12 04 8B         [24] 1217 	lcall	_USB_EP0_copyDescr
                                   1218 ;	src/usb_handler.c:303: SetupLen  -= len;
      0007AB 8E 05            [24] 1219 	mov	ar5,r6
      0007AD 7F 00            [12] 1220 	mov	r7,#0x00
      0007AF AB 0D            [24] 1221 	mov	r3,_SetupLen
      0007B1 AC 0E            [24] 1222 	mov	r4,(_SetupLen + 1)
      0007B3 EB               [12] 1223 	mov	a,r3
      0007B4 C3               [12] 1224 	clr	c
      0007B5 9D               [12] 1225 	subb	a,r5
      0007B6 FB               [12] 1226 	mov	r3,a
      0007B7 EC               [12] 1227 	mov	a,r4
      0007B8 9F               [12] 1228 	subb	a,r7
      0007B9 FC               [12] 1229 	mov	r4,a
      0007BA 8B 0D            [24] 1230 	mov	_SetupLen,r3
      0007BC 8C 0E            [24] 1231 	mov	(_SetupLen + 1),r4
                                   1232 ;	src/usb_handler.c:304: pDescr    += len;
      0007BE EE               [12] 1233 	mov	a,r6
      0007BF 25 11            [12] 1234 	add	a,_pDescr
      0007C1 F5 11            [12] 1235 	mov	_pDescr,a
      0007C3 E4               [12] 1236 	clr	a
      0007C4 35 12            [12] 1237 	addc	a,(_pDescr + 1)
      0007C6 F5 12            [12] 1238 	mov	(_pDescr + 1),a
                                   1239 ;	src/usb_handler.c:305: UEP0_T_LEN = len;
      0007C8 8E DD            [24] 1240 	mov	_UEP0_T_LEN,r6
                                   1241 ;	src/usb_handler.c:306: UEP0_CTRL ^= bUEP_T_TOG;                    // switch between DATA0 and DATA1
      0007CA 63 DC 40         [24] 1242 	xrl	_UEP0_CTRL,#0x40
                                   1243 ;	src/usb_handler.c:307: break;
                                   1244 ;	src/usb_handler.c:309: case USB_SET_ADDRESS:
      0007CD 22               [24] 1245 	ret
      0007CE                       1246 00102$:
                                   1247 ;	src/usb_handler.c:310: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | SetupLen;
      0007CE E5 E3            [12] 1248 	mov	a,_USB_DEV_AD
      0007D0 54 80            [12] 1249 	anl	a,#0x80
      0007D2 FF               [12] 1250 	mov	r7,a
      0007D3 E5 0D            [12] 1251 	mov	a,_SetupLen
      0007D5 4F               [12] 1252 	orl	a,r7
      0007D6 F5 E3            [12] 1253 	mov	_USB_DEV_AD,a
                                   1254 ;	src/usb_handler.c:311: UEP0_CTRL  = UEP_R_RES_ACK | UEP_T_RES_NAK;
      0007D8 75 DC 02         [24] 1255 	mov	_UEP0_CTRL,#0x02
                                   1256 ;	src/usb_handler.c:312: break;
                                   1257 ;	src/usb_handler.c:314: default:
      0007DB 22               [24] 1258 	ret
      0007DC                       1259 00103$:
                                   1260 ;	src/usb_handler.c:315: UEP0_T_LEN = 0;                             // end of transaction
      0007DC 75 DD 00         [24] 1261 	mov	_UEP0_T_LEN,#0x00
                                   1262 ;	src/usb_handler.c:316: UEP0_CTRL  = UEP_R_RES_ACK | UEP_T_RES_NAK;
      0007DF 75 DC 02         [24] 1263 	mov	_UEP0_CTRL,#0x02
                                   1264 ;	src/usb_handler.c:318: }
                                   1265 ;	src/usb_handler.c:319: }
      0007E2 22               [24] 1266 	ret
                                   1267 ;------------------------------------------------------------
                                   1268 ;Allocation info for local variables in function 'USB_EP0_OUT'
                                   1269 ;------------------------------------------------------------
                                   1270 ;	src/usb_handler.c:321: void USB_EP0_OUT(void) {
                                   1271 ;	-----------------------------------------
                                   1272 ;	 function USB_EP0_OUT
                                   1273 ;	-----------------------------------------
      0007E3                       1274 _USB_EP0_OUT:
                                   1275 ;	src/usb_handler.c:322: UEP0_T_LEN = 0;
      0007E3 75 DD 00         [24] 1276 	mov	_UEP0_T_LEN,#0x00
                                   1277 ;	src/usb_handler.c:323: UEP0_CTRL |= UEP_R_RES_ACK | UEP_T_RES_NAK;     // respond Nak
      0007E6 43 DC 02         [24] 1278 	orl	_UEP0_CTRL,#0x02
                                   1279 ;	src/usb_handler.c:324: }
      0007E9 22               [24] 1280 	ret
                                   1281 ;------------------------------------------------------------
                                   1282 ;Allocation info for local variables in function 'USB_interrupt'
                                   1283 ;------------------------------------------------------------
                                   1284 ;callIndex                 Allocated to registers r7 
                                   1285 ;------------------------------------------------------------
                                   1286 ;	src/usb_handler.c:332: void USB_interrupt(void) {   // inline not really working in multiple files in SDCC
                                   1287 ;	-----------------------------------------
                                   1288 ;	 function USB_interrupt
                                   1289 ;	-----------------------------------------
      0007EA                       1290 _USB_interrupt:
                                   1291 ;	src/usb_handler.c:333: if(UIF_TRANSFER) {
      0007EA 30 D9 5C         [24] 1292 	jnb	_UIF_TRANSFER,00120$
                                   1293 ;	src/usb_handler.c:335: uint8_t callIndex = USB_INT_ST & MASK_UIS_ENDP;
      0007ED E5 D9            [12] 1294 	mov	a,_USB_INT_ST
      0007EF 54 0F            [12] 1295 	anl	a,#0x0f
      0007F1 FF               [12] 1296 	mov	r7,a
                                   1297 ;	src/usb_handler.c:336: switch (USB_INT_ST & MASK_UIS_TOKEN) {
      0007F2 AD D9            [24] 1298 	mov	r5,_USB_INT_ST
      0007F4 53 05 30         [24] 1299 	anl	ar5,#0x30
      0007F7 7E 00            [12] 1300 	mov	r6,#0x00
      0007F9 BD 00 05         [24] 1301 	cjne	r5,#0x00,00182$
      0007FC BE 00 02         [24] 1302 	cjne	r6,#0x00,00182$
      0007FF 80 18            [24] 1303 	sjmp	00101$
      000801                       1304 00182$:
      000801 BD 10 05         [24] 1305 	cjne	r5,#0x10,00183$
      000804 BE 00 02         [24] 1306 	cjne	r6,#0x00,00183$
      000807 80 3E            [24] 1307 	sjmp	00118$
      000809                       1308 00183$:
      000809 BD 20 05         [24] 1309 	cjne	r5,#0x20,00184$
      00080C BE 00 02         [24] 1310 	cjne	r6,#0x00,00184$
      00080F 80 1C            [24] 1311 	sjmp	00109$
      000811                       1312 00184$:
                                   1313 ;	src/usb_handler.c:337: case UIS_TOKEN_OUT:
      000811 BD 30 33         [24] 1314 	cjne	r5,#0x30,00118$
      000814 BE 00 30         [24] 1315 	cjne	r6,#0x00,00118$
      000817 80 28            [24] 1316 	sjmp	00114$
      000819                       1317 00101$:
                                   1318 ;	src/usb_handler.c:338: switch (callIndex) {
      000819 BF 00 02         [24] 1319 	cjne	r7,#0x00,00186$
      00081C 80 05            [24] 1320 	sjmp	00102$
      00081E                       1321 00186$:
                                   1322 ;	src/usb_handler.c:339: case 0: EP0_OUT_callback(); break;
      00081E BF 02 26         [24] 1323 	cjne	r7,#0x02,00118$
      000821 80 05            [24] 1324 	sjmp	00103$
      000823                       1325 00102$:
      000823 12 07 E3         [24] 1326 	lcall	_USB_EP0_OUT
                                   1327 ;	src/usb_handler.c:344: case 2: EP2_OUT_callback(); break;
      000826 80 1F            [24] 1328 	sjmp	00118$
      000828                       1329 00103$:
      000828 12 08 F0         [24] 1330 	lcall	_HID_EP2_OUT
                                   1331 ;	src/usb_handler.c:375: case UIS_TOKEN_IN:
      00082B 80 1A            [24] 1332 	sjmp	00118$
      00082D                       1333 00109$:
                                   1334 ;	src/usb_handler.c:376: switch (callIndex) {
      00082D BF 00 02         [24] 1335 	cjne	r7,#0x00,00188$
      000830 80 05            [24] 1336 	sjmp	00110$
      000832                       1337 00188$:
                                   1338 ;	src/usb_handler.c:377: case 0: EP0_IN_callback(); break;
      000832 BF 01 12         [24] 1339 	cjne	r7,#0x01,00118$
      000835 80 05            [24] 1340 	sjmp	00111$
      000837                       1341 00110$:
      000837 12 07 81         [24] 1342 	lcall	_USB_EP0_IN
                                   1343 ;	src/usb_handler.c:379: case 1: EP1_IN_callback(); break;
      00083A 80 0B            [24] 1344 	sjmp	00118$
      00083C                       1345 00111$:
      00083C 12 08 E2         [24] 1346 	lcall	_HID_EP1_IN
                                   1347 ;	src/usb_handler.c:393: case UIS_TOKEN_SETUP:
      00083F 80 06            [24] 1348 	sjmp	00118$
      000841                       1349 00114$:
                                   1350 ;	src/usb_handler.c:394: switch (callIndex) {
      000841 BF 00 03         [24] 1351 	cjne	r7,#0x00,00118$
                                   1352 ;	src/usb_handler.c:395: case 0: EP0_SETUP_callback(); break;
      000844 12 04 A5         [24] 1353 	lcall	_USB_EP0_SETUP
                                   1354 ;	src/usb_handler.c:411: }
      000847                       1355 00118$:
                                   1356 ;	src/usb_handler.c:412: UIF_TRANSFER = 0;                       // clear interrupt flag
                                   1357 ;	assignBit
      000847 C2 D9            [12] 1358 	clr	_UIF_TRANSFER
      000849                       1359 00120$:
                                   1360 ;	src/usb_handler.c:416: if(UIF_BUS_RST) {
      000849 30 D8 0F         [24] 1361 	jnb	_UIF_BUS_RST,00122$
                                   1362 ;	src/usb_handler.c:417: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
      00084C 75 DC 02         [24] 1363 	mov	_UEP0_CTRL,#0x02
                                   1364 ;	src/usb_handler.c:420: USB_RESET_handler();                    // custom reset handler
      00084F 12 08 D9         [24] 1365 	lcall	_HID_reset
                                   1366 ;	src/usb_handler.c:423: USB_DEV_AD   = 0x00;
      000852 75 E3 00         [24] 1367 	mov	_USB_DEV_AD,#0x00
                                   1368 ;	src/usb_handler.c:424: UIF_SUSPEND  = 0;
                                   1369 ;	assignBit
      000855 C2 DA            [12] 1370 	clr	_UIF_SUSPEND
                                   1371 ;	src/usb_handler.c:425: UIF_TRANSFER = 0;
                                   1372 ;	assignBit
      000857 C2 D9            [12] 1373 	clr	_UIF_TRANSFER
                                   1374 ;	src/usb_handler.c:426: UIF_BUS_RST  = 0;                       // clear interrupt flag
                                   1375 ;	assignBit
      000859 C2 D8            [12] 1376 	clr	_UIF_BUS_RST
      00085B                       1377 00122$:
                                   1378 ;	src/usb_handler.c:430: if (UIF_SUSPEND) {
                                   1379 ;	src/usb_handler.c:431: UIF_SUSPEND = 0;
                                   1380 ;	assignBit
      00085B 10 DA 01         [24] 1381 	jbc	_UIF_SUSPEND,00193$
      00085E 22               [24] 1382 	ret
      00085F                       1383 00193$:
                                   1384 ;	src/usb_handler.c:432: if ( !(USB_MIS_ST & bUMS_SUSPEND) ) USB_INT_FG = 0xFF;  // clear interrupt flag
      00085F E5 DA            [12] 1385 	mov	a,_USB_MIS_ST
      000861 20 E2 03         [24] 1386 	jb	acc.2,00127$
      000864 75 D8 FF         [24] 1387 	mov	_USB_INT_FG,#0xff
      000867                       1388 00127$:
                                   1389 ;	src/usb_handler.c:434: }
      000867 22               [24] 1390 	ret
                                   1391 ;------------------------------------------------------------
                                   1392 ;Allocation info for local variables in function 'USB_init'
                                   1393 ;------------------------------------------------------------
                                   1394 ;	src/usb_handler.c:441: void USB_init(void) {
                                   1395 ;	-----------------------------------------
                                   1396 ;	 function USB_init
                                   1397 ;	-----------------------------------------
      000868                       1398 _USB_init:
                                   1399 ;	src/usb_handler.c:444: | bUC_DMA_EN;                 // DMA enable
      000868 75 E2 29         [24] 1400 	mov	_USB_CTRL,#0x29
                                   1401 ;	src/usb_handler.c:446: | bUD_PORT_EN;                // Enable port, full-speed
      00086B 75 D1 81         [24] 1402 	mov	_UDEV_CTRL,#0x81
                                   1403 ;	src/usb_handler.c:453: UEP0_DMA    = EP0_ADDR;                   // EP0 data transfer address
      00086E E4               [12] 1404 	clr	a
      00086F F5 EC            [12] 1405 	mov	((_UEP0_DMA >> 0) & 0xFF),a
      000871 F5 ED            [12] 1406 	mov	((_UEP0_DMA >> 8) & 0xFF),a
                                   1407 ;	src/usb_handler.c:455: | UEP_T_RES_NAK;              // EP0 IN transaction returns NAK
      000873 75 DC 02         [24] 1408 	mov	_UEP0_CTRL,#0x02
                                   1409 ;	src/usb_handler.c:458: USB_INIT_handler();                       // Custom EP init handler
      000876 12 08 C0         [24] 1410 	lcall	_HID_setup
                                   1411 ;	src/usb_handler.c:463: | bUIE_BUS_RST;               // Enable device mode USB bus reset interrupt
      000879 43 E1 07         [24] 1412 	orl	_USB_INT_EN,#0x07
                                   1413 ;	src/usb_handler.c:465: USB_INT_FG |= 0x1F;                       // Clear interrupt flag
      00087C 43 D8 1F         [24] 1414 	orl	_USB_INT_FG,#0x1f
                                   1415 ;	src/usb_handler.c:466: IE_USB      = 1;                          // Enable USB interrupt
                                   1416 ;	assignBit
      00087F D2 EA            [12] 1417 	setb	_IE_USB
                                   1418 ;	src/usb_handler.c:467: EA          = 1;                          // Enable global interrupts
                                   1419 ;	assignBit
      000881 D2 AF            [12] 1420 	setb	_EA
                                   1421 ;	src/usb_handler.c:469: UEP0_T_LEN  = 0;                          // Must be zero at start
      000883 75 DD 00         [24] 1422 	mov	_UEP0_T_LEN,#0x00
                                   1423 ;	src/usb_handler.c:470: }
      000886 22               [24] 1424 	ret
                                   1425 	.area CSEG    (CODE)
                                   1426 	.area CONST   (CODE)
                                   1427 	.area CABS    (ABS,CODE)
