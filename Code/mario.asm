;  ____                                    __  __                  _             ____                           
; / ___|   _   _   _ __     ___   _ __    |  \/  |   __ _   _ __  (_)   ___     | __ )   _ __    ___    ___     
; \___ \  | | | | | '_ \   / _ \ | '__|   | |\/| |  / _` | | '__| | |  / _ \    |  _ \  | '__|  / _ \  / __|    
;  ___) | | |_| | | |_) | |  __/ | |      | |  | | | (_| | | |    | | | (_) |   | |_) | | |    | (_) | \__ \  _ 
; |____/   \__,_| | .__/   \___| |_|      |_|  |_|  \__,_| |_|    |_|  \___/    |____/  |_|     \___/  |___/ (_)
;                 |_|                                                                                           

; Super Mario Song
; ----------------------------------------------------------------------------------------------------------------------

play_mario_song:
	lda	#9			; Load tempo
	sta	PSG_TEMPO

	; 1-2
	ldx	#<mario1		; Get LSB address
	ldy	#>mario1		; Get MSB address
	jsr	play_tune		; 

	; 3-6
	ldx	#<mario2		; Get LSB address
	ldy	#>mario2		; Get MSB address
	jsr	play_tune		; 
	; Repeat
	ldx	#<mario2		; Get LSB address
	ldy	#>mario2		; Get MSB address
	jsr	play_tune		; 
	
	; 7-14
	ldx	#<mario3		; Get LSB address
	ldy	#>mario3		; Get MSB address
	jsr	play_tune		; 
	; Repeat
	ldx	#<mario3		; Get LSB address
	ldy	#>mario3		; Get MSB address
	jsr	play_tune		; 

	; 15-22
	ldx	#<mario4		; Get LSB address
	ldy	#>mario4		; Get MSB address
	jsr	play_tune		; 

	; 23-26 (Same as 3-6)
	ldx	#<mario2		; Get LSB address
	ldy	#>mario2		; Get MSB address
	jsr	play_tune		; 
	; Repeat
	ldx	#<mario2		; Get LSB address
	ldy	#>mario2		; Get MSB address
	jsr	play_tune		; 

	; 27-34
	ldx	#<mario6		; Get LSB address
	ldy	#>mario6		; Get MSB address
	jsr	play_tune		; 
	; Repeat
	ldx	#<mario6		; Get LSB address
	ldy	#>mario6		; Get MSB address
	jsr	play_tune		; 

	; 35-42
	ldx	#<mario7		; Get LSB address
	ldy	#>mario7		; Get MSB address
	jsr	play_tune		; 

	; 43-50 (same as 27-34)
	ldx	#<mario6		; Get LSB address
	ldy	#>mario6		; Get MSB address
	jsr	play_tune		; 
	; Repeat
	ldx	#<mario6		; Get LSB address
	ldy	#>mario6		; Get MSB address
	jsr	play_tune		; 
	
	; 51-53
	ldx	#<mario9		; Get LSB address
	ldy	#>mario9		; Get MSB address
	jsr	play_tune		; 
	
	rts

; ----------------------------------------------------------------------------------------------------------------------

mario1:
	; 1:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 1:2
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 1:3
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 1:4
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 1:5
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 2:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE2 | B4),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | QUARTER)

	; 2:2
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE4 | G2),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | QUARTER)

	; EOT
	.word	$0000, $0000

; ----------------------------------------------------------------------------------------------------------------------

mario2:
	; 3:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 3:2
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE2 | C4),  (MID | NONE)
	.word	(VOICE4 | E3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 3:3
	.word	(VOICE1 | E4),  (MID | NONE)
	.word	(VOICE2 | G3),  (MID | NONE)
	.word	(VOICE4 | C3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)
	
	; 4:1 	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | C4),  (MID | NONE)
	.word	(VOICE4 | F3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 4:2
	.word	(VOICE1 | B4),  (MID | NONE)
	.word	(VOICE2 | D4),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 4:3
	.word	(VOICE1 | As4), (MID | NONE)
	.word	(VOICE2 | Cs4), (MID | NONE)
	.word	(VOICE4 | Fs3), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 4:4
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | C4),  (MID | NONE)
	.word	(VOICE4 | F3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 5:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE2 | C4),  (MID | NONE)
	.word	(VOICE4 | E3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 5:2
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | G4),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 5:3
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE2 | B4),  (MID | NONE)
	.word	(VOICE4 | E4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 5:4
	.word	(VOICE1 | A5),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | NONE)
	.word	(VOICE4 | F4),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 5:5
	.word	(VOICE1 | F5),  (MID | NONE)
	.word	(VOICE2 | A4),  (MID | NONE)
	.word	(VOICE4 | D4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 5:6
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE2 | B4),  (MID | NONE)
	.word	(VOICE4 | E4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 6:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | A4),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 6:2
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | A4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 6:3
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE2 | F4),  (MID | NONE)
	.word	(VOICE4 | B4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 6:4
	.word	(VOICE1 | B4),  (MID | NONE)
	.word	(VOICE2 | D4),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; EOT
	.word	$0000, $0000
	
; ----------------------------------------------------------------------------------------------------------------------

mario3:
	; 7:1	 Voice   Note    Vol   Dur
	.word	(VOICE4 | C3),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 7:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE2 | E5),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 7:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE2 | Ds5), (MID | NONE)
	.word	(VOICE4 | G3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 7:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | F5),  (MID | NONE)
	.word	(VOICE2 | D5),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 7:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | Ds5), (MID | NONE)
	.word	(VOICE2 | B4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 7:6	 Voice   Note    Vol   Dur
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 7:7	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 8:1	 Voice   Note    Vol   Dur
	.word	(VOICE4 | F3),  (MID | EIGHTH)

	; 8:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | Gs4), (MID | NONE)
	.word	(VOICE2 | E4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 8:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | F4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 8:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | G4),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 8:5	 Voice   Note    Vol   Dur
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 8:6	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | C4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 8:7	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | F3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 8:8	 Voice   Note    Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE2 | F4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 9:1	 Voice   Note    Vol   Dur
	.word	(VOICE4 | C3),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 9:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE2 | E5),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 9:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE2 | Ds5), (MID | NONE)
	.word	(VOICE4 | G3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 9:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | F5),  (MID | NONE)
	.word	(VOICE2 | D5),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 9:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | Ds5), (MID | NONE)
	.word	(VOICE2 | B4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 9:6	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G3),  (MID | EIGHTH)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 9:7	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 10:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C6),  (MID | NONE)
	.word	(VOICE2 | G5),  (MID | NONE)
	.word	(VOICE4 | F5),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 10:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C6),  (MID | NONE)
	.word	(VOICE2 | G5),  (MID | NONE)
	.word	(VOICE3 | F5),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)
	
	; 10:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C6),  (MID | NONE)
	.word	(VOICE2 | G5),  (MID | NONE)
	.word	(VOICE4 | F5),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 10:4	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 11:1	 Voice   Note    Vol   Dur
	.word	(VOICE4 | C3),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 11:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE2 | E5),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 11:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE2 | Ds5), (MID | NONE)
	.word	(VOICE4 | G3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 11:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | F5),  (MID | NONE)
	.word	(VOICE2 | D5),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 11:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | Ds5), (MID | NONE)
	.word	(VOICE2 | B4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 11:6	 Voice   Note    Vol   Dur
	.word	(VOICE4 | C4),  (MID | EIGHTH)

	; 11:7	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 12:1	 Voice   Note    Vol   Dur
	.word	(VOICE4 | F3),  (MID | EIGHTH)

	; 12:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | Gs4), (MID | NONE)
	.word	(VOICE2 | E4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 12:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | F4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 12:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | G4),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 12:5	 Voice   Note    Vol   Dur
	.word	(VOICE4 | C4),  (MID | EIGHTH)

	; 12:6	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | C4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 12:7	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | F3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 12:8	 Voice   Note    Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE2 | F4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 13:1	 Voice   Note    Vol   Dur
	.word	(VOICE4 | C3),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 13:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | Ds5), (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | NONE)
	.word	(VOICE4 | Gs3), (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)
	
	; 13:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE2 | F4),  (MID | NONE)
	.word	(VOICE4 | As3), (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)
	
	; 14:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)
	
	; 14:2	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G3),  (MID | EIGHTH)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 14:3	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 14:4	 Voice   Note    Vol   Dur
	.word	(VOICE4 | C3),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; EOT
	.word	$0000, $0000

; ----------------------------------------------------------------------------------------------------------------------
	
mario4:
	; 15:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | NONE)
	.word	(VOICE4 | Gs2), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 15:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | GS4), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)
	
	; 15:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | NONE)
	.word	(VOICE4 | Ds3), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)
	
	; 15:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 15:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE2 | As4), (MID | NONE)
	.word	(VOICE4 | Gs3), (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 16:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | G4),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 16:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)
	
	; 16:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | C3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 16:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE2 | C4),  (MID | QUARTER)
	
	; 16:5	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G2),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 17:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | NONE)
	.word	(VOICE4 | GS2), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 17:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 17:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | NONE)
	.word	(VOICE4 | Ds3), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 17:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 17:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE2 | As4),  (MID | NONE)
	.word	(VOICE4 | Gs4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 17:6	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | G4),  (MID | NONE)
	.word	(VOICE4 | Gs3), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 18:1 	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 18:2	 Voice   Note    Vol   Dur
	.word	(VOICE4 | C3),  (MID | EIGHTH)
	.word	(VOICE4 | XX),  (OFF | QUARTER)

	; 18:3	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G2),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 19:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | NONE)
	.word	(VOICE4 | Gs2), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 19:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)
	
	; 19:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | NONE)
	.word	(VOICE4 | Ds4), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)
	
	; 19:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 19:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE2 | As4), (MID | NONE)
	.word	(VOICE4 | Gs3), (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 20:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | G4),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 20:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)
	
	; 20:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | C3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 20:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE2 | C4),  (MID | QUARTER)
	
	; 20:5	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G2),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 21:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 21:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)
	
	; 21:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 21:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 21:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 22:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE2 | B4),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | QUARTER)

	; 22:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE4 | G2),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | QUARTER)

	; EOT
	.word	$0000, $0000
	
; ----------------------------------------------------------------------------------------------------------------------

mario6:
	; 27:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | NONE)
	.word	(VOICE4 | C3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 27:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | A4),  (MID | EIGHTH)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 27:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | A4),  (MID | EIGHTH)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 27:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | EIGHTH)
	
	; 27:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | Fs3), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 27:6	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 27:7	 Voice   Note    Vol   Dur
	.word	(VOICE1 | Gs4), (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 28:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | F4),  (MID | NONE)
	.word	(VOICE4 | F3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 28:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | F5),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | EIGHTH)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 28:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | F5),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 28:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | F4),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 28:5	 Voice   Note    Vol   Dur
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 28:6	 Voice   Note    Vol   Dur
	.word	(VOICE4 | F4),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 29:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | B4),  (MID | NONE)
	.word	(VOICE2 | G4),  (MID | NONE)
	.word	(VOICE4 | D3),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 29:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A5),  (MID | NONE)
	.word	(VOICE2 | F5),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 29:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A5),  (MID | NONE)
	.word	(VOICE2 | F5),  (MID | NONE)
	.word	(VOICE4 | F3),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 29:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | F5),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 29:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE2 | E5),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 29:6	 Voice   Note    Vol   Dur
	.word	(VOICE1 | F5),  (MID | NONE)
	.word	(VOICE2 | D5),  (MID | NONE)
	.word	(VOICE4 | B3),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 30:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | NONE)
	.word	(VOICE4 | F3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 30:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | A4),  (MID | EIGHTH)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 30:3	 Voice   Note    Vol   Dur
	.word	(VOICE4 | F3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	
	; 30:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | F4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 30:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 30:6	 Voice   Note    Vol   Dur
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 30:7	 Voice   Note    Vol   Dur
	.word	(VOICE4 | F3),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)
	
	; 31:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | NONE)
	.word	(VOICE4 | C3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 31:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | A4),  (MID | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)	
	
	; 31:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | EIGHTH)
	
	; 31:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | Fs3), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 31:5	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 31:6	 Voice   Note    Vol   Dur
	.word	(VOICE1 | Gs4), (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 32:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | F4),  (MID | NONE)
	.word	(VOICE4 | F3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 32:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | F5),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | EIGHTH)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 32:3	 Voice   Note    Vol   Dur
	.word	(VOICE4 | F3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)
	
	; 32:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | F5),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 32:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | F4),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 32:6	 Voice   Note    Vol   Dur
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 32:7	 Voice   Note    Vol   Dur
	.word	(VOICE4 | F3),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 33:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | B4),  (MID | NONE)
	.word	(VOICE2 | G4),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 33:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | F5),  (MID | NONE)
	.word	(VOICE2 | D5),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 33:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | F5),  (MID | NONE)
	.word	(VOICE2 | D5),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 33:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | F5),  (MID | NONE)
	.word	(VOICE2 | D5),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 33:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | NONE)
	.word	(VOICE4 | A3),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 33:6	 Voice   Note    Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE2 | B4),  (MID | NONE)
	.word	(VOICE4 | B3),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	
	
	; 34:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | G4),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 34:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E4),  (MID | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	

	; 34:3	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | PAUSE)

	; 34:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E4),  (MID | EIGHTH)
	.word	(VOICE4 | XX),  (OFF | PAUSE)	

	; 34:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C4),  (MID | NONE)
	.word	(VOICE4 | C3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | QUARTER)	

	; EOT
	.word	$0000, $0000

; ----------------------------------------------------------------------------------------------------------------------

mario7:
	; 35:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | NONE)
	.word	(VOICE4 | Gs2), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)

	; 35:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 35:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | NONE)
	.word	(VOICE4 | Ds3), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 35:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 35:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE2 | As4), (MID | NONE)
	.word	(VOICE4 | Gs3), (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 36:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | G4),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 36:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 36:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | C3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 36:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE2 | C4),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)

	; 36:5	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G2),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 37:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | NONE)
	.word	(VOICE4 | Gs2), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)

	; 37:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 37:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | NONE)
	.word	(VOICE4 | Ds3), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 37:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 37:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE2 | As4), (MID | NONE)
	.word	(VOICE4 | Gs3), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 37:6	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | G4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 38:1	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 38:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | PAUSE)

	; 38:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE4 | C3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 38:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E6),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | PAUSE)

	; 38:x	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C6),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | PAUSE)

	; 38:x	 Voice   Note    Vol   Dur
	.word	(VOICE1 | D6),  (MID | NONE)
	.word	(VOICE4 | G2),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | PAUSE)

	; 38:x	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G6),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 39:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | NONE)
	.word	(VOICE4 | Gs2), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)

	; 39:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 39:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | NONE)
	.word	(VOICE4 | Ds3), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 39:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Gs4), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 39:5	 Voice   Note    Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE2 | As4), (MID | NONE)
	.word	(VOICE4 | Gs3), (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 40:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | G4),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 40:2	 Voice   Note    Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 40:3	 Voice   Note    Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | C3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 40:4	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE2 | C4),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)

	; 40:5	 Voice   Note    Vol   Dur
	.word	(VOICE4 | G2),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 41:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 41:2	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 41:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 41:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 41:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE2 | Fs4), (MID | NONE)
	.word	(VOICE4 | D3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 42:1	 Voice   Note    Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE2 | B4),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | QUARTER)

	; 42:2	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE4 | G2),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | QUARTER)

	; EOT
	.word	$0000, $0000

; ----------------------------------------------------------------------------------------------------------------------

mario9:
	; 51:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | G3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 51:2	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE2 | C4),  (MID | NONE)
	.word	(VOICE4 | E3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | EIGHTH)

	; 51:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E4),  (MID | NONE)
	.word	(VOICE2 | G3),  (MID | NONE)
	.word	(VOICE4 | C3),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | PAUSE)

	; 52:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE2 | F4),  (MID | NONE)
	.word	(VOICE4 | C3),  (MID | NONE)
	.word	(VOICE5 | F2),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | PAUSE)
	
	; 52:2	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B4),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | PAUSE)

	; 52:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | A4),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | PAUSE)

	; 52:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Gs4), (MID | NONE)
	.word	(VOICE2 | F4),  (MID | NONE)
	.word	(VOICE4 | Gs2), (MID | NONE)
	.word	(VOICE5 | Cs2), (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | PAUSE)

	; 52:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | As4),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | PAUSE)

	; 52:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | A4),  (MID | SIXTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | PAUSE)

	; 53:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE2 | E4),  (MID | NONE)
	.word	(VOICE4 | G2),  (MID | NONE)
	.word	(VOICE5 | C2),  (MID | EIGHTH)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 53:2	 Voice    Note   Vol   Dur
	.word	(VOICE2 | D4),  (MID | EIGHTH)
	.word	(VOICE2 | XX),  (OFF | PAUSE)

	; 53:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E4),  (MID | HALF)
	.word	(VOICE1 | XX),  (OFF | EIGHTH)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | PAUSE)

	; EOT
	.word	$0000, $0000
