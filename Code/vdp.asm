; Video Display Processor (VDP) - TMS99x8A
VDP_VRAM		= $7720		; Video RAM
VDP_REG			= $7721		; Register

; CONSTANTS
VDP_WRITE_VRAM_BIT	= $40
VDP_REGISTER_BITS	= $80
VDP_NAME_TABLE 		= $1400
VDP_PATTERN_TABLE	= $0800

;              _                   _           _   _   
; __   __   __| |  _ __           (_)  _ __   (_) | |_ 
; \ \ / /  / _` | | '_ \          | | | '_ \  | | | __|
;  \ V /  | (_| | | |_) |         | | | | | | | | | |_ 
;   \_/    \__,_| | .__/   _____  |_| |_| |_| |_|  \__|
;                 |_|     |_____|                      

; Initialize the VDP (TMS9918A)
; -----------------------------
; INPUT:  n/a
; OUTPUT: n/a

vdp_init:
	jsr	vdp_reg_reset
	jsr	vdp_init_pattern_table
	jsr	vdp_clear_display
	stz	VDP_X_POS
	stz	VDP_Y_POS
	
	lda	#<vdpmsg		; Get LSB address of msg
	sta	TEMP
	lda	#>vdpmsg		; Get MSB address of msg
	sta	TEMP+1
	jsr	vdp_print_string	; Write message

	rts

vdpmsg:	.byte	"MH6502-4 @ 4MHz, BIOS v3.05             "
	.byte	"32K ROM, 30K RAM, 2K NVRAM + RTC        "
	.byte	"                                        "
	.byte	"Hello World!", 0

vdp_reg_reset:
	pha
	phx
	ldx	#0
vdp_reg_reset_loop:
	lda	vdp_register_inits, x
	sta	VDP_REG
	nop
	nop
	
	txa
	ora	#VDP_REGISTER_BITS
	sta	VDP_REG
	nop
	nop
	
	inx
	cpx	#8
	bne	vdp_reg_reset_loop
	plx
	pla
	rts

vdp_init_pattern_table:
	pha					; Save A
	lda	#<(VDP_PATTERN_TABLE)		; Load LSB of pattern table address
	sta	VDP_REG				; Save to VDP register
	nop
	nop
	
	lda	#(VDP_WRITE_VRAM_BIT | >VDP_PATTERN_TABLE) ; Load MSB of pattern table address
	sta	VDP_REG				; Save to VDB register
	nop
	nop
	
	lda	#<vdp_patterns			; Get pattern table address LSB
	sta	VDP_PATTERN_INIT		; Store LSB which will act as a pointer
	lda	#>vdp_patterns			; Get pattern table address MSB
	sta	VDP_PATTERN_INIT+1		; Store MSB which will act as a pointer
vdp_pattern_table_loop:
	lda	(VDP_PATTERN_INIT)		; Load a pattern stored in pattern table
	sta	VDP_VRAM			; Store it in VRAM
	nop
	nop
	
	lda	VDP_PATTERN_INIT		; Load pattern table LSB
	clc					; Clear carry
	adc	#1				; Increment address LSB
	sta	VDP_PATTERN_INIT		; Store new LSB address pointer
	lda	#0				; Clear A
	adc	VDP_PATTERN_INIT+1		; Increment address MSB if carry is set
	sta	VDP_PATTERN_INIT+1		; Store new MSB address pointer
	cmp	#>vdp_end_patterns		; Has the end of the (MSB) pattern table been reached?
	bne	vdp_pattern_table_loop		; No, then loop to next pattern
	lda	VDP_PATTERN_INIT		; Load LSB address pointer
	cmp	#<vdp_end_patterns		; Has the end of the (LSB) pattern table been reached?
	bne	vdp_pattern_table_loop		; No, then loop to next pattern
	pla					; Restore A
	rts					; End routine

;              _                                        _       _                     _   _                 _                 
; __   __   __| |  _ __           ___   _ __     __ _  | |__   | |   ___           __| | (_)  ___   _ __   | |   __ _   _   _ 
; \ \ / /  / _` | | '_ \         / _ \ | '_ \   / _` | | '_ \  | |  / _ \         / _` | | | / __| | '_ \  | |  / _` | | | | |
;  \ V /  | (_| | | |_) |       |  __/ | | | | | (_| | | |_) | | | |  __/        | (_| | | | \__ \ | |_) | | | | (_| | | |_| |
;   \_/    \__,_| | .__/  _____  \___| |_| |_|  \__,_| |_.__/  |_|  \___|  _____  \__,_| |_| |___/ | .__/  |_|  \__,_|  \__, |
;                 |_|    |_____|                                          |_____|                  |_|                  |___/ 
		 
; Enables display
; ---------------

vdp_enable_display:
	pha
	lda	vdp_reg_1			; Get register 1 values
	ora	#%01000000			; Enable display (bit 6 = 1)
	sta	VDP_REG				;
	nop
	nop
	
	lda	#(VDP_REGISTER_BITS | 1)	; Store to register 1
	sta	VDP_REG
	nop
	nop
	
	pla
	rts

;              _                     _   _                 _       _                     _   _                 _                 
; __   __   __| |  _ __           __| | (_)  ___    __ _  | |__   | |   ___           __| | (_)  ___   _ __   | |   __ _   _   _ 
; \ \ / /  / _` | | '_ \         / _` | | | / __|  / _` | | '_ \  | |  / _ \         / _` | | | / __| | '_ \  | |  / _` | | | | |
;  \ V /  | (_| | | |_) |       | (_| | | | \__ \ | (_| | | |_) | | | |  __/        | (_| | | | \__ \ | |_) | | | | (_| | | |_| |
;   \_/    \__,_| | .__/  _____  \__,_| |_| |___/  \__,_| |_.__/  |_|  \___|  _____  \__,_| |_| |___/ | .__/  |_|  \__,_|  \__, |
;                 |_|    |_____|                                             |_____|                  |_|                  |___/ 
		 
; Disables display
; ----------------

vdp_disable_display:
	pha
	lda	vdp_reg_1
	and	#%10111111			; Disable display (bit 6 = 0)
	sta	VDP_REG
	nop
	nop
	
	lda	#(VDP_REGISTER_BITS | 1)	; Store to register 1
	sta	VDP_REG
	nop
	nop
	
	pla
	rts

;              _                        _                                   _   _                 _                 
; __   __   __| |  _ __           ___  | |   ___    __ _   _ __          __| | (_)  ___   _ __   | |   __ _   _   _ 
; \ \ / /  / _` | | '_ \         / __| | |  / _ \  / _` | | '__|        / _` | | | / __| | '_ \  | |  / _` | | | | |
;  \ V /  | (_| | | |_) |       | (__  | | |  __/ | (_| | | |          | (_| | | | \__ \ | |_) | | | | (_| | | |_| |
;   \_/    \__,_| | .__/  _____  \___| |_|  \___|  \__,_| |_|    _____  \__,_| |_| |___/ | .__/  |_|  \__,_|  \__, |
;                 |_|    |_____|                                |_____|                  |_|                  |___/ 
		 
; Clear text mode display by writing all spaces in VRAM
; -----------------------------------------------------

vdp_clear_display:
	pha
	phx
	phy
	
	lda	#<VDP_NAME_TABLE
	sta	VDP_REG
	nop
	nop
	
	lda	#(VDP_WRITE_VRAM_BIT | >VDP_NAME_TABLE)
	sta	VDP_REG
	nop
	nop
	
	lda	#$20
	ldy	#24
vdp_clear_display_loop_Y:
	ldx	#40
vdp_clear_display_loop_X:

	sta	VDP_VRAM
	nop
	nop
	
	dex
	bne	vdp_clear_display_loop_X
	dey
	bne	vdp_clear_display_loop_Y
	
	ply
	plx
	pla
	rts


;              _                                 _           _                   _                    
; __   __   __| |  _ __           _ __    _ __  (_)  _ __   | |_           ___  | |__     __ _   _ __ 
; \ \ / /  / _` | | '_ \         | '_ \  | '__| | | | '_ \  | __|         / __| | '_ \   / _` | | '__|
;  \ V /  | (_| | | |_) |        | |_) | | |    | | | | | | | |_         | (__  | | | | | (_| | | |   
;   \_/    \__,_| | .__/  _____  | .__/  |_|    |_| |_| |_|  \__|  _____  \___| |_| |_|  \__,_| |_|   
;                 |_|    |_____| |_|                              |_____|                             

; Print a character on the VDP
; ----------------------------

vdp_print_char:
	sta	VDP_VRAM
	nop
	nop
	
	rts


;              _                                 _           _                   _            _                 
; __   __   __| |  _ __           _ __    _ __  (_)  _ __   | |_           ___  | |_   _ __  (_)  _ __     __ _ 
; \ \ / /  / _` | | '_ \         | '_ \  | '__| | | | '_ \  | __|         / __| | __| | '__| | | | '_ \   / _` |
;  \ V /  | (_| | | |_) |        | |_) | | |    | | | | | | | |_          \__ \ | |_  | |    | | | | | | | (_| |
;   \_/    \__,_| | .__/  _____  | .__/  |_|    |_| |_| |_|  \__|  _____  |___/  \__| |_|    |_| |_| |_|  \__, |
;                 |_|    |_____| |_|                              |_____|                                 |___/ 
		 
; Print a string on the VDP
; -------------------------

vdp_print_string:
	pha
	phy
	lda	#<VDP_NAME_TABLE
	sta	VDP_REG
	nop
	nop
	
	lda	#(VDP_WRITE_VRAM_BIT | >VDP_NAME_TABLE)
	sta	VDP_REG
	nop
	nop
	
	ldy	#0			;
vdp_print_string_loop:
	lda	(TEMP),y		;
	beq	vdp_print_string_end	;
	jsr	vdp_print_char		;
	iny
	bne	vdp_print_string_loop	;
vdp_print_string_end:
	ply
	pla
	rts

	
vdp_register_inits:
vdp_reg_0:	.byte	%00000000	; Bit1 = Mode 3 (Graphic Mode II), Bit0 = External video (External VDP plane)
vdp_reg_1:	.byte	%11010000	; Bit7 = 4K/16K, Bit6 = Display Blank, Bit5 = Interrupt Enable, Bit4 = Mode 1
					; Bit3 = Mode 2, Bit2 = Reserved, Bit1 = Sprite Size, Bit0 = Sprite Magnification
vdp_reg_2:	.byte	$05		; Start address of Name Table (reg2 * 0x400)
vdp_reg_3:	.byte	$80		; Start address of Color Table (reg3 * 0x40)
vdp_reg_4:	.byte	$01		; Start address of Pattern Table (reg4 * 0x800)
vdp_reg_5:	.byte	$20		; Start address of Sprite Attribute Table (reg5 * 0x80)
vdp_reg_6:	.byte	$00		; Start address of Sprite Pattern Table (reg6 * 0x800)
vdp_reg_7:	.byte	$F4		; Upper nibble is color of text in Text Mode, lower nibble is bg color in all modes
					; 0:  Transparent	8:  Medium red
					; 1:  Black		9:  Light red
					; 2:  Medium green	A:  Dark yellow
					; 3:  Light green	B:  Light yellow
					; 4:  Dark blue		C:  Dark green
					; 5:  Light blue	D:  Magenta
					; 6:  Dark red		E:  Grey
					; 7:  Cyan		F:  White
vdp_patterns:

	.byte	$00, $00, $00, $00, $00, $00, $00, $00	; (.)
	.byte	$00, $38, $40, $70, $40, $38, $00, $FE	; (.)
	.byte	$00, $20, $20, $20, $24, $18, $00, $FE	; (.)
	.byte	$00, $6C, $FE, $FE, $7C, $38, $10, $00	; (.)
	.byte	$10, $38, $7C, $FE, $7C, $38, $10, $00	; (.)
	.byte	$38, $38, $FE, $FE, $54, $10, $38, $00	; (.)
	.byte	$10, $38, $7C, $FE, $D6, $10, $38, $00	; (.)
	.byte	$00, $00, $18, $3C, $3C, $18, $00, $00	; (.)
	.byte	$FE, $FE, $C6, $82, $82, $C6, $FE, $FE	; (.)
	.byte	$00, $38, $44, $44, $44, $38, $00, $00	; (.)
	.byte	$FF, $C3, $99, $BD, $BD, $99, $C3, $FF	; (.)
	.byte	$00, $FC, $00, $FC, $00, $FC, $00, $00	; (.)
	.byte	$38, $44, $44, $38, $10, $7C, $10, $00	; (.)
	.byte	$3E, $22, $3E, $20, $20, $60, $E0, $C0	; (.)
	.byte	$3E, $22, $3E, $22, $22, $2E, $E4, $40	; (.)
	.byte	$00, $7C, $AA, $D6, $AA, $7C, $00, $00	; (.)
	.byte	$80, $E0, $F8, $FE, $F8, $E0, $80, $00	; (.)
	.byte	$02, $0E, $3E, $FE, $3E, $0E, $02, $00	; (.)
	.byte	$00, $44, $44, $00, $00, $10, $10, $00	; (.)
	.byte	$78, $48, $48, $48, $48, $48, $78, $00	; (.)
	.byte	$7E, $92, $92, $72, $12, $12, $12, $00	; (.)
	.byte	$1C, $22, $18, $24, $24, $18, $44, $38	; (.)
	.byte	$FE, $C2, $A2, $92, $8A, $86, $FE, $00	; (.)
	.byte	$FE, $82, $92, $AA, $92, $82, $FE, $00	; (.)
	.byte	$10, $38, $7C, $10, $10, $10, $10, $00	; (.)
	.byte	$10, $10, $10, $10, $7C, $38, $10, $00	; (.)
	.byte	$00, $10, $08, $FC, $08, $10, $00, $00	; (.)
	.byte	$00, $20, $40, $FC, $40, $20, $00, $00	; (.)
	.byte	$20, $20, $20, $20, $20, $20, $20, $3C	; (.)
	.byte	$00, $00, $44, $FE, $44, $00, $00, $00	; (.)
	.byte	$10, $28, $28, $44, $44, $82, $FE, $00	; (.)
	.byte	$FE, $82, $44, $44, $28, $28, $10, $00	; (.)
	.byte	$00, $00, $00, $00, $00, $00, $00, $00	; ( )
	.byte	$10, $38, $38, $10, $10, $00, $10, $00	; (!)
	.byte	$84, $84, $48, $00, $00, $00, $00, $00	; (")
	.byte	$48, $48, $FC, $48, $FC, $48, $48, $00	; (#)
	.byte	$10, $7E, $80, $7C, $02, $FC, $10, $00	; ($)
	.byte	$00, $84, $88, $10, $20, $44, $84, $00	; (%)
	.byte	$30, $48, $30, $64, $98, $98, $64, $00	; (&)
	.byte	$10, $10, $20, $00, $00, $00, $00, $00	; (')
	.byte	$08, $10, $20, $20, $20, $10, $08, $00	; (()
	.byte	$20, $10, $08, $08, $08, $10, $20, $00	; ())
	.byte	$00, $48, $30, $FC, $30, $48, $00, $00	; (*)
	.byte	$00, $10, $10, $FE, $10, $10, $00, $00	; (+)
	.byte	$00, $00, $00, $00, $00, $10, $10, $20	; (,)
	.byte	$00, $00, $00, $FC, $00, $00, $00, $00	; (-)
	.byte	$00, $00, $00, $00, $00, $10, $10, $00	; (.)
	.byte	$00, $04, $08, $10, $20, $40, $80, $00	; (/)
	.byte	$38, $44, $44, $54, $44, $44, $38, $00	; (0)
	.byte	$10, $70, $10, $10, $10, $10, $7C, $00	; (1)
	.byte	$78, $04, $08, $10, $20, $40, $7C, $00	; (2)
	.byte	$78, $04, $04, $38, $04, $04, $78, $00	; (3)
	.byte	$18, $28, $48, $48, $7C, $08, $1C, $00	; (4)
	.byte	$7C, $40, $78, $04, $04, $04, $78, $00	; (5)
	.byte	$38, $40, $40, $78, $44, $44, $38, $00	; (6)
	.byte	$7C, $04, $08, $10, $20, $20, $20, $00	; (7)
	.byte	$38, $44, $44, $38, $44, $44, $38, $00	; (8)
	.byte	$38, $44, $44, $3C, $04, $08, $30, $00	; (9)
	.byte	$00, $10, $10, $00, $00, $10, $10, $00	; (:)
	.byte	$00, $10, $10, $00, $00, $10, $10, $20	; (;)
	.byte	$08, $10, $20, $40, $20, $10, $08, $00	; (<)
	.byte	$00, $00, $FC, $00, $00, $FC, $00, $00	; (=)
	.byte	$20, $10, $08, $04, $08, $10, $20, $00	; (>)
	.byte	$38, $44, $04, $08, $10, $00, $10, $00	; (?)
	.byte	$38, $44, $5C, $54, $58, $40, $38, $00	; (@)
	.byte	$10, $28, $44, $44, $7C, $44, $44, $00	; (A)
	.byte	$78, $44, $44, $78, $44, $44, $78, $00	; (B)
	.byte	$18, $24, $40, $40, $40, $24, $18, $00	; (C)
	.byte	$70, $48, $44, $44, $44, $48, $70, $00	; (D)
	.byte	$7C, $40, $40, $78, $40, $40, $7C, $00	; (E)
	.byte	$7C, $40, $40, $78, $40, $40, $40, $00	; (F)
	.byte	$18, $24, $40, $40, $4C, $2C, $14, $00	; (G)
	.byte	$44, $44, $44, $7C, $44, $44, $44, $00	; (H)
	.byte	$38, $10, $10, $10, $10, $10, $38, $00	; (I)
	.byte	$08, $08, $08, $08, $08, $48, $30, $00	; (J)
	.byte	$44, $48, $50, $70, $48, $44, $44, $00	; (K)
	.byte	$40, $40, $40, $40, $40, $40, $7C, $00	; (L)
	.byte	$44, $6C, $54, $44, $44, $44, $44, $00	; (M)
	.byte	$44, $64, $64, $54, $4C, $4C, $44, $00	; (N)
	.byte	$38, $44, $44, $44, $44, $44, $38, $00	; (O)
	.byte	$78, $44, $44, $78, $40, $40, $40, $00	; (P)
	.byte	$38, $44, $44, $44, $54, $54, $38, $0C	; (Q)
	.byte	$78, $44, $44, $78, $48, $44, $44, $00	; (R)
	.byte	$38, $44, $40, $38, $04, $44, $38, $00	; (S)
	.byte	$7C, $10, $10, $10, $10, $10, $10, $00	; (T)
	.byte	$44, $44, $44, $44, $44, $44, $38, $00	; (U)
	.byte	$44, $44, $44, $44, $44, $28, $10, $00	; (V)
	.byte	$44, $44, $44, $44, $54, $54, $28, $00	; (W)
	.byte	$44, $44, $28, $10, $28, $44, $44, $00	; (X)
	.byte	$44, $44, $44, $38, $10, $10, $10, $00	; (Y)
	.byte	$7C, $04, $08, $10, $20, $40, $7C, $00	; (Z)
	.byte	$38, $20, $20, $20, $20, $20, $38, $00	; ([)
	.byte	$00, $80, $40, $20, $10, $08, $04, $00	; (\)
	.byte	$38, $08, $08, $08, $08, $08, $38, $00	; (])
	.byte	$00, $00, $30, $48, $84, $00, $00, $00	; (^)
	.byte	$00, $00, $00, $00, $00, $00, $00, $FC	; (_)
	.byte	$10, $10, $08, $00, $00, $00, $00, $00	; (`)
	.byte	$00, $00, $70, $08, $78, $48, $74, $00	; (a)
	.byte	$40, $40, $70, $48, $44, $44, $78, $00	; (b)
	.byte	$00, $00, $3C, $40, $40, $40, $3C, $00	; (c)
	.byte	$18, $08, $38, $48, $48, $48, $34, $00	; (d)
	.byte	$00, $00, $38, $44, $7C, $40, $3C, $00	; (e)
	.byte	$18, $24, $20, $78, $20, $20, $70, $00	; (f)
	.byte	$00, $00, $34, $48, $48, $38, $08, $70	; (g)
	.byte	$40, $40, $58, $64, $44, $44, $44, $00	; (h)
	.byte	$10, $00, $30, $10, $10, $10, $38, $00	; (i)
	.byte	$04, $00, $0C, $04, $04, $04, $44, $38	; (j)
	.byte	$40, $40, $44, $48, $70, $48, $44, $00	; (k)
	.byte	$30, $10, $10, $10, $10, $10, $38, $00	; (l)
	.byte	$00, $00, $68, $54, $54, $54, $54, $00	; (m)
	.byte	$00, $00, $78, $44, $44, $44, $44, $00	; (n)
	.byte	$00, $00, $38, $44, $44, $44, $38, $00	; (o)
	.byte	$00, $00, $78, $44, $44, $78, $40, $40	; (p)
	.byte	$00, $00, $38, $48, $48, $38, $08, $08	; (q)
	.byte	$00, $00, $58, $64, $40, $40, $40, $00	; (r)
	.byte	$00, $00, $38, $40, $38, $04, $78, $00	; (s)
	.byte	$20, $20, $70, $20, $20, $24, $18, $00	; (t)
	.byte	$00, $00, $48, $48, $48, $48, $34, $00	; (u)
	.byte	$00, $00, $44, $44, $44, $28, $10, $00	; (v)
	.byte	$00, $00, $44, $44, $44, $54, $28, $00	; (w)
	.byte	$00, $00, $44, $28, $10, $28, $44, $00	; (x)
	.byte	$00, $00, $44, $44, $44, $3C, $04, $78	; (y)
	.byte	$00, $00, $7C, $08, $10, $20, $7C, $00	; (z)
	.byte	$0C, $10, $10, $60, $10, $10, $0C, $00	; ({)
	.byte	$10, $10, $10, $10, $10, $10, $10, $10	; (|)
	.byte	$60, $10, $10, $0C, $10, $10, $60, $00	; (})
	.byte	$00, $00, $00, $64, $98, $00, $00, $00	; (~)
	.byte	$00, $00, $10, $28, $44, $44, $7C, $00	; (.)
	.byte	$38, $44, $80, $80, $44, $38, $04, $38	; (.)
	.byte	$88, $00, $88, $88, $88, $88, $74, $00	; (.)
	.byte	$10, $20, $78, $84, $FC, $80, $7C, $00	; (.)
	.byte	$70, $88, $70, $08, $78, $88, $74, $00	; (.)
	.byte	$84, $00, $70, $08, $78, $88, $74, $00	; (.)
	.byte	$20, $10, $70, $08, $78, $88, $74, $00	; (.)
	.byte	$30, $00, $70, $08, $78, $88, $74, $00	; (.)
	.byte	$00, $00, $3C, $40, $40, $3C, $08, $38	; (.)
	.byte	$78, $84, $78, $84, $FC, $80, $7C, $00	; (.)
	.byte	$84, $00, $78, $84, $FC, $80, $7C, $00	; (.)
	.byte	$20, $10, $78, $84, $FC, $80, $7C, $00	; (.)
	.byte	$44, $00, $30, $10, $10, $10, $38, $00	; (.)
	.byte	$38, $44, $30, $10, $10, $10, $38, $00	; (.)
	.byte	$20, $10, $30, $10, $10, $10, $38, $00	; (.)
	.byte	$84, $30, $48, $84, $FC, $84, $84, $00	; (.)
	.byte	$30, $00, $78, $84, $FC, $84, $84, $00	; (.)
	.byte	$FE, $82, $82, $82, $82, $82, $FE, $00	; (.)
	.byte	$FE, $92, $92, $82, $82, $82, $FE, $00	; (.)
	.byte	$FE, $92, $82, $FE, $82, $92, $FE, $00	; (.)
	.byte	$78, $84, $78, $84, $84, $84, $78, $00	; (.)
	.byte	$84, $00, $78, $84, $84, $84, $78, $00	; (.)
	.byte	$20, $10, $78, $84, $84, $84, $78, $00	; (.)
	.byte	$70, $88, $00, $88, $88, $88, $74, $00	; (.)
	.byte	$40, $20, $88, $88, $88, $88, $74, $00	; (.)
	.byte	$00, $7C, $10, $10, $10, $10, $00, $00	; (.)
	.byte	$84, $78, $84, $84, $84, $84, $78, $00	; (.)
	.byte	$84, $48, $84, $84, $84, $84, $78, $00	; (.)
	.byte	$10, $38, $44, $40, $44, $38, $10, $00	; (.)
	.byte	$30, $48, $40, $E0, $40, $E4, $98, $00	; (.)
	.byte	$00, $10, $10, $10, $10, $7C, $00, $00	; (.)
	.byte	$00, $20, $60, $FE, $60, $20, $00, $00	; (.)
	.byte	$00, $7C, $10, $10, $10, $7C, $00, $00	; (.)
	.byte	$10, $20, $70, $08, $78, $88, $74, $00	; (.)
	.byte	$08, $10, $30, $10, $10, $10, $38, $00	; (.)
	.byte	$10, $20, $78, $84, $84, $84, $78, $00	; (.)
	.byte	$10, $20, $88, $88, $88, $88, $74, $00	; (.)
	.byte	$32, $4C, $00, $78, $44, $44, $44, $00	; (.)
	.byte	$64, $98, $C4, $E4, $9C, $8C, $84, $00	; (.)
	.byte	$70, $08, $78, $88, $74, $00, $FC, $00	; (.)
	.byte	$78, $84, $84, $84, $78, $00, $FC, $00	; (.)
	.byte	$10, $00, $10, $20, $40, $44, $38, $00	; (.)
	.byte	$3C, $20, $20, $20, $20, $20, $20, $20	; (.)
	.byte	$00, $00, $00, $FC, $04, $04, $00, $00	; (.)
	.byte	$00, $08, $0C, $FE, $0C, $08, $00, $00	; (.)
	.byte	$00, $84, $84, $84, $84, $78, $00, $00	; (.)
	.byte	$10, $00, $10, $10, $38, $38, $10, $00	; (.)
	.byte	$00, $FE, $38, $54, $54, $38, $10, $00	; (.)
	.byte	$00, $10, $38, $54, $54, $38, $FE, $00	; (.)
	.byte	$22, $88, $22, $88, $22, $88, $22, $88	; (.)
	.byte	$55, $AA, $55, $AA, $55, $AA, $55, $AA	; (.)
	.byte	$EE, $BB, $EE, $BB, $EE, $BB, $EE, $BB	; (.)
	.byte	$10, $10, $10, $10, $10, $10, $10, $10	; (.)
	.byte	$10, $10, $10, $10, $F0, $10, $10, $10	; (.)
	.byte	$10, $10, $10, $F0, $10, $F0, $10, $10	; (.)
	.byte	$28, $28, $28, $28, $E8, $28, $28, $28	; (.)
	.byte	$00, $00, $00, $00, $F8, $28, $28, $28	; (.)
	.byte	$00, $00, $00, $F0, $10, $F0, $10, $10	; (.)
	.byte	$28, $28, $28, $E8, $08, $E8, $28, $28	; (.)
	.byte	$28, $28, $28, $28, $28, $28, $28, $28	; (.)
	.byte	$00, $00, $00, $F8, $08, $E8, $28, $28	; (.)
	.byte	$28, $28, $28, $E8, $08, $F8, $00, $00	; (.)
	.byte	$28, $28, $28, $28, $F8, $00, $00, $00	; (.)
	.byte	$10, $10, $10, $F0, $10, $F0, $00, $00	; (.)
	.byte	$00, $00, $00, $00, $F0, $10, $10, $10	; (.)
	.byte	$10, $10, $10, $10, $1F, $00, $00, $00	; (.)
	.byte	$10, $10, $10, $10, $FF, $00, $00, $00	; (.)
	.byte	$00, $00, $00, $00, $FF, $10, $10, $10	; (.)
	.byte	$10, $10, $10, $10, $1F, $10, $10, $10	; (.)
	.byte	$00, $00, $00, $00, $FF, $00, $00, $00	; (.)
	.byte	$10, $10, $10, $10, $FF, $10, $10, $10	; (.)
	.byte	$10, $10, $10, $1F, $10, $1F, $10, $10	; (.)
	.byte	$28, $28, $28, $28, $2F, $28, $28, $28	; (.)
	.byte	$28, $28, $28, $2F, $20, $3F, $00, $00	; (.)
	.byte	$00, $00, $00, $3F, $20, $2F, $28, $28	; (.)
	.byte	$28, $28, $28, $EF, $00, $FF, $00, $00	; (.)
	.byte	$00, $00, $00, $FF, $00, $EF, $28, $28	; (.)
	.byte	$28, $28, $28, $2F, $20, $2F, $28, $28	; (.)
	.byte	$00, $00, $00, $FF, $00, $FF, $00, $00	; (.)
	.byte	$28, $28, $28, $EF, $00, $EF, $28, $28	; (.)
	.byte	$10, $10, $10, $FF, $00, $FF, $00, $00	; (.)
	.byte	$28, $28, $28, $28, $FF, $00, $00, $00	; (.)
	.byte	$00, $00, $00, $FF, $00, $FF, $10, $10	; (.)
	.byte	$00, $00, $00, $00, $FF, $28, $28, $28	; (.)
	.byte	$28, $28, $28, $28, $3F, $00, $00, $00	; (.)
	.byte	$10, $10, $10, $1F, $10, $1F, $00, $00	; (.)
	.byte	$00, $00, $00, $1F, $10, $1F, $10, $10	; (.)
	.byte	$00, $00, $00, $00, $3F, $28, $28, $28	; (.)
	.byte	$28, $28, $28, $28, $FF, $28, $28, $28	; (.)
	.byte	$10, $10, $10, $FF, $10, $FF, $10, $10	; (.)
	.byte	$10, $10, $10, $10, $F0, $00, $00, $00	; (.)
	.byte	$00, $00, $00, $00, $1F, $10, $10, $10	; (.)
	.byte	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF	; (.)
	.byte	$00, $00, $00, $00, $FF, $FF, $FF, $FF	; (.)
	.byte	$F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0	; (.)
	.byte	$0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F	; (.)
	.byte	$FF, $FF, $FF, $FF, $00, $00, $00, $00	; (.)
	.byte	$00, $00, $72, $8C, $8C, $72, $00, $00	; (.)
	.byte	$38, $44, $44, $78, $44, $64, $D8, $00	; (.)
	.byte	$00, $7C, $80, $80, $80, $7C, $00, $00	; (.)
	.byte	$00, $F8, $04, $04, $04, $F8, $00, $00	; (.)
	.byte	$00, $78, $84, $CC, $B4, $84, $84, $00	; (.)
	.byte	$64, $98, $00, $30, $48, $84, $00, $00	; (.)
	.byte	$00, $1C, $22, $22, $32, $2C, $A0, $40	; (.)
	.byte	$64, $98, $00, $84, $48, $30, $00, $00	; (.)
	.byte	$10, $7C, $92, $92, $92, $7C, $10, $00	; (.)
	.byte	$00, $7C, $82, $FE, $82, $7C, $00, $00	; (.)
	.byte	$00, $7C, $82, $82, $82, $7C, $00, $00	; (.)
	.byte	$00, $00, $84, $48, $30, $00, $00, $00	; (.)
	.byte	$00, $20, $20, $20, $24, $18, $00, $00	; (.)
	.byte	$80, $7C, $A2, $92, $8A, $7C, $02, $00	; (.)
	.byte	$00, $38, $40, $70, $40, $38, $00, $00	; (.)
	.byte	$00, $78, $84, $84, $84, $84, $00, $00	; (.)
	.byte	$02, $04, $08, $FE, $20, $40, $80, $00	; (.)
	.byte	$80, $40, $20, $FE, $08, $04, $02, $00	; (.)
	.byte	$20, $10, $08, $10, $20, $00, $78, $00	; (.)
	.byte	$08, $10, $20, $10, $08, $00, $3C, $00	; (.)
	.byte	$02, $04, $FC, $10, $20, $FC, $40, $80	; (.)
	.byte	$00, $00, $48, $30, $30, $48, $00, $00	; (.)
	.byte	$10, $10, $00, $FE, $00, $10, $10, $00	; (.)
	.byte	$30, $30, $48, $48, $84, $FC, $00, $FC	; (.)
	.byte	$00, $30, $48, $48, $30, $00, $00, $00	; (.)
	.byte	$00, $48, $84, $B4, $B4, $48, $00, $00	; (.)
	.byte	$FE, $82, $64, $D6, $AC, $28, $10, $00	; (.)
	.byte	$10, $38, $38, $54, $54, $92, $FE, $10	; (.)
	.byte	$10, $FE, $92, $54, $54, $38, $38, $10	; (.)
	.byte	$00, $FC, $00, $00, $00, $00, $00, $00	; (.)
	.byte	$00, $84, $84, $00, $00, $00, $00, $00	; (.)
	.byte	$00, $00, $00, $10, $08, $00, $00, $00	; (.)

vdp_end_patterns:
	.byte $00
		