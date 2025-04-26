                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module usb_composite
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _KBD_map
                                     12 	.globl _HID_sendReport
                                     13 	.globl _JOY_report
                                     14 	.globl _MOUSE_report
                                     15 	.globl _CON_report
                                     16 	.globl _KBD_report
                                     17 	.globl _EP2_buffer
                                     18 	.globl _EP1_buffer
                                     19 	.globl _EP0_buffer
                                     20 	.globl _JOY_move_PARM_2
                                     21 	.globl _MOUSE_move_PARM_2
                                     22 	.globl _KBD_press
                                     23 	.globl _KBD_release
                                     24 	.globl _KBD_type
                                     25 	.globl _KBD_releaseAll
                                     26 	.globl _KBD_print
                                     27 	.globl _CON_press
                                     28 	.globl _CON_release
                                     29 	.globl _CON_type
                                     30 	.globl _MOUSE_press
                                     31 	.globl _MOUSE_release
                                     32 	.globl _MOUSE_move
                                     33 	.globl _MOUSE_wheel
                                     34 	.globl _JOY_press
                                     35 	.globl _JOY_release
                                     36 	.globl _JOY_move
                                     37 ;--------------------------------------------------------
                                     38 ; special function registers
                                     39 ;--------------------------------------------------------
                                     40 	.area RSEG    (ABS,DATA)
      000000                         41 	.org 0x0000
                                     42 ;--------------------------------------------------------
                                     43 ; special function bits
                                     44 ;--------------------------------------------------------
                                     45 	.area RSEG    (ABS,DATA)
      000000                         46 	.org 0x0000
                                     47 ;--------------------------------------------------------
                                     48 ; overlayable register banks
                                     49 ;--------------------------------------------------------
                                     50 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         51 	.ds 8
                                     52 ;--------------------------------------------------------
                                     53 ; internal ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area DSEG    (DATA)
      00000B                         56 _MOUSE_move_PARM_2:
      00000B                         57 	.ds 1
      00000C                         58 _JOY_move_PARM_2:
      00000C                         59 	.ds 1
                                     60 ;--------------------------------------------------------
                                     61 ; overlayable items in internal ram
                                     62 ;--------------------------------------------------------
                                     63 ;--------------------------------------------------------
                                     64 ; indirectly addressable internal ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area ISEG    (DATA)
                                     67 ;--------------------------------------------------------
                                     68 ; absolute internal ram data
                                     69 ;--------------------------------------------------------
                                     70 	.area IABS    (ABS,DATA)
                                     71 	.area IABS    (ABS,DATA)
                                     72 ;--------------------------------------------------------
                                     73 ; bit data
                                     74 ;--------------------------------------------------------
                                     75 	.area BSEG    (BIT)
                                     76 ;--------------------------------------------------------
                                     77 ; paged external ram data
                                     78 ;--------------------------------------------------------
                                     79 	.area PSEG    (PAG,XDATA)
                                     80 ;--------------------------------------------------------
                                     81 ; external ram data
                                     82 ;--------------------------------------------------------
                                     83 	.area XSEG    (XDATA)
                           000000    84 _EP0_buffer	=	0x0000
                           00000A    85 _EP1_buffer	=	0x000a
                           000014    86 _EP2_buffer	=	0x0014
      000100                         87 _KBD_report::
      000100                         88 	.ds 8
      000108                         89 _CON_report::
      000108                         90 	.ds 3
      00010B                         91 _MOUSE_report::
      00010B                         92 	.ds 5
      000110                         93 _JOY_report::
      000110                         94 	.ds 4
                                     95 ;--------------------------------------------------------
                                     96 ; absolute external ram data
                                     97 ;--------------------------------------------------------
                                     98 	.area XABS    (ABS,XDATA)
                                     99 ;--------------------------------------------------------
                                    100 ; external initialized ram data
                                    101 ;--------------------------------------------------------
                                    102 	.area HOME    (CODE)
                                    103 	.area GSINIT0 (CODE)
                                    104 	.area GSINIT1 (CODE)
                                    105 	.area GSINIT2 (CODE)
                                    106 	.area GSINIT3 (CODE)
                                    107 	.area GSINIT4 (CODE)
                                    108 	.area GSINIT5 (CODE)
                                    109 	.area GSINIT  (CODE)
                                    110 	.area GSFINAL (CODE)
                                    111 	.area CSEG    (CODE)
                                    112 ;--------------------------------------------------------
                                    113 ; global & static initialisations
                                    114 ;--------------------------------------------------------
                                    115 	.area HOME    (CODE)
                                    116 	.area GSINIT  (CODE)
                                    117 	.area GSFINAL (CODE)
                                    118 	.area GSINIT  (CODE)
                                    119 ;	src/usb_composite.c:17: __xdata uint8_t KBD_report[]   = {1,0,0,0,0,0,0,0};
      00005C 90 01 00         [24]  120 	mov	dptr,#_KBD_report
      00005F 74 01            [12]  121 	mov	a,#0x01
      000061 F0               [24]  122 	movx	@dptr,a
      000062 90 01 01         [24]  123 	mov	dptr,#(_KBD_report + 0x0001)
      000065 E4               [12]  124 	clr	a
      000066 F0               [24]  125 	movx	@dptr,a
      000067 90 01 02         [24]  126 	mov	dptr,#(_KBD_report + 0x0002)
      00006A F0               [24]  127 	movx	@dptr,a
      00006B 90 01 03         [24]  128 	mov	dptr,#(_KBD_report + 0x0003)
      00006E F0               [24]  129 	movx	@dptr,a
      00006F 90 01 04         [24]  130 	mov	dptr,#(_KBD_report + 0x0004)
      000072 F0               [24]  131 	movx	@dptr,a
      000073 90 01 05         [24]  132 	mov	dptr,#(_KBD_report + 0x0005)
      000076 F0               [24]  133 	movx	@dptr,a
      000077 90 01 06         [24]  134 	mov	dptr,#(_KBD_report + 0x0006)
      00007A F0               [24]  135 	movx	@dptr,a
      00007B 90 01 07         [24]  136 	mov	dptr,#(_KBD_report + 0x0007)
      00007E F0               [24]  137 	movx	@dptr,a
                                    138 ;	src/usb_composite.c:18: __xdata uint8_t CON_report[]   = {2,0,0};
      00007F 90 01 08         [24]  139 	mov	dptr,#_CON_report
      000082 74 02            [12]  140 	mov	a,#0x02
      000084 F0               [24]  141 	movx	@dptr,a
      000085 90 01 09         [24]  142 	mov	dptr,#(_CON_report + 0x0001)
      000088 E4               [12]  143 	clr	a
      000089 F0               [24]  144 	movx	@dptr,a
      00008A 90 01 0A         [24]  145 	mov	dptr,#(_CON_report + 0x0002)
      00008D F0               [24]  146 	movx	@dptr,a
                                    147 ;	src/usb_composite.c:19: __xdata uint8_t MOUSE_report[] = {3,0,0,0,0};
      00008E 90 01 0B         [24]  148 	mov	dptr,#_MOUSE_report
      000091 74 03            [12]  149 	mov	a,#0x03
      000093 F0               [24]  150 	movx	@dptr,a
      000094 90 01 0C         [24]  151 	mov	dptr,#(_MOUSE_report + 0x0001)
      000097 E4               [12]  152 	clr	a
      000098 F0               [24]  153 	movx	@dptr,a
      000099 90 01 0D         [24]  154 	mov	dptr,#(_MOUSE_report + 0x0002)
      00009C F0               [24]  155 	movx	@dptr,a
      00009D 90 01 0E         [24]  156 	mov	dptr,#(_MOUSE_report + 0x0003)
      0000A0 F0               [24]  157 	movx	@dptr,a
      0000A1 90 01 0F         [24]  158 	mov	dptr,#(_MOUSE_report + 0x0004)
      0000A4 F0               [24]  159 	movx	@dptr,a
                                    160 ;	src/usb_composite.c:20: __xdata uint8_t JOY_report[]   = {4,0,0,0};
      0000A5 90 01 10         [24]  161 	mov	dptr,#_JOY_report
      0000A8 74 04            [12]  162 	mov	a,#0x04
      0000AA F0               [24]  163 	movx	@dptr,a
      0000AB 90 01 11         [24]  164 	mov	dptr,#(_JOY_report + 0x0001)
      0000AE E4               [12]  165 	clr	a
      0000AF F0               [24]  166 	movx	@dptr,a
      0000B0 90 01 12         [24]  167 	mov	dptr,#(_JOY_report + 0x0002)
      0000B3 F0               [24]  168 	movx	@dptr,a
      0000B4 90 01 13         [24]  169 	mov	dptr,#(_JOY_report + 0x0003)
      0000B7 F0               [24]  170 	movx	@dptr,a
                                    171 ;--------------------------------------------------------
                                    172 ; Home
                                    173 ;--------------------------------------------------------
                                    174 	.area HOME    (CODE)
                                    175 	.area HOME    (CODE)
                                    176 ;--------------------------------------------------------
                                    177 ; code
                                    178 ;--------------------------------------------------------
                                    179 	.area CSEG    (CODE)
                                    180 ;------------------------------------------------------------
                                    181 ;Allocation info for local variables in function 'KBD_press'
                                    182 ;------------------------------------------------------------
                                    183 ;key                       Allocated to registers r6 
                                    184 ;i                         Allocated to registers r7 
                                    185 ;------------------------------------------------------------
                                    186 ;	src/usb_composite.c:43: void KBD_press(uint8_t key) {
                                    187 ;	-----------------------------------------
                                    188 ;	 function KBD_press
                                    189 ;	-----------------------------------------
      000264                        190 _KBD_press:
                           000007   191 	ar7 = 0x07
                           000006   192 	ar6 = 0x06
                           000005   193 	ar5 = 0x05
                           000004   194 	ar4 = 0x04
                           000003   195 	ar3 = 0x03
                           000002   196 	ar2 = 0x02
                           000001   197 	ar1 = 0x01
                           000000   198 	ar0 = 0x00
      000264 AF 82            [24]  199 	mov	r7,dpl
                                    200 ;	src/usb_composite.c:47: if(key >= 136) key -= 136;                    // non-printing key/not a modifier?
      000266 BF 88 00         [24]  201 	cjne	r7,#0x88,00168$
      000269                        202 00168$:
      000269 40 08            [24]  203 	jc	00109$
      00026B 8F 06            [24]  204 	mov	ar6,r7
      00026D EE               [12]  205 	mov	a,r6
      00026E 24 78            [12]  206 	add	a,#0x78
      000270 FE               [12]  207 	mov	r6,a
      000271 80 40            [24]  208 	sjmp	00128$
      000273                        209 00109$:
                                    210 ;	src/usb_composite.c:48: else if(key >= 128) {                         // modifier key?
      000273 BF 80 00         [24]  211 	cjne	r7,#0x80,00170$
      000276                        212 00170$:
      000276 40 23            [24]  213 	jc	00106$
                                    214 ;	src/usb_composite.c:49: KBD_report[1] |= (1<<(key-128));            // add modifier to report
      000278 90 01 01         [24]  215 	mov	dptr,#(_KBD_report + 0x0001)
      00027B E0               [24]  216 	movx	a,@dptr
      00027C FD               [12]  217 	mov	r5,a
      00027D 8F 04            [24]  218 	mov	ar4,r7
      00027F EC               [12]  219 	mov	a,r4
      000280 24 80            [12]  220 	add	a,#0x80
      000282 F5 F0            [12]  221 	mov	b,a
      000284 05 F0            [12]  222 	inc	b
      000286 74 01            [12]  223 	mov	a,#0x01
      000288 80 02            [24]  224 	sjmp	00174$
      00028A                        225 00172$:
      00028A 25 E0            [12]  226 	add	a,acc
      00028C                        227 00174$:
      00028C D5 F0 FB         [24]  228 	djnz	b,00172$
      00028F FC               [12]  229 	mov	r4,a
      000290 42 05            [12]  230 	orl	ar5,a
      000292 90 01 01         [24]  231 	mov	dptr,#(_KBD_report + 0x0001)
      000295 ED               [12]  232 	mov	a,r5
      000296 F0               [24]  233 	movx	@dptr,a
                                    234 ;	src/usb_composite.c:50: key = 0;
      000297 7E 00            [12]  235 	mov	r6,#0x00
      000299 80 18            [24]  236 	sjmp	00128$
      00029B                        237 00106$:
                                    238 ;	src/usb_composite.c:53: key = KBD_map[key];                         // convert ascii to keycode for report
      00029B EF               [12]  239 	mov	a,r7
      00029C 90 09 22         [24]  240 	mov	dptr,#_KBD_map
      00029F 93               [24]  241 	movc	a,@a+dptr
                                    242 ;	src/usb_composite.c:54: if(!key) return;                            // no valid key
      0002A0 FE               [12]  243 	mov	r6,a
      0002A1 70 01            [24]  244 	jnz	00102$
      0002A3 22               [24]  245 	ret
      0002A4                        246 00102$:
                                    247 ;	src/usb_composite.c:55: if(key & 0x80) {                            // capital letter/shift character?
      0002A4 EE               [12]  248 	mov	a,r6
      0002A5 30 E7 0B         [24]  249 	jnb	acc.7,00128$
                                    250 ;	src/usb_composite.c:56: KBD_report[1] |= 0x02;                    // add left shift modifier
      0002A8 90 01 01         [24]  251 	mov	dptr,#(_KBD_report + 0x0001)
      0002AB E0               [24]  252 	movx	a,@dptr
      0002AC 44 02            [12]  253 	orl	a,#0x02
      0002AE FF               [12]  254 	mov	r7,a
      0002AF F0               [24]  255 	movx	@dptr,a
                                    256 ;	src/usb_composite.c:57: key &= 0x7F;                              // remove shift from key itself
      0002B0 53 06 7F         [24]  257 	anl	ar6,#0x7f
                                    258 ;	src/usb_composite.c:62: for(i=3; i<8; i++) {
      0002B3                        259 00128$:
      0002B3 7F 03            [12]  260 	mov	r7,#0x03
      0002B5                        261 00117$:
                                    262 ;	src/usb_composite.c:63: if(KBD_report[i] == key) return;            // return if already in report
      0002B5 EF               [12]  263 	mov	a,r7
      0002B6 24 00            [12]  264 	add	a,#_KBD_report
      0002B8 F5 82            [12]  265 	mov	dpl,a
      0002BA E4               [12]  266 	clr	a
      0002BB 34 01            [12]  267 	addc	a,#(_KBD_report >> 8)
      0002BD F5 83            [12]  268 	mov	dph,a
      0002BF E0               [24]  269 	movx	a,@dptr
      0002C0 FD               [12]  270 	mov	r5,a
      0002C1 B5 06 01         [24]  271 	cjne	a,ar6,00118$
      0002C4 22               [24]  272 	ret
      0002C5                        273 00118$:
                                    274 ;	src/usb_composite.c:62: for(i=3; i<8; i++) {
      0002C5 0F               [12]  275 	inc	r7
      0002C6 BF 08 00         [24]  276 	cjne	r7,#0x08,00179$
      0002C9                        277 00179$:
      0002C9 40 EA            [24]  278 	jc	00117$
                                    279 ;	src/usb_composite.c:67: for(i=3; i<8; i++) {
      0002CB 7F 03            [12]  280 	mov	r7,#0x03
      0002CD                        281 00119$:
                                    282 ;	src/usb_composite.c:68: if(KBD_report[i] == 0) {                    // empty slot?
      0002CD EF               [12]  283 	mov	a,r7
      0002CE 24 00            [12]  284 	add	a,#_KBD_report
      0002D0 FC               [12]  285 	mov	r4,a
      0002D1 E4               [12]  286 	clr	a
      0002D2 34 01            [12]  287 	addc	a,#(_KBD_report >> 8)
      0002D4 FD               [12]  288 	mov	r5,a
      0002D5 8C 82            [24]  289 	mov	dpl,r4
      0002D7 8D 83            [24]  290 	mov	dph,r5
      0002D9 E0               [24]  291 	movx	a,@dptr
      0002DA 70 0F            [24]  292 	jnz	00120$
                                    293 ;	src/usb_composite.c:69: KBD_report[i] = key;                      // insert key
      0002DC 8C 82            [24]  294 	mov	dpl,r4
      0002DE 8D 83            [24]  295 	mov	dph,r5
      0002E0 EE               [12]  296 	mov	a,r6
      0002E1 F0               [24]  297 	movx	@dptr,a
                                    298 ;	src/usb_composite.c:70: KBD_sendReport();                         // send report
      0002E2 75 13 08         [24]  299 	mov	_HID_sendReport_PARM_2,#0x08
      0002E5 90 01 00         [24]  300 	mov	dptr,#_KBD_report
                                    301 ;	src/usb_composite.c:71: return;                                   // and return
      0002E8 02 08 8E         [24]  302 	ljmp	_HID_sendReport
      0002EB                        303 00120$:
                                    304 ;	src/usb_composite.c:67: for(i=3; i<8; i++) {
      0002EB 0F               [12]  305 	inc	r7
      0002EC BF 08 00         [24]  306 	cjne	r7,#0x08,00182$
      0002EF                        307 00182$:
      0002EF 40 DC            [24]  308 	jc	00119$
                                    309 ;	src/usb_composite.c:74: }
      0002F1 22               [24]  310 	ret
                                    311 ;------------------------------------------------------------
                                    312 ;Allocation info for local variables in function 'KBD_release'
                                    313 ;------------------------------------------------------------
                                    314 ;key                       Allocated to registers r6 
                                    315 ;i                         Allocated to registers r7 
                                    316 ;------------------------------------------------------------
                                    317 ;	src/usb_composite.c:77: void KBD_release(uint8_t key) {
                                    318 ;	-----------------------------------------
                                    319 ;	 function KBD_release
                                    320 ;	-----------------------------------------
      0002F2                        321 _KBD_release:
      0002F2 AF 82            [24]  322 	mov	r7,dpl
                                    323 ;	src/usb_composite.c:81: if(key >= 136) key -= 136;                    // non-printing key/not a modifier?
      0002F4 BF 88 00         [24]  324 	cjne	r7,#0x88,00154$
      0002F7                        325 00154$:
      0002F7 40 08            [24]  326 	jc	00109$
      0002F9 8F 06            [24]  327 	mov	ar6,r7
      0002FB EE               [12]  328 	mov	a,r6
      0002FC 24 78            [12]  329 	add	a,#0x78
      0002FE FE               [12]  330 	mov	r6,a
      0002FF 80 41            [24]  331 	sjmp	00123$
      000301                        332 00109$:
                                    333 ;	src/usb_composite.c:82: else if(key >= 128) {                         // modifier key?
      000301 BF 80 00         [24]  334 	cjne	r7,#0x80,00156$
      000304                        335 00156$:
      000304 40 24            [24]  336 	jc	00106$
                                    337 ;	src/usb_composite.c:83: KBD_report[1] &= ~(1<<(key-128));           // delete modifier in report
      000306 90 01 01         [24]  338 	mov	dptr,#(_KBD_report + 0x0001)
      000309 E0               [24]  339 	movx	a,@dptr
      00030A FD               [12]  340 	mov	r5,a
      00030B 8F 04            [24]  341 	mov	ar4,r7
      00030D EC               [12]  342 	mov	a,r4
      00030E 24 80            [12]  343 	add	a,#0x80
      000310 F5 F0            [12]  344 	mov	b,a
      000312 05 F0            [12]  345 	inc	b
      000314 74 01            [12]  346 	mov	a,#0x01
      000316 80 02            [24]  347 	sjmp	00160$
      000318                        348 00158$:
      000318 25 E0            [12]  349 	add	a,acc
      00031A                        350 00160$:
      00031A D5 F0 FB         [24]  351 	djnz	b,00158$
      00031D F4               [12]  352 	cpl	a
      00031E FC               [12]  353 	mov	r4,a
      00031F 52 05            [12]  354 	anl	ar5,a
      000321 90 01 01         [24]  355 	mov	dptr,#(_KBD_report + 0x0001)
      000324 ED               [12]  356 	mov	a,r5
      000325 F0               [24]  357 	movx	@dptr,a
                                    358 ;	src/usb_composite.c:84: key = 0;
      000326 7E 00            [12]  359 	mov	r6,#0x00
      000328 80 18            [24]  360 	sjmp	00123$
      00032A                        361 00106$:
                                    362 ;	src/usb_composite.c:87: key = KBD_map[key];                         // convert ascii to keycode for report
      00032A EF               [12]  363 	mov	a,r7
      00032B 90 09 22         [24]  364 	mov	dptr,#_KBD_map
      00032E 93               [24]  365 	movc	a,@a+dptr
                                    366 ;	src/usb_composite.c:88: if(!key) return;                            // no valid key
      00032F FE               [12]  367 	mov	r6,a
      000330 70 01            [24]  368 	jnz	00102$
      000332 22               [24]  369 	ret
      000333                        370 00102$:
                                    371 ;	src/usb_composite.c:89: if(key & 0x80) {                            // capital letter/shift character?
      000333 EE               [12]  372 	mov	a,r6
      000334 30 E7 0B         [24]  373 	jnb	acc.7,00123$
                                    374 ;	src/usb_composite.c:90: KBD_report[1] &= ~0x02;                   // remove shift modifier
      000337 90 01 01         [24]  375 	mov	dptr,#(_KBD_report + 0x0001)
      00033A E0               [24]  376 	movx	a,@dptr
      00033B 54 FD            [12]  377 	anl	a,#0xfd
      00033D FF               [12]  378 	mov	r7,a
      00033E F0               [24]  379 	movx	@dptr,a
                                    380 ;	src/usb_composite.c:91: key &= 0x7F;                              // remove shift from key itself
      00033F 53 06 7F         [24]  381 	anl	ar6,#0x7f
                                    382 ;	src/usb_composite.c:96: for(i=3; i<8; i++) {
      000342                        383 00123$:
      000342 7F 03            [12]  384 	mov	r7,#0x03
      000344                        385 00114$:
                                    386 ;	src/usb_composite.c:97: if(KBD_report[i] == key) KBD_report[i] = 0; // delete key in report
      000344 EF               [12]  387 	mov	a,r7
      000345 24 00            [12]  388 	add	a,#_KBD_report
      000347 FC               [12]  389 	mov	r4,a
      000348 E4               [12]  390 	clr	a
      000349 34 01            [12]  391 	addc	a,#(_KBD_report >> 8)
      00034B FD               [12]  392 	mov	r5,a
      00034C 8C 82            [24]  393 	mov	dpl,r4
      00034E 8D 83            [24]  394 	mov	dph,r5
      000350 E0               [24]  395 	movx	a,@dptr
      000351 B5 06 06         [24]  396 	cjne	a,ar6,00115$
      000354 8C 82            [24]  397 	mov	dpl,r4
      000356 8D 83            [24]  398 	mov	dph,r5
      000358 E4               [12]  399 	clr	a
      000359 F0               [24]  400 	movx	@dptr,a
      00035A                        401 00115$:
                                    402 ;	src/usb_composite.c:96: for(i=3; i<8; i++) {
      00035A 0F               [12]  403 	inc	r7
      00035B BF 08 00         [24]  404 	cjne	r7,#0x08,00165$
      00035E                        405 00165$:
      00035E 40 E4            [24]  406 	jc	00114$
                                    407 ;	src/usb_composite.c:99: KBD_sendReport();                             // send report
      000360 75 13 08         [24]  408 	mov	_HID_sendReport_PARM_2,#0x08
      000363 90 01 00         [24]  409 	mov	dptr,#_KBD_report
                                    410 ;	src/usb_composite.c:100: }
      000366 02 08 8E         [24]  411 	ljmp	_HID_sendReport
                                    412 ;------------------------------------------------------------
                                    413 ;Allocation info for local variables in function 'KBD_type'
                                    414 ;------------------------------------------------------------
                                    415 ;key                       Allocated to registers r7 
                                    416 ;------------------------------------------------------------
                                    417 ;	src/usb_composite.c:103: void KBD_type(uint8_t key) {
                                    418 ;	-----------------------------------------
                                    419 ;	 function KBD_type
                                    420 ;	-----------------------------------------
      000369                        421 _KBD_type:
                                    422 ;	src/usb_composite.c:104: KBD_press(key);
      000369 AF 82            [24]  423 	mov  r7,dpl
      00036B C0 07            [24]  424 	push	ar7
      00036D 12 02 64         [24]  425 	lcall	_KBD_press
      000370 D0 07            [24]  426 	pop	ar7
                                    427 ;	src/usb_composite.c:105: KBD_release(key);
      000372 8F 82            [24]  428 	mov	dpl,r7
                                    429 ;	src/usb_composite.c:106: }
      000374 02 02 F2         [24]  430 	ljmp	_KBD_release
                                    431 ;------------------------------------------------------------
                                    432 ;Allocation info for local variables in function 'KBD_releaseAll'
                                    433 ;------------------------------------------------------------
                                    434 ;i                         Allocated to registers r7 
                                    435 ;------------------------------------------------------------
                                    436 ;	src/usb_composite.c:109: void KBD_releaseAll(void) {
                                    437 ;	-----------------------------------------
                                    438 ;	 function KBD_releaseAll
                                    439 ;	-----------------------------------------
      000377                        440 _KBD_releaseAll:
                                    441 ;	src/usb_composite.c:111: for(i=7; i; i--) KBD_report[i] = 0;           // delete all keys in report
      000377 7F 07            [12]  442 	mov	r7,#0x07
      000379                        443 00102$:
      000379 EF               [12]  444 	mov	a,r7
      00037A 24 00            [12]  445 	add	a,#_KBD_report
      00037C F5 82            [12]  446 	mov	dpl,a
      00037E E4               [12]  447 	clr	a
      00037F 34 01            [12]  448 	addc	a,#(_KBD_report >> 8)
      000381 F5 83            [12]  449 	mov	dph,a
      000383 E4               [12]  450 	clr	a
      000384 F0               [24]  451 	movx	@dptr,a
      000385 DF F2            [24]  452 	djnz	r7,00102$
                                    453 ;	src/usb_composite.c:112: KBD_sendReport();                             // send report
      000387 75 13 08         [24]  454 	mov	_HID_sendReport_PARM_2,#0x08
      00038A 90 01 00         [24]  455 	mov	dptr,#_KBD_report
                                    456 ;	src/usb_composite.c:113: }
      00038D 02 08 8E         [24]  457 	ljmp	_HID_sendReport
                                    458 ;------------------------------------------------------------
                                    459 ;Allocation info for local variables in function 'KBD_print'
                                    460 ;------------------------------------------------------------
                                    461 ;str                       Allocated to registers 
                                    462 ;------------------------------------------------------------
                                    463 ;	src/usb_composite.c:116: void KBD_print(char* str) {
                                    464 ;	-----------------------------------------
                                    465 ;	 function KBD_print
                                    466 ;	-----------------------------------------
      000390                        467 _KBD_print:
      000390 AD 82            [24]  468 	mov	r5,dpl
      000392 AE 83            [24]  469 	mov	r6,dph
      000394 AF F0            [24]  470 	mov	r7,b
                                    471 ;	src/usb_composite.c:117: while(*str) KBD_type(*str++);
      000396                        472 00101$:
      000396 8D 82            [24]  473 	mov	dpl,r5
      000398 8E 83            [24]  474 	mov	dph,r6
      00039A 8F F0            [24]  475 	mov	b,r7
      00039C 12 08 F1         [24]  476 	lcall	__gptrget
      00039F FC               [12]  477 	mov	r4,a
      0003A0 60 18            [24]  478 	jz	00104$
      0003A2 8C 82            [24]  479 	mov	dpl,r4
      0003A4 0D               [12]  480 	inc	r5
      0003A5 BD 00 01         [24]  481 	cjne	r5,#0x00,00116$
      0003A8 0E               [12]  482 	inc	r6
      0003A9                        483 00116$:
      0003A9 C0 07            [24]  484 	push	ar7
      0003AB C0 06            [24]  485 	push	ar6
      0003AD C0 05            [24]  486 	push	ar5
      0003AF 12 03 69         [24]  487 	lcall	_KBD_type
      0003B2 D0 05            [24]  488 	pop	ar5
      0003B4 D0 06            [24]  489 	pop	ar6
      0003B6 D0 07            [24]  490 	pop	ar7
      0003B8 80 DC            [24]  491 	sjmp	00101$
      0003BA                        492 00104$:
                                    493 ;	src/usb_composite.c:118: }
      0003BA 22               [24]  494 	ret
                                    495 ;------------------------------------------------------------
                                    496 ;Allocation info for local variables in function 'CON_press'
                                    497 ;------------------------------------------------------------
                                    498 ;key                       Allocated to registers r7 
                                    499 ;------------------------------------------------------------
                                    500 ;	src/usb_composite.c:125: void CON_press(uint8_t key) {
                                    501 ;	-----------------------------------------
                                    502 ;	 function CON_press
                                    503 ;	-----------------------------------------
      0003BB                        504 _CON_press:
      0003BB AF 82            [24]  505 	mov	r7,dpl
                                    506 ;	src/usb_composite.c:126: CON_report[1] = key;
      0003BD 90 01 09         [24]  507 	mov	dptr,#(_CON_report + 0x0001)
      0003C0 EF               [12]  508 	mov	a,r7
      0003C1 F0               [24]  509 	movx	@dptr,a
                                    510 ;	src/usb_composite.c:127: CON_sendReport();                             // send report
      0003C2 75 13 03         [24]  511 	mov	_HID_sendReport_PARM_2,#0x03
      0003C5 90 01 08         [24]  512 	mov	dptr,#_CON_report
                                    513 ;	src/usb_composite.c:128: }
      0003C8 02 08 8E         [24]  514 	ljmp	_HID_sendReport
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'CON_release'
                                    517 ;------------------------------------------------------------
                                    518 ;	src/usb_composite.c:131: void CON_release(void) {
                                    519 ;	-----------------------------------------
                                    520 ;	 function CON_release
                                    521 ;	-----------------------------------------
      0003CB                        522 _CON_release:
                                    523 ;	src/usb_composite.c:132: CON_report[1] = 0;
      0003CB 90 01 09         [24]  524 	mov	dptr,#(_CON_report + 0x0001)
      0003CE E4               [12]  525 	clr	a
      0003CF F0               [24]  526 	movx	@dptr,a
                                    527 ;	src/usb_composite.c:133: CON_sendReport();
      0003D0 75 13 03         [24]  528 	mov	_HID_sendReport_PARM_2,#0x03
      0003D3 90 01 08         [24]  529 	mov	dptr,#_CON_report
                                    530 ;	src/usb_composite.c:134: }
      0003D6 02 08 8E         [24]  531 	ljmp	_HID_sendReport
                                    532 ;------------------------------------------------------------
                                    533 ;Allocation info for local variables in function 'CON_type'
                                    534 ;------------------------------------------------------------
                                    535 ;key                       Allocated to registers 
                                    536 ;------------------------------------------------------------
                                    537 ;	src/usb_composite.c:137: void CON_type(uint8_t key) {
                                    538 ;	-----------------------------------------
                                    539 ;	 function CON_type
                                    540 ;	-----------------------------------------
      0003D9                        541 _CON_type:
                                    542 ;	src/usb_composite.c:138: CON_press(key);
      0003D9 12 03 BB         [24]  543 	lcall	_CON_press
                                    544 ;	src/usb_composite.c:139: CON_release();
                                    545 ;	src/usb_composite.c:140: }
      0003DC 02 03 CB         [24]  546 	ljmp	_CON_release
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'MOUSE_press'
                                    549 ;------------------------------------------------------------
                                    550 ;buttons                   Allocated to registers r7 
                                    551 ;------------------------------------------------------------
                                    552 ;	src/usb_composite.c:147: void MOUSE_press(uint8_t buttons) {
                                    553 ;	-----------------------------------------
                                    554 ;	 function MOUSE_press
                                    555 ;	-----------------------------------------
      0003DF                        556 _MOUSE_press:
      0003DF AF 82            [24]  557 	mov	r7,dpl
                                    558 ;	src/usb_composite.c:148: MOUSE_report[1] |= buttons;                   // press button(s)
      0003E1 90 01 0C         [24]  559 	mov	dptr,#(_MOUSE_report + 0x0001)
      0003E4 E0               [24]  560 	movx	a,@dptr
      0003E5 42 07            [12]  561 	orl	ar7,a
      0003E7 90 01 0C         [24]  562 	mov	dptr,#(_MOUSE_report + 0x0001)
      0003EA EF               [12]  563 	mov	a,r7
      0003EB F0               [24]  564 	movx	@dptr,a
                                    565 ;	src/usb_composite.c:149: MOUSE_sendReport();                           // send HID report
      0003EC 75 13 05         [24]  566 	mov	_HID_sendReport_PARM_2,#0x05
      0003EF 90 01 0B         [24]  567 	mov	dptr,#_MOUSE_report
                                    568 ;	src/usb_composite.c:150: }
      0003F2 02 08 8E         [24]  569 	ljmp	_HID_sendReport
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'MOUSE_release'
                                    572 ;------------------------------------------------------------
                                    573 ;buttons                   Allocated to registers r7 
                                    574 ;------------------------------------------------------------
                                    575 ;	src/usb_composite.c:153: void MOUSE_release(uint8_t buttons) {
                                    576 ;	-----------------------------------------
                                    577 ;	 function MOUSE_release
                                    578 ;	-----------------------------------------
      0003F5                        579 _MOUSE_release:
      0003F5 AF 82            [24]  580 	mov	r7,dpl
                                    581 ;	src/usb_composite.c:154: MOUSE_report[1] &= ~buttons;                  // release button(s)
      0003F7 90 01 0C         [24]  582 	mov	dptr,#(_MOUSE_report + 0x0001)
      0003FA E0               [24]  583 	movx	a,@dptr
      0003FB FE               [12]  584 	mov	r6,a
      0003FC EF               [12]  585 	mov	a,r7
      0003FD F4               [12]  586 	cpl	a
      0003FE 52 06            [12]  587 	anl	ar6,a
      000400 90 01 0C         [24]  588 	mov	dptr,#(_MOUSE_report + 0x0001)
      000403 EE               [12]  589 	mov	a,r6
      000404 F0               [24]  590 	movx	@dptr,a
                                    591 ;	src/usb_composite.c:155: MOUSE_sendReport();                           // send HID report
      000405 75 13 05         [24]  592 	mov	_HID_sendReport_PARM_2,#0x05
      000408 90 01 0B         [24]  593 	mov	dptr,#_MOUSE_report
                                    594 ;	src/usb_composite.c:156: }
      00040B 02 08 8E         [24]  595 	ljmp	_HID_sendReport
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'MOUSE_move'
                                    598 ;------------------------------------------------------------
                                    599 ;yrel                      Allocated with name '_MOUSE_move_PARM_2'
                                    600 ;xrel                      Allocated to registers r7 
                                    601 ;------------------------------------------------------------
                                    602 ;	src/usb_composite.c:159: void MOUSE_move(int8_t xrel, int8_t yrel) {
                                    603 ;	-----------------------------------------
                                    604 ;	 function MOUSE_move
                                    605 ;	-----------------------------------------
      00040E                        606 _MOUSE_move:
      00040E AF 82            [24]  607 	mov	r7,dpl
                                    608 ;	src/usb_composite.c:160: MOUSE_report[2] = (uint8_t)xrel;              // set relative x-movement
      000410 90 01 0D         [24]  609 	mov	dptr,#(_MOUSE_report + 0x0002)
      000413 EF               [12]  610 	mov	a,r7
      000414 F0               [24]  611 	movx	@dptr,a
                                    612 ;	src/usb_composite.c:161: MOUSE_report[3] = (uint8_t)yrel;              // set relative y-movement
      000415 AF 0B            [24]  613 	mov	r7,_MOUSE_move_PARM_2
      000417 90 01 0E         [24]  614 	mov	dptr,#(_MOUSE_report + 0x0003)
      00041A EF               [12]  615 	mov	a,r7
      00041B F0               [24]  616 	movx	@dptr,a
                                    617 ;	src/usb_composite.c:162: MOUSE_sendReport();                           // send HID report
      00041C 75 13 05         [24]  618 	mov	_HID_sendReport_PARM_2,#0x05
      00041F 90 01 0B         [24]  619 	mov	dptr,#_MOUSE_report
      000422 12 08 8E         [24]  620 	lcall	_HID_sendReport
                                    621 ;	src/usb_composite.c:163: MOUSE_report[2] = 0;                          // reset movements
      000425 90 01 0D         [24]  622 	mov	dptr,#(_MOUSE_report + 0x0002)
      000428 E4               [12]  623 	clr	a
      000429 F0               [24]  624 	movx	@dptr,a
                                    625 ;	src/usb_composite.c:164: MOUSE_report[3] = 0;
      00042A 90 01 0E         [24]  626 	mov	dptr,#(_MOUSE_report + 0x0003)
      00042D F0               [24]  627 	movx	@dptr,a
                                    628 ;	src/usb_composite.c:165: }
      00042E 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'MOUSE_wheel'
                                    632 ;------------------------------------------------------------
                                    633 ;rel                       Allocated to registers r7 
                                    634 ;------------------------------------------------------------
                                    635 ;	src/usb_composite.c:168: void MOUSE_wheel(int8_t rel) {
                                    636 ;	-----------------------------------------
                                    637 ;	 function MOUSE_wheel
                                    638 ;	-----------------------------------------
      00042F                        639 _MOUSE_wheel:
      00042F AF 82            [24]  640 	mov	r7,dpl
                                    641 ;	src/usb_composite.c:169: MOUSE_report[4] = (uint8_t)rel;               // set relative wheel movement
      000431 90 01 0F         [24]  642 	mov	dptr,#(_MOUSE_report + 0x0004)
      000434 EF               [12]  643 	mov	a,r7
      000435 F0               [24]  644 	movx	@dptr,a
                                    645 ;	src/usb_composite.c:170: MOUSE_sendReport();                           // send HID report
      000436 75 13 05         [24]  646 	mov	_HID_sendReport_PARM_2,#0x05
      000439 90 01 0B         [24]  647 	mov	dptr,#_MOUSE_report
      00043C 12 08 8E         [24]  648 	lcall	_HID_sendReport
                                    649 ;	src/usb_composite.c:171: MOUSE_report[4] = 0;                          // reset movements
      00043F 90 01 0F         [24]  650 	mov	dptr,#(_MOUSE_report + 0x0004)
      000442 E4               [12]  651 	clr	a
      000443 F0               [24]  652 	movx	@dptr,a
                                    653 ;	src/usb_composite.c:172: }
      000444 22               [24]  654 	ret
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'JOY_press'
                                    657 ;------------------------------------------------------------
                                    658 ;buttons                   Allocated to registers r7 
                                    659 ;------------------------------------------------------------
                                    660 ;	src/usb_composite.c:179: void JOY_press(uint8_t buttons) {
                                    661 ;	-----------------------------------------
                                    662 ;	 function JOY_press
                                    663 ;	-----------------------------------------
      000445                        664 _JOY_press:
      000445 AF 82            [24]  665 	mov	r7,dpl
                                    666 ;	src/usb_composite.c:180: JOY_report[1] |= buttons;                     // press button(s)
      000447 90 01 11         [24]  667 	mov	dptr,#(_JOY_report + 0x0001)
      00044A E0               [24]  668 	movx	a,@dptr
      00044B 42 07            [12]  669 	orl	ar7,a
      00044D 90 01 11         [24]  670 	mov	dptr,#(_JOY_report + 0x0001)
      000450 EF               [12]  671 	mov	a,r7
      000451 F0               [24]  672 	movx	@dptr,a
                                    673 ;	src/usb_composite.c:181: JOY_sendReport();                             // send HID report
      000452 75 13 04         [24]  674 	mov	_HID_sendReport_PARM_2,#0x04
      000455 90 01 10         [24]  675 	mov	dptr,#_JOY_report
                                    676 ;	src/usb_composite.c:182: }
      000458 02 08 8E         [24]  677 	ljmp	_HID_sendReport
                                    678 ;------------------------------------------------------------
                                    679 ;Allocation info for local variables in function 'JOY_release'
                                    680 ;------------------------------------------------------------
                                    681 ;buttons                   Allocated to registers r7 
                                    682 ;------------------------------------------------------------
                                    683 ;	src/usb_composite.c:185: void JOY_release(uint8_t buttons) {
                                    684 ;	-----------------------------------------
                                    685 ;	 function JOY_release
                                    686 ;	-----------------------------------------
      00045B                        687 _JOY_release:
      00045B AF 82            [24]  688 	mov	r7,dpl
                                    689 ;	src/usb_composite.c:186: JOY_report[1] &= ~buttons;                    // release button(s)
      00045D 90 01 11         [24]  690 	mov	dptr,#(_JOY_report + 0x0001)
      000460 E0               [24]  691 	movx	a,@dptr
      000461 FE               [12]  692 	mov	r6,a
      000462 EF               [12]  693 	mov	a,r7
      000463 F4               [12]  694 	cpl	a
      000464 52 06            [12]  695 	anl	ar6,a
      000466 90 01 11         [24]  696 	mov	dptr,#(_JOY_report + 0x0001)
      000469 EE               [12]  697 	mov	a,r6
      00046A F0               [24]  698 	movx	@dptr,a
                                    699 ;	src/usb_composite.c:187: JOY_sendReport();                             // send HID report
      00046B 75 13 04         [24]  700 	mov	_HID_sendReport_PARM_2,#0x04
      00046E 90 01 10         [24]  701 	mov	dptr,#_JOY_report
                                    702 ;	src/usb_composite.c:188: }
      000471 02 08 8E         [24]  703 	ljmp	_HID_sendReport
                                    704 ;------------------------------------------------------------
                                    705 ;Allocation info for local variables in function 'JOY_move'
                                    706 ;------------------------------------------------------------
                                    707 ;yrel                      Allocated with name '_JOY_move_PARM_2'
                                    708 ;xrel                      Allocated to registers r7 
                                    709 ;------------------------------------------------------------
                                    710 ;	src/usb_composite.c:191: void JOY_move(int8_t xrel, int8_t yrel) {
                                    711 ;	-----------------------------------------
                                    712 ;	 function JOY_move
                                    713 ;	-----------------------------------------
      000474                        714 _JOY_move:
      000474 AF 82            [24]  715 	mov	r7,dpl
                                    716 ;	src/usb_composite.c:192: JOY_report[2] = (uint8_t)xrel;                // set x-movement
      000476 90 01 12         [24]  717 	mov	dptr,#(_JOY_report + 0x0002)
      000479 EF               [12]  718 	mov	a,r7
      00047A F0               [24]  719 	movx	@dptr,a
                                    720 ;	src/usb_composite.c:193: JOY_report[3] = (uint8_t)yrel;                // set y-movement
      00047B AF 0C            [24]  721 	mov	r7,_JOY_move_PARM_2
      00047D 90 01 13         [24]  722 	mov	dptr,#(_JOY_report + 0x0003)
      000480 EF               [12]  723 	mov	a,r7
      000481 F0               [24]  724 	movx	@dptr,a
                                    725 ;	src/usb_composite.c:194: JOY_sendReport();                             // send HID report
      000482 75 13 04         [24]  726 	mov	_HID_sendReport_PARM_2,#0x04
      000485 90 01 10         [24]  727 	mov	dptr,#_JOY_report
                                    728 ;	src/usb_composite.c:195: }
      000488 02 08 8E         [24]  729 	ljmp	_HID_sendReport
                                    730 	.area CSEG    (CODE)
                                    731 	.area CONST   (CODE)
      000922                        732 _KBD_map:
      000922 00                     733 	.db #0x00	; 0
      000923 00                     734 	.db #0x00	; 0
      000924 00                     735 	.db #0x00	; 0
      000925 00                     736 	.db #0x00	; 0
      000926 00                     737 	.db #0x00	; 0
      000927 00                     738 	.db #0x00	; 0
      000928 00                     739 	.db #0x00	; 0
      000929 00                     740 	.db #0x00	; 0
      00092A 2A                     741 	.db #0x2a	; 42
      00092B 2B                     742 	.db #0x2b	; 43
      00092C 28                     743 	.db #0x28	; 40
      00092D 00                     744 	.db #0x00	; 0
      00092E 00                     745 	.db #0x00	; 0
      00092F 00                     746 	.db #0x00	; 0
      000930 00                     747 	.db #0x00	; 0
      000931 00                     748 	.db #0x00	; 0
      000932 00                     749 	.db #0x00	; 0
      000933 00                     750 	.db #0x00	; 0
      000934 00                     751 	.db #0x00	; 0
      000935 00                     752 	.db #0x00	; 0
      000936 00                     753 	.db #0x00	; 0
      000937 00                     754 	.db #0x00	; 0
      000938 00                     755 	.db #0x00	; 0
      000939 00                     756 	.db #0x00	; 0
      00093A 00                     757 	.db #0x00	; 0
      00093B 00                     758 	.db #0x00	; 0
      00093C 00                     759 	.db #0x00	; 0
      00093D 00                     760 	.db #0x00	; 0
      00093E 00                     761 	.db #0x00	; 0
      00093F 00                     762 	.db #0x00	; 0
      000940 00                     763 	.db #0x00	; 0
      000941 00                     764 	.db #0x00	; 0
      000942 2C                     765 	.db #0x2c	; 44
      000943 9E                     766 	.db #0x9e	; 158
      000944 B4                     767 	.db #0xb4	; 180
      000945 A0                     768 	.db #0xa0	; 160
      000946 A1                     769 	.db #0xa1	; 161
      000947 A2                     770 	.db #0xa2	; 162
      000948 A4                     771 	.db #0xa4	; 164
      000949 34                     772 	.db #0x34	; 52	'4'
      00094A A6                     773 	.db #0xa6	; 166
      00094B A7                     774 	.db #0xa7	; 167
      00094C A5                     775 	.db #0xa5	; 165
      00094D AE                     776 	.db #0xae	; 174
      00094E 36                     777 	.db #0x36	; 54	'6'
      00094F 2D                     778 	.db #0x2d	; 45
      000950 37                     779 	.db #0x37	; 55	'7'
      000951 38                     780 	.db #0x38	; 56	'8'
      000952 27                     781 	.db #0x27	; 39
      000953 1E                     782 	.db #0x1e	; 30
      000954 1F                     783 	.db #0x1f	; 31
      000955 20                     784 	.db #0x20	; 32
      000956 21                     785 	.db #0x21	; 33
      000957 22                     786 	.db #0x22	; 34
      000958 23                     787 	.db #0x23	; 35
      000959 24                     788 	.db #0x24	; 36
      00095A 25                     789 	.db #0x25	; 37
      00095B 26                     790 	.db #0x26	; 38
      00095C B3                     791 	.db #0xb3	; 179
      00095D 33                     792 	.db #0x33	; 51	'3'
      00095E B6                     793 	.db #0xb6	; 182
      00095F 2E                     794 	.db #0x2e	; 46
      000960 B7                     795 	.db #0xb7	; 183
      000961 B8                     796 	.db #0xb8	; 184
      000962 9F                     797 	.db #0x9f	; 159
      000963 84                     798 	.db #0x84	; 132
      000964 85                     799 	.db #0x85	; 133
      000965 86                     800 	.db #0x86	; 134
      000966 87                     801 	.db #0x87	; 135
      000967 88                     802 	.db #0x88	; 136
      000968 89                     803 	.db #0x89	; 137
      000969 8A                     804 	.db #0x8a	; 138
      00096A 8B                     805 	.db #0x8b	; 139
      00096B 8C                     806 	.db #0x8c	; 140
      00096C 8D                     807 	.db #0x8d	; 141
      00096D 8E                     808 	.db #0x8e	; 142
      00096E 8F                     809 	.db #0x8f	; 143
      00096F 90                     810 	.db #0x90	; 144
      000970 91                     811 	.db #0x91	; 145
      000971 92                     812 	.db #0x92	; 146
      000972 93                     813 	.db #0x93	; 147
      000973 94                     814 	.db #0x94	; 148
      000974 95                     815 	.db #0x95	; 149
      000975 96                     816 	.db #0x96	; 150
      000976 97                     817 	.db #0x97	; 151
      000977 98                     818 	.db #0x98	; 152
      000978 99                     819 	.db #0x99	; 153
      000979 9A                     820 	.db #0x9a	; 154
      00097A 9B                     821 	.db #0x9b	; 155
      00097B 9C                     822 	.db #0x9c	; 156
      00097C 9D                     823 	.db #0x9d	; 157
      00097D 2F                     824 	.db #0x2f	; 47
      00097E 31                     825 	.db #0x31	; 49	'1'
      00097F 30                     826 	.db #0x30	; 48	'0'
      000980 A3                     827 	.db #0xa3	; 163
      000981 AD                     828 	.db #0xad	; 173
      000982 35                     829 	.db #0x35	; 53	'5'
      000983 04                     830 	.db #0x04	; 4
      000984 05                     831 	.db #0x05	; 5
      000985 06                     832 	.db #0x06	; 6
      000986 07                     833 	.db #0x07	; 7
      000987 08                     834 	.db #0x08	; 8
      000988 09                     835 	.db #0x09	; 9
      000989 0A                     836 	.db #0x0a	; 10
      00098A 0B                     837 	.db #0x0b	; 11
      00098B 0C                     838 	.db #0x0c	; 12
      00098C 0D                     839 	.db #0x0d	; 13
      00098D 0E                     840 	.db #0x0e	; 14
      00098E 0F                     841 	.db #0x0f	; 15
      00098F 10                     842 	.db #0x10	; 16
      000990 11                     843 	.db #0x11	; 17
      000991 12                     844 	.db #0x12	; 18
      000992 13                     845 	.db #0x13	; 19
      000993 14                     846 	.db #0x14	; 20
      000994 15                     847 	.db #0x15	; 21
      000995 16                     848 	.db #0x16	; 22
      000996 17                     849 	.db #0x17	; 23
      000997 18                     850 	.db #0x18	; 24
      000998 19                     851 	.db #0x19	; 25
      000999 1A                     852 	.db #0x1a	; 26
      00099A 1B                     853 	.db #0x1b	; 27
      00099B 1C                     854 	.db #0x1c	; 28
      00099C 1D                     855 	.db #0x1d	; 29
      00099D AF                     856 	.db #0xaf	; 175
      00099E B1                     857 	.db #0xb1	; 177
      00099F B0                     858 	.db #0xb0	; 176
      0009A0 B5                     859 	.db #0xb5	; 181
      0009A1 00                     860 	.db #0x00	; 0
                                    861 	.area CABS    (ABS,CODE)
