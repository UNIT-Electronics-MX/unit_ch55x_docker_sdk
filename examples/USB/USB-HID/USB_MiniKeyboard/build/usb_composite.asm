;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module usb_composite
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _KBD_map
	.globl _HID_sendReport
	.globl _JOY_report
	.globl _MOUSE_report
	.globl _CON_report
	.globl _KBD_report
	.globl _EP2_buffer
	.globl _EP1_buffer
	.globl _EP0_buffer
	.globl _JOY_move_PARM_2
	.globl _MOUSE_move_PARM_2
	.globl _KBD_press
	.globl _KBD_release
	.globl _KBD_type
	.globl _KBD_releaseAll
	.globl _KBD_print
	.globl _CON_press
	.globl _CON_release
	.globl _CON_type
	.globl _MOUSE_press
	.globl _MOUSE_release
	.globl _MOUSE_move
	.globl _MOUSE_wheel
	.globl _JOY_press
	.globl _JOY_release
	.globl _JOY_move
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
_MOUSE_move_PARM_2:
	.ds 1
_JOY_move_PARM_2:
	.ds 1
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
_EP0_buffer	=	0x0000
_EP1_buffer	=	0x000a
_EP2_buffer	=	0x0014
_KBD_report::
	.ds 8
_CON_report::
	.ds 3
_MOUSE_report::
	.ds 5
_JOY_report::
	.ds 4
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
;	src/usb_composite.c:17: __xdata uint8_t KBD_report[]   = {1,0,0,0,0,0,0,0};
	mov	dptr,#_KBD_report
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0001)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_KBD_report + 0x0007)
	movx	@dptr,a
;	src/usb_composite.c:18: __xdata uint8_t CON_report[]   = {2,0,0};
	mov	dptr,#_CON_report
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_CON_report + 0x0001)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_CON_report + 0x0002)
	movx	@dptr,a
;	src/usb_composite.c:19: __xdata uint8_t MOUSE_report[] = {3,0,0,0,0};
	mov	dptr,#_MOUSE_report
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_MOUSE_report + 0x0001)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_MOUSE_report + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_MOUSE_report + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_MOUSE_report + 0x0004)
	movx	@dptr,a
;	src/usb_composite.c:20: __xdata uint8_t JOY_report[]   = {4,0,0,0};
	mov	dptr,#_JOY_report
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_JOY_report + 0x0001)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_JOY_report + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_JOY_report + 0x0003)
	movx	@dptr,a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'KBD_press'
;------------------------------------------------------------
;key                       Allocated to registers r6 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_composite.c:43: void KBD_press(uint8_t key) {
;	-----------------------------------------
;	 function KBD_press
;	-----------------------------------------
_KBD_press:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	src/usb_composite.c:47: if(key >= 136) key -= 136;                    // non-printing key/not a modifier?
	cjne	r7,#0x88,00168$
00168$:
	jc	00109$
	mov	ar6,r7
	mov	a,r6
	add	a,#0x78
	mov	r6,a
	sjmp	00128$
00109$:
;	src/usb_composite.c:48: else if(key >= 128) {                         // modifier key?
	cjne	r7,#0x80,00170$
00170$:
	jc	00106$
;	src/usb_composite.c:49: KBD_report[1] |= (1<<(key-128));            // add modifier to report
	mov	dptr,#(_KBD_report + 0x0001)
	movx	a,@dptr
	mov	r5,a
	mov	ar4,r7
	mov	a,r4
	add	a,#0x80
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00174$
00172$:
	add	a,acc
00174$:
	djnz	b,00172$
	mov	r4,a
	orl	ar5,a
	mov	dptr,#(_KBD_report + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	src/usb_composite.c:50: key = 0;
	mov	r6,#0x00
	sjmp	00128$
00106$:
;	src/usb_composite.c:53: key = KBD_map[key];                         // convert ascii to keycode for report
	mov	a,r7
	mov	dptr,#_KBD_map
	movc	a,@a+dptr
;	src/usb_composite.c:54: if(!key) return;                            // no valid key
	mov	r6,a
	jnz	00102$
	ret
00102$:
;	src/usb_composite.c:55: if(key & 0x80) {                            // capital letter/shift character?
	mov	a,r6
	jnb	acc.7,00128$
;	src/usb_composite.c:56: KBD_report[1] |= 0x02;                    // add left shift modifier
	mov	dptr,#(_KBD_report + 0x0001)
	movx	a,@dptr
	orl	a,#0x02
	mov	r7,a
	movx	@dptr,a
;	src/usb_composite.c:57: key &= 0x7F;                              // remove shift from key itself
	anl	ar6,#0x7f
;	src/usb_composite.c:62: for(i=3; i<8; i++) {
00128$:
	mov	r7,#0x03
00117$:
;	src/usb_composite.c:63: if(KBD_report[i] == key) return;            // return if already in report
	mov	a,r7
	add	a,#_KBD_report
	mov	dpl,a
	clr	a
	addc	a,#(_KBD_report >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	a,ar6,00118$
	ret
00118$:
;	src/usb_composite.c:62: for(i=3; i<8; i++) {
	inc	r7
	cjne	r7,#0x08,00179$
00179$:
	jc	00117$
;	src/usb_composite.c:67: for(i=3; i<8; i++) {
	mov	r7,#0x03
00119$:
;	src/usb_composite.c:68: if(KBD_report[i] == 0) {                    // empty slot?
	mov	a,r7
	add	a,#_KBD_report
	mov	r4,a
	clr	a
	addc	a,#(_KBD_report >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	jnz	00120$
;	src/usb_composite.c:69: KBD_report[i] = key;                      // insert key
	mov	dpl,r4
	mov	dph,r5
	mov	a,r6
	movx	@dptr,a
;	src/usb_composite.c:70: KBD_sendReport();                         // send report
	mov	_HID_sendReport_PARM_2,#0x08
	mov	dptr,#_KBD_report
;	src/usb_composite.c:71: return;                                   // and return
	ljmp	_HID_sendReport
00120$:
;	src/usb_composite.c:67: for(i=3; i<8; i++) {
	inc	r7
	cjne	r7,#0x08,00182$
00182$:
	jc	00119$
;	src/usb_composite.c:74: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'KBD_release'
;------------------------------------------------------------
;key                       Allocated to registers r6 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_composite.c:77: void KBD_release(uint8_t key) {
;	-----------------------------------------
;	 function KBD_release
;	-----------------------------------------
_KBD_release:
	mov	r7,dpl
;	src/usb_composite.c:81: if(key >= 136) key -= 136;                    // non-printing key/not a modifier?
	cjne	r7,#0x88,00154$
00154$:
	jc	00109$
	mov	ar6,r7
	mov	a,r6
	add	a,#0x78
	mov	r6,a
	sjmp	00123$
00109$:
;	src/usb_composite.c:82: else if(key >= 128) {                         // modifier key?
	cjne	r7,#0x80,00156$
00156$:
	jc	00106$
;	src/usb_composite.c:83: KBD_report[1] &= ~(1<<(key-128));           // delete modifier in report
	mov	dptr,#(_KBD_report + 0x0001)
	movx	a,@dptr
	mov	r5,a
	mov	ar4,r7
	mov	a,r4
	add	a,#0x80
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00160$
00158$:
	add	a,acc
00160$:
	djnz	b,00158$
	cpl	a
	mov	r4,a
	anl	ar5,a
	mov	dptr,#(_KBD_report + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	src/usb_composite.c:84: key = 0;
	mov	r6,#0x00
	sjmp	00123$
00106$:
;	src/usb_composite.c:87: key = KBD_map[key];                         // convert ascii to keycode for report
	mov	a,r7
	mov	dptr,#_KBD_map
	movc	a,@a+dptr
;	src/usb_composite.c:88: if(!key) return;                            // no valid key
	mov	r6,a
	jnz	00102$
	ret
00102$:
;	src/usb_composite.c:89: if(key & 0x80) {                            // capital letter/shift character?
	mov	a,r6
	jnb	acc.7,00123$
;	src/usb_composite.c:90: KBD_report[1] &= ~0x02;                   // remove shift modifier
	mov	dptr,#(_KBD_report + 0x0001)
	movx	a,@dptr
	anl	a,#0xfd
	mov	r7,a
	movx	@dptr,a
;	src/usb_composite.c:91: key &= 0x7F;                              // remove shift from key itself
	anl	ar6,#0x7f
;	src/usb_composite.c:96: for(i=3; i<8; i++) {
00123$:
	mov	r7,#0x03
00114$:
;	src/usb_composite.c:97: if(KBD_report[i] == key) KBD_report[i] = 0; // delete key in report
	mov	a,r7
	add	a,#_KBD_report
	mov	r4,a
	clr	a
	addc	a,#(_KBD_report >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	cjne	a,ar6,00115$
	mov	dpl,r4
	mov	dph,r5
	clr	a
	movx	@dptr,a
00115$:
;	src/usb_composite.c:96: for(i=3; i<8; i++) {
	inc	r7
	cjne	r7,#0x08,00165$
00165$:
	jc	00114$
;	src/usb_composite.c:99: KBD_sendReport();                             // send report
	mov	_HID_sendReport_PARM_2,#0x08
	mov	dptr,#_KBD_report
;	src/usb_composite.c:100: }
	ljmp	_HID_sendReport
;------------------------------------------------------------
;Allocation info for local variables in function 'KBD_type'
;------------------------------------------------------------
;key                       Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_composite.c:103: void KBD_type(uint8_t key) {
;	-----------------------------------------
;	 function KBD_type
;	-----------------------------------------
_KBD_type:
;	src/usb_composite.c:104: KBD_press(key);
	mov  r7,dpl
	push	ar7
	lcall	_KBD_press
	pop	ar7
;	src/usb_composite.c:105: KBD_release(key);
	mov	dpl,r7
;	src/usb_composite.c:106: }
	ljmp	_KBD_release
;------------------------------------------------------------
;Allocation info for local variables in function 'KBD_releaseAll'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_composite.c:109: void KBD_releaseAll(void) {
;	-----------------------------------------
;	 function KBD_releaseAll
;	-----------------------------------------
_KBD_releaseAll:
;	src/usb_composite.c:111: for(i=7; i; i--) KBD_report[i] = 0;           // delete all keys in report
	mov	r7,#0x07
00102$:
	mov	a,r7
	add	a,#_KBD_report
	mov	dpl,a
	clr	a
	addc	a,#(_KBD_report >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	djnz	r7,00102$
;	src/usb_composite.c:112: KBD_sendReport();                             // send report
	mov	_HID_sendReport_PARM_2,#0x08
	mov	dptr,#_KBD_report
;	src/usb_composite.c:113: }
	ljmp	_HID_sendReport
;------------------------------------------------------------
;Allocation info for local variables in function 'KBD_print'
;------------------------------------------------------------
;str                       Allocated to registers 
;------------------------------------------------------------
;	src/usb_composite.c:116: void KBD_print(char* str) {
;	-----------------------------------------
;	 function KBD_print
;	-----------------------------------------
_KBD_print:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/usb_composite.c:117: while(*str) KBD_type(*str++);
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_KBD_type
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	src/usb_composite.c:118: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CON_press'
;------------------------------------------------------------
;key                       Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_composite.c:125: void CON_press(uint8_t key) {
;	-----------------------------------------
;	 function CON_press
;	-----------------------------------------
_CON_press:
	mov	r7,dpl
;	src/usb_composite.c:126: CON_report[1] = key;
	mov	dptr,#(_CON_report + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	src/usb_composite.c:127: CON_sendReport();                             // send report
	mov	_HID_sendReport_PARM_2,#0x03
	mov	dptr,#_CON_report
;	src/usb_composite.c:128: }
	ljmp	_HID_sendReport
;------------------------------------------------------------
;Allocation info for local variables in function 'CON_release'
;------------------------------------------------------------
;	src/usb_composite.c:131: void CON_release(void) {
;	-----------------------------------------
;	 function CON_release
;	-----------------------------------------
_CON_release:
;	src/usb_composite.c:132: CON_report[1] = 0;
	mov	dptr,#(_CON_report + 0x0001)
	clr	a
	movx	@dptr,a
;	src/usb_composite.c:133: CON_sendReport();
	mov	_HID_sendReport_PARM_2,#0x03
	mov	dptr,#_CON_report
;	src/usb_composite.c:134: }
	ljmp	_HID_sendReport
;------------------------------------------------------------
;Allocation info for local variables in function 'CON_type'
;------------------------------------------------------------
;key                       Allocated to registers 
;------------------------------------------------------------
;	src/usb_composite.c:137: void CON_type(uint8_t key) {
;	-----------------------------------------
;	 function CON_type
;	-----------------------------------------
_CON_type:
;	src/usb_composite.c:138: CON_press(key);
	lcall	_CON_press
;	src/usb_composite.c:139: CON_release();
;	src/usb_composite.c:140: }
	ljmp	_CON_release
;------------------------------------------------------------
;Allocation info for local variables in function 'MOUSE_press'
;------------------------------------------------------------
;buttons                   Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_composite.c:147: void MOUSE_press(uint8_t buttons) {
;	-----------------------------------------
;	 function MOUSE_press
;	-----------------------------------------
_MOUSE_press:
	mov	r7,dpl
;	src/usb_composite.c:148: MOUSE_report[1] |= buttons;                   // press button(s)
	mov	dptr,#(_MOUSE_report + 0x0001)
	movx	a,@dptr
	orl	ar7,a
	mov	dptr,#(_MOUSE_report + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	src/usb_composite.c:149: MOUSE_sendReport();                           // send HID report
	mov	_HID_sendReport_PARM_2,#0x05
	mov	dptr,#_MOUSE_report
;	src/usb_composite.c:150: }
	ljmp	_HID_sendReport
;------------------------------------------------------------
;Allocation info for local variables in function 'MOUSE_release'
;------------------------------------------------------------
;buttons                   Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_composite.c:153: void MOUSE_release(uint8_t buttons) {
;	-----------------------------------------
;	 function MOUSE_release
;	-----------------------------------------
_MOUSE_release:
	mov	r7,dpl
;	src/usb_composite.c:154: MOUSE_report[1] &= ~buttons;                  // release button(s)
	mov	dptr,#(_MOUSE_report + 0x0001)
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cpl	a
	anl	ar6,a
	mov	dptr,#(_MOUSE_report + 0x0001)
	mov	a,r6
	movx	@dptr,a
;	src/usb_composite.c:155: MOUSE_sendReport();                           // send HID report
	mov	_HID_sendReport_PARM_2,#0x05
	mov	dptr,#_MOUSE_report
;	src/usb_composite.c:156: }
	ljmp	_HID_sendReport
;------------------------------------------------------------
;Allocation info for local variables in function 'MOUSE_move'
;------------------------------------------------------------
;yrel                      Allocated with name '_MOUSE_move_PARM_2'
;xrel                      Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_composite.c:159: void MOUSE_move(int8_t xrel, int8_t yrel) {
;	-----------------------------------------
;	 function MOUSE_move
;	-----------------------------------------
_MOUSE_move:
	mov	r7,dpl
;	src/usb_composite.c:160: MOUSE_report[2] = (uint8_t)xrel;              // set relative x-movement
	mov	dptr,#(_MOUSE_report + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	src/usb_composite.c:161: MOUSE_report[3] = (uint8_t)yrel;              // set relative y-movement
	mov	r7,_MOUSE_move_PARM_2
	mov	dptr,#(_MOUSE_report + 0x0003)
	mov	a,r7
	movx	@dptr,a
;	src/usb_composite.c:162: MOUSE_sendReport();                           // send HID report
	mov	_HID_sendReport_PARM_2,#0x05
	mov	dptr,#_MOUSE_report
	lcall	_HID_sendReport
;	src/usb_composite.c:163: MOUSE_report[2] = 0;                          // reset movements
	mov	dptr,#(_MOUSE_report + 0x0002)
	clr	a
	movx	@dptr,a
;	src/usb_composite.c:164: MOUSE_report[3] = 0;
	mov	dptr,#(_MOUSE_report + 0x0003)
	movx	@dptr,a
;	src/usb_composite.c:165: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MOUSE_wheel'
;------------------------------------------------------------
;rel                       Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_composite.c:168: void MOUSE_wheel(int8_t rel) {
;	-----------------------------------------
;	 function MOUSE_wheel
;	-----------------------------------------
_MOUSE_wheel:
	mov	r7,dpl
;	src/usb_composite.c:169: MOUSE_report[4] = (uint8_t)rel;               // set relative wheel movement
	mov	dptr,#(_MOUSE_report + 0x0004)
	mov	a,r7
	movx	@dptr,a
;	src/usb_composite.c:170: MOUSE_sendReport();                           // send HID report
	mov	_HID_sendReport_PARM_2,#0x05
	mov	dptr,#_MOUSE_report
	lcall	_HID_sendReport
;	src/usb_composite.c:171: MOUSE_report[4] = 0;                          // reset movements
	mov	dptr,#(_MOUSE_report + 0x0004)
	clr	a
	movx	@dptr,a
;	src/usb_composite.c:172: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'JOY_press'
;------------------------------------------------------------
;buttons                   Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_composite.c:179: void JOY_press(uint8_t buttons) {
;	-----------------------------------------
;	 function JOY_press
;	-----------------------------------------
_JOY_press:
	mov	r7,dpl
;	src/usb_composite.c:180: JOY_report[1] |= buttons;                     // press button(s)
	mov	dptr,#(_JOY_report + 0x0001)
	movx	a,@dptr
	orl	ar7,a
	mov	dptr,#(_JOY_report + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	src/usb_composite.c:181: JOY_sendReport();                             // send HID report
	mov	_HID_sendReport_PARM_2,#0x04
	mov	dptr,#_JOY_report
;	src/usb_composite.c:182: }
	ljmp	_HID_sendReport
;------------------------------------------------------------
;Allocation info for local variables in function 'JOY_release'
;------------------------------------------------------------
;buttons                   Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_composite.c:185: void JOY_release(uint8_t buttons) {
;	-----------------------------------------
;	 function JOY_release
;	-----------------------------------------
_JOY_release:
	mov	r7,dpl
;	src/usb_composite.c:186: JOY_report[1] &= ~buttons;                    // release button(s)
	mov	dptr,#(_JOY_report + 0x0001)
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cpl	a
	anl	ar6,a
	mov	dptr,#(_JOY_report + 0x0001)
	mov	a,r6
	movx	@dptr,a
;	src/usb_composite.c:187: JOY_sendReport();                             // send HID report
	mov	_HID_sendReport_PARM_2,#0x04
	mov	dptr,#_JOY_report
;	src/usb_composite.c:188: }
	ljmp	_HID_sendReport
;------------------------------------------------------------
;Allocation info for local variables in function 'JOY_move'
;------------------------------------------------------------
;yrel                      Allocated with name '_JOY_move_PARM_2'
;xrel                      Allocated to registers r7 
;------------------------------------------------------------
;	src/usb_composite.c:191: void JOY_move(int8_t xrel, int8_t yrel) {
;	-----------------------------------------
;	 function JOY_move
;	-----------------------------------------
_JOY_move:
	mov	r7,dpl
;	src/usb_composite.c:192: JOY_report[2] = (uint8_t)xrel;                // set x-movement
	mov	dptr,#(_JOY_report + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	src/usb_composite.c:193: JOY_report[3] = (uint8_t)yrel;                // set y-movement
	mov	r7,_JOY_move_PARM_2
	mov	dptr,#(_JOY_report + 0x0003)
	mov	a,r7
	movx	@dptr,a
;	src/usb_composite.c:194: JOY_sendReport();                             // send HID report
	mov	_HID_sendReport_PARM_2,#0x04
	mov	dptr,#_JOY_report
;	src/usb_composite.c:195: }
	ljmp	_HID_sendReport
	.area CSEG    (CODE)
	.area CONST   (CODE)
_KBD_map:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x9e	; 158
	.db #0xb4	; 180
	.db #0xa0	; 160
	.db #0xa1	; 161
	.db #0xa2	; 162
	.db #0xa4	; 164
	.db #0x34	; 52	'4'
	.db #0xa6	; 166
	.db #0xa7	; 167
	.db #0xa5	; 165
	.db #0xae	; 174
	.db #0x36	; 54	'6'
	.db #0x2d	; 45
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x27	; 39
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0xb3	; 179
	.db #0x33	; 51	'3'
	.db #0xb6	; 182
	.db #0x2e	; 46
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0x9f	; 159
	.db #0x84	; 132
	.db #0x85	; 133
	.db #0x86	; 134
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x8a	; 138
	.db #0x8b	; 139
	.db #0x8c	; 140
	.db #0x8d	; 141
	.db #0x8e	; 142
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x91	; 145
	.db #0x92	; 146
	.db #0x93	; 147
	.db #0x94	; 148
	.db #0x95	; 149
	.db #0x96	; 150
	.db #0x97	; 151
	.db #0x98	; 152
	.db #0x99	; 153
	.db #0x9a	; 154
	.db #0x9b	; 155
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x2f	; 47
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0xa3	; 163
	.db #0xad	; 173
	.db #0x35	; 53	'5'
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0xaf	; 175
	.db #0xb1	; 177
	.db #0xb0	; 176
	.db #0xb5	; 181
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
