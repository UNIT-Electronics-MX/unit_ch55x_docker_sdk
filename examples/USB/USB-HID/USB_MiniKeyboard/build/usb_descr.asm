;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module usb_descr
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _InterfDescr
	.globl _SerDescr
	.globl _ProdDescr
	.globl _ManufDescr
	.globl _LangDescr
	.globl _ReportDescrLen
	.globl _ReportDescr
	.globl _CfgDescr
	.globl _DevDescr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
	.area CSEG    (CODE)
	.area CONST   (CODE)
_DevDescr:
	.db #0x12	; 18
	.db #0x01	; 1
	.byte #0x10, #0x01	; 272
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.byte #0x89, #0x11	; 4489
	.byte #0x90, #0x88	; 34960
	.byte #0x00, #0x01	; 256
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
_CfgDescr:
	.db #0x09	; 9
	.db #0x02	; 2
	.byte #0x29, #0x00	; 41
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x4b	; 75	'K'
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x21	; 33
	.byte #0x10, #0x01	; 272
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x22	; 34
	.byte #0xbf, #0x00	; 191
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x03	; 3
	.byte #0x08, #0x00	; 8
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x03	; 3
	.byte #0x08, #0x00	; 8
	.db #0x0a	; 10
_ReportDescr:
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0xe0	; 224
	.db #0x29	; 41
	.db #0xe7	; 231
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0xe7	; 231
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x95	; 149
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x05	; 5
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x05	; 5
	.db #0x91	; 145
	.db #0x02	; 2
	.db #0x75	; 117	'u'
	.db #0x03	; 3
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x91	; 145
	.db #0x03	; 3
	.db #0xc0	; 192
	.db #0x05	; 5
	.db #0x0c	; 12
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x02	; 2
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x3c	; 60
	.db #0x02	; 2
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x3c	; 60
	.db #0x02	; 2
	.db #0x75	; 117	'u'
	.db #0x10	; 16
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0xa1	; 161
	.db #0x00	; 0
	.db #0x85	; 133
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x03	; 3
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x03	; 3
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x75	; 117	'u'
	.db #0x05	; 5
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x30	; 48	'0'
	.db #0x09	; 9
	.db #0x31	; 49	'1'
	.db #0x09	; 9
	.db #0x38	; 56	'8'
	.db #0x15	; 21
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0x7f	; 127
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x95	; 149
	.db #0x03	; 3
	.db #0x81	; 129
	.db #0x06	; 6
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0xa1	; 161
	.db #0x00	; 0
	.db #0x85	; 133
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x30	; 48	'0'
	.db #0x09	; 9
	.db #0x31	; 49	'1'
	.db #0x15	; 21
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0x7f	; 127
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x95	; 149
	.db #0x02	; 2
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0xc0	; 192
	.db #0xc0	; 192
_ReportDescrLen:
	.db #0xbf	; 191
_LangDescr:
	.byte #0x04, #0x03	; 772
	.byte #0x09, #0x04	; 1033
_ManufDescr:
	.byte #0x1c, #0x03	; 796
	.byte #0x67, #0x00	; 103
	.byte #0x65, #0x00	; 101
	.byte #0x6e, #0x00	; 110
	.byte #0x65, #0x00	; 101
	.byte #0x72, #0x00	; 114
	.byte #0x69, #0x00	; 105
	.byte #0x63, #0x00	; 99
	.byte #0x64, #0x00	; 100
	.byte #0x65, #0x00	; 101
	.byte #0x76, #0x00	; 118
	.byte #0x69, #0x00	; 105
	.byte #0x63, #0x00	; 99
	.byte #0x65, #0x00	; 101
_ProdDescr:
	.byte #0x1a, #0x03	; 794
	.byte #0x48, #0x00	; 72
	.byte #0x49, #0x00	; 73
	.byte #0x44, #0x00	; 68
	.byte #0x20, #0x00	; 32
	.byte #0x4b, #0x00	; 75
	.byte #0x65, #0x00	; 101
	.byte #0x79, #0x00	; 121
	.byte #0x62, #0x00	; 98
	.byte #0x6f, #0x00	; 111
	.byte #0x61, #0x00	; 97
	.byte #0x72, #0x00	; 114
	.byte #0x64, #0x00	; 100
_SerDescr:
	.byte #0x14, #0x03	; 788
	.byte #0x43, #0x00	; 67
	.byte #0x48, #0x00	; 72
	.byte #0x35, #0x00	; 53
	.byte #0x35, #0x00	; 53
	.byte #0x32, #0x00	; 50
	.byte #0x78, #0x00	; 120
	.byte #0x48, #0x00	; 72
	.byte #0x49, #0x00	; 73
	.byte #0x44, #0x00	; 68
_InterfDescr:
	.byte #0x1a, #0x03	; 794
	.byte #0x48, #0x00	; 72
	.byte #0x49, #0x00	; 73
	.byte #0x44, #0x00	; 68
	.byte #0x2d, #0x00	; 45
	.byte #0x4b, #0x00	; 75
	.byte #0x65, #0x00	; 101
	.byte #0x79, #0x00	; 121
	.byte #0x62, #0x00	; 98
	.byte #0x6f, #0x00	; 111
	.byte #0x61, #0x00	; 97
	.byte #0x72, #0x00	; 114
	.byte #0x64, #0x00	; 100
	.area CABS    (ABS,CODE)
