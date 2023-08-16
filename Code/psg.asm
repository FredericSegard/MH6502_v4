; PSG declarations
PSG1_ADDR	=	$7723		; Writing to this address will latch the address of the register
PSG1_WRITE	=	$7722		; Writing to this address will write to the addressed register
PSG1_READ	=	$7723		; Reading to this address will read the addressed register

PSG2_ADDR	=	$7725		; Writing to this address will latch the address of the register
PSG2_WRITE	=	$7724		; Writing to this address will write to the addressed register
PSG2_READ	=	$7725		; Reading to this address will read the addressed register

PSG3_ADDR	=	$7727		; Writing to this address will latch the address of the register
PSG3_WRITE	=	$7726		; Writing to this address will write to the addressed register
PSG3_READ	=	$7727		; Reading to this address will read the addressed register

PSG4_ADDR	=	$7729		; Writing to this address will latch the address of the register
PSG4_WRITE	=	$7728		; Writing to this address will write to the addressed register
PSG4_READ	=	$7729		; Reading to this address will read the addressed register

; PSG REGISTER ARRAY
TONE_A_fine	=	0		; 8-bit fine tune A
TONE_A_coarse	=	1		; 4-bit coarse tune A
TONE_B_fine	=	2		; 8-bit fine tune B
TONE_B_coarse	=	3		; 4-bit coarse tune B
TONE_C_fine	=	4		; 8-bit fine tune C
TONE_C_coarse	=	5		; 4-bit coarse tune C
NOISE		=	6		; 5-bit control
ENABLE		=	7		; IOB, IOA, /NoiseC, /NoiseB, /NoiseC, /ToneC, /ToneB, /ToneA
AMPL_A		=	8		; M, L3, L2, L1, L0
AMPL_B		=	9		; M, L3, L2, L1, L0
AMPL_C		=	10		; M, L3, L2, L1, L0
ENV_fine	=	11		; 8-bit fine tune enveloppe
ENV_coarse	=	12		; 8-bit coarse tune enveloppe
ENV_SHAPE_CYCLE	=	13		; CONT, ATT, ALT, HOLD
IO_PORTA	=	14		; 8-bit parallel I/O port A
IO_PORTB	=	15		; 8-bit parallel I/O port B

; Tempered Chromatic Scale (f clock = 1.78977MHz)
; 12-bit (converted from octal chart to hex)
; MSB = Coarse, LSB = Fine

XX	=	$0FFF			; Don't care
C1	=	$0D5D
Cs1	=	$0C9C
Db1	=	$0C9C
D1	=	$0BE7
Ds1	=	$0B3C
Eb1	=	$0B3C
E1	=	$0A9B
F1	=	$0A02
Fs1	=	$0973
Gb1	=	$0973
G1	=	$08EB
Gs1	=	$086B
Ab1	=	$086B
A1	=	$07F2
As1	=	$0780
Bb1	=	$0780
B1	=	$0714
C2	=	$06AE
Cs2	=	$064E
Db2	=	$064E
D2	=	$05F4
Ds2	=	$059E
Eb2	=	$059E
E2	=	$054D
F2	=	$0501
Fs2	=	$04B9
Gb2	=	$04B9
G2	=	$0475
Gs2	=	$0435
Ab2	=	$0435
A2	=	$03F9
As2	=	$03C0
Bb2	=	$03C0
B2	=	$038A
C3	=	$0357
Cs3	=	$0327
Db3	=	$0327
D3	=	$02FA
Ds3	=	$02CF
Eb3	=	$02CF
E3	=	$02A7
F3	=	$0281
Fs3	=	$025D
Gb3	=	$025D
G3	=	$023B
Gs3	=	$021B
Ab3	=	$021B
A3	=	$01FC
As3	=	$01E0
Bb3	=	$01E0
B3	=	$01C5
C4	=	$01AC
Cs4	=	$0194
Db4	=	$0194
D4	=	$017D
Ds4	=	$0168
Eb4	=	$0168
E4	=	$0153
F4	=	$0140
Fs4	=	$012E
Gb4	=	$012E
G4	=	$011D
Gs4	=	$010D
Ab4	=	$010D
A4	=	$00FE
As4	=	$00F0
Bb4	=	$00F0
B4	=	$00E2
C5	=	$00D6
Cs5	=	$00CA
Db5	=	$00CA
D5	=	$00BE
Ds5	=	$00B4
Eb5	=	$00B4
E5	=	$00AA
F5	=	$00A0
Fs5	=	$0097
Gb5	=	$0097
G5	=	$008F
Gs5	=	$0087
Ab5	=	$0087
A5	=	$007F
As5	=	$0078
Bb5	=	$0078
B5	=	$0071
C6	=	$006B
Cs6	=	$0065
Db6	=	$0065
D6	=	$005F
Ds6	=	$005A
Eb6	=	$005A
E6	=	$0055
F6	=	$0052
Fs6	=	$004C
Gb6	=	$004C
G6	=	$0047
Gs6	=	$0043
Ab6	=	$0043
A6	=	$0040
As6	=	$003C
Bb6	=	$003C
B6	=	$0039
C7	=	$0035
Cs7	=	$0032
Db7	=	$0032
D7	=	$0030
Ds7	=	$002D
Eb7	=	$002D
E7	=	$002A
F7	=	$0028
Fs7	=	$0026
Gb7	=	$0026
G7	=	$0024
Gs7	=	$0022
Ab7	=	$0022
A7	=	$0020
As7	=	$001E
Bb7	=	$001E
B7	=	$001C
C8	=	$001B
Cs8	=	$0019
Db8	=	$0019
D8	=	$0018
Ds8	=	$0016
Eb8	=	$0016
E8	=	$0015
F8	=	$0014
Fs8	=	$0013
Gb8	=	$0013
G8	=	$0012
Gs8	=	$0011
Ab8	=	$0011
A8	=	$0010
As8	=	$000F
Bb8	=	$000F
B8	=	$000E

; VOICE NUMBERS (LSB nibble is dropped at import)
EOT	=	$0000
VOICE1	=	$1000
VOICE2	=	$2000
VOICE3	=	$3000
VOICE4	=	$4000
VOICE5	=	$5000
VOICE6	=	$6000
VOICE7	=	$7000
VOICE8	=	$8000
VOICE9	=	$9000
VOICE10	=	$A000
VOICE11	=	$B000
VOICE12	=	$C000
NOISE1	=	$D000
NOISE2	=	$E000
NOISE3	=	$F000

; COMMON AMPLITUDE LEVELS
OFF	=	$0000
LOW	=	$0300
MID	=	$0700
HIGH	=	$0B00
FULL	=	$0F00

; NOTE AND REST DURATION (LSB byte is dropped at import)
WHOLE	=	$0080
HALF	=	$0040
QUARTER	=	$0020
SIXTH	=	$0018
EIGHTH	=	$0010
TWELTH	=	$000C
SIXTEENTH =	$0008
THIRTIETH =	$0004
SIXTIETH =	$0002
PAUSE	=	$0002
NONE	=	$0000


;                                _           _   _   
;  _ __    ___    __ _          (_)  _ __   (_) | |_ 
; | '_ \  / __|  / _` |         | | | '_ \  | | | __|
; | |_) | \__ \ | (_| |         | | | | | | | | | |_ 
; | .__/  |___/  \__, |  _____  |_| |_| |_| |_|  \__|
; |_|            |___/  |_____|                      

; ----------------------------------------------------------------------------------------------------------------------

psg_init:
	; INITIALIZE REGISTERS
	
	lda	#ENABLE			; Mixer Control - I/O Enable (R7 octal)
	sta	PSG1_ADDR
	sta	PSG2_ADDR
	sta	PSG3_ADDR
	sta	PSG4_ADDR
	lda	#$38			; Disable noise and enable tone on all channels
	sta	PSG1_WRITE
	sta	PSG2_WRITE
	sta	PSG3_WRITE
	sta	PSG4_WRITE
	
	lda	#AMPL_A			; Amplitude Control (R10 octal)
	sta	PSG1_ADDR
	sta	PSG2_ADDR
	sta	PSG3_ADDR
	sta	PSG4_ADDR
	lda	#OFF			; xxx1000 - Amplitude "mode"
	sta	PSG1_WRITE
	sta	PSG2_WRITE
	sta	PSG3_WRITE
	sta	PSG4_WRITE
	
	lda	#AMPL_B			; Amplitude Control (R11 octal)
	sta	PSG1_ADDR
	sta	PSG2_ADDR
	sta	PSG3_ADDR
	sta	PSG4_ADDR
	lda	#OFF			; xxx1000 - Amplitude "mode"
	sta	PSG1_WRITE
	sta	PSG2_WRITE
	sta	PSG3_WRITE
	sta	PSG4_WRITE
	
	lda	#AMPL_C			; Amplitude Control (R12 octal)
	sta	PSG1_ADDR
	sta	PSG2_ADDR
	sta	PSG3_ADDR
	sta	PSG4_ADDR
	lda	#OFF			; xxx1000 - Amplitude "mode"
	sta	PSG1_WRITE
	sta	PSG2_WRITE
	sta	PSG3_WRITE
	sta	PSG4_WRITE

	rts
	

;          _                 
;  _ __   | |   __ _   _   _ 
; | '_ \  | |  / _` | | | | |
; | |_) | | | | (_| | | |_| |
; | .__/  |_|  \__,_|  \__, |
; |_|                  |___/ 

; ----------------------------------------------------------------------------------------------------------------------

play:
	lda	IN_BUFFER,y		; Read a character from the input buffer
	beq	play_default		; End of buffer (0)? Then play default song
	cmp	#' '			; Is it the space delimiter?
	beq	play_song		; Yes it is. Then check which song
	jmp	syntax_error		; If anything else, print a syntax error, and end routine

play_song:
	jsr	skip_spaces		; Skip any leading spaces
	lda	IN_BUFFER, y		; Read a character from the input buffer
	beq	play_default		; End of buffer? Then play default song

play_song_1:
	cmp	#'1'
	bne	play_song_2
	jmp	play_mario_song

play_song_2:
	cmp	#'2'
	bne	play_help
	jmp	play_monkey_island_song
	
play_help:
	cmp	#'?'			; Is help requested?
	bne	play_invalid		; No, then get address
	printString help_play		; *MACRO*
	rts

play_invalid:
	jmp	invalid_parameter
	
play_default:				; If no parameter is indicated, play boot theme
	jmp	play_boot_tune



;          _                                           _          
;  _ __   | |   __ _   _   _           _ __     ___   | |_    ___ 
; | '_ \  | |  / _` | | | | |         | '_ \   / _ \  | __|  / _ \
; | |_) | | | | (_| | | |_| |         | | | | | (_) | | |_  |  __/
; | .__/  |_|  \__,_|  \__, |  _____  |_| |_|  \___/   \__|  \___|
; |_|                  |___/  |_____|                             
 
; ----------------------------------------------------------------------------------------------------------------------

play_note:
	pha
		
	lda	PSG_VOICE		; Load voice number from current record

play_note_voice_1:
	cmp	#>VOICE1		; Is it voice 1?
	bne	play_note_voice_2	; No, check if it's voice 2
	
	lda	#TONE_A_fine		; Tone Generator Control - Fine
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG1_WRITE		; Store fine tone value

	lda	#TONE_A_coarse		; Tone Generator Control - Fine
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG1_WRITE		; Store fine tone value
	
	lda	#AMPL_A			; Amplitude control register
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG1_WRITE		; Store fine tone value

	jmp	play_note_duration	; Set duration

play_note_voice_2:
	cmp	#>VOICE2		; Is it voice 2?
	bne	play_note_voice_3	; No, check if it's voice 3
	
	lda	#TONE_B_fine		; Tone Generator Control - Fine
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG1_WRITE		; Store fine tone value

	lda	#TONE_B_coarse		; Tone Generator Control - Fine
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG1_WRITE		; Store fine tone value
	
	lda	#AMPL_B			; Amplitude control register
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG1_WRITE		; Store fine tone value

	jmp	play_note_duration	; Set duration

play_note_voice_3:
	cmp	#>VOICE3		; Is it voice 3?
	bne	play_note_voice_4	; No, check if it's voice 4
	
	lda	#TONE_C_fine		; Tone Generator Control - Fine
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG1_WRITE		; Store fine tone value

	lda	#TONE_C_coarse		; Tone Generator Control - Fine
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG1_WRITE		; Store fine tone value
	
	lda	#AMPL_C			; Amplitude control register
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG1_WRITE		; Store fine tone value

	jmp	play_note_duration	; Set duration

play_note_voice_4:
	cmp	#>VOICE4		; Is it voice 4?
	bne	play_note_voice_5	; No, check if it's voice 5
	
	lda	#TONE_A_fine		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value

	lda	#TONE_A_coarse		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value
	
	lda	#AMPL_A			; Amplitude control register
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG2_WRITE		; Store fine tone value

	jmp	play_note_duration	; Set duration

play_note_voice_5:
	cmp	#>VOICE5		; Is it voice 5?
	bne	play_note_voice_6	; No, check if it's voice 6
	
	lda	#TONE_B_fine		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value

	lda	#TONE_B_coarse		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value
	
	lda	#AMPL_B			; Amplitude control register
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG2_WRITE		; Store fine tone value

	jmp	play_note_duration	; Set duration

play_note_voice_6:
	cmp	#>VOICE6		; Is it voice 6?
	bne	play_note_voice_7	; No, check if it's voice 7
	
	lda	#TONE_C_fine		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value

	lda	#TONE_C_coarse		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value
	
	lda	#AMPL_C			; Amplitude control register
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG2_WRITE		; Store fine tone value

	jmp	play_note_duration	; Set duration

play_note_voice_7:
	cmp	#>VOICE7		; Is it voice 7?
	bne	play_note_voice_8	; No, check if it's voice 8
	
	lda	#TONE_A_fine		; Tone Generator Control - Fine
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG3_WRITE		; Store fine tone value

	lda	#TONE_A_coarse		; Tone Generator Control - Fine
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG3_WRITE		; Store fine tone value
	
	lda	#AMPL_A			; Amplitude control register
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG3_WRITE		; Store fine tone value

	jmp	play_note_duration	; Set duration

play_note_voice_8:
	cmp	#>VOICE8		; Is it voice 8?
	bne	play_note_voice_9	; No, check if it's voice 9
	
	lda	#TONE_B_fine		; Tone Generator Control - Fine
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG3_WRITE		; Store fine tone value

	lda	#TONE_B_coarse		; Tone Generator Control - Fine
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG3_WRITE		; Store fine tone value
	
	lda	#AMPL_B			; Amplitude control register
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG3_WRITE		; Store fine tone value

	jmp	play_note_duration	; Set duration

play_note_voice_9:
	cmp	#>VOICE9		; Is it voice 9?
	bne	play_note_voice_10	; No, check if it's voice 10
	
	lda	#TONE_C_fine		; Tone Generator Control - Fine
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG3_WRITE		; Store fine tone value

	lda	#TONE_C_coarse		; Tone Generator Control - Fine
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG3_WRITE		; Store fine tone value
	
	lda	#AMPL_C			; Amplitude control register
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG3_WRITE		; Store fine tone value

	jmp	play_note_duration	; Set duration

play_note_voice_10:
	cmp	#>VOICE10		; Is it voice 10?
	bne	play_note_voice_11	; No, check if it's voice 11
	
	lda	#TONE_A_fine		; Tone Generator Control - Fine
	sta	PSG4_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG4_WRITE		; Store fine tone value

	lda	#TONE_A_coarse		; Tone Generator Control - Fine
	sta	PSG4_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG4_WRITE		; Store fine tone value
	
	lda	#AMPL_A			; Amplitude control register
	sta	PSG4_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG4_WRITE		; Store fine tone value

	jmp	play_note_duration	; Set duration

play_note_voice_11:
	cmp	#>VOICE11		; Is it voice 11?
	bne	play_note_voice_12	; No, check if it's voice 12
	
	lda	#TONE_B_fine		; Tone Generator Control - Fine
	sta	PSG4_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG4_WRITE		; Store fine tone value

	lda	#TONE_B_coarse		; Tone Generator Control - Fine
	sta	PSG4_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG4_WRITE		; Store fine tone value
	
	lda	#AMPL_B			; Amplitude control register
	sta	PSG4_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG4_WRITE		; Store fine tone value

	jmp	play_note_duration	; Set duration

play_note_voice_12:
	cmp	#>VOICE12		; Is it voice 12?
	bne	play_note_noise_1	; No, check if it's noise1
	
	lda	#TONE_C_fine		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value

	lda	#TONE_C_coarse		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value
	
	lda	#AMPL_C			; Amplitude control register
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG2_WRITE		; Store fine tone value

	jmp	play_note_duration	; Set duration

play_note_noise_1:
	cmp	#>NOISE1		; Is it noise 1?
	bne	play_note_noise_2	; No, check if it's noise2
	jmp	play_note_end

play_note_noise_2:
	cmp	#>NOISE2		; Is it noise 1?
	bne	play_note_noise_3	; No, check if it's noise3
	jmp	play_note_end

play_note_noise_3:
	cmp	#>NOISE3		; Is it noise 1?
	bne	play_note_no_channel	; No, end routine
	jmp	play_note_end

play_note_no_channel:
	bra	play_note_end

play_note_duration:
	lda	PSG_DURATION		; Load duration value
	beq	play_note_end
	
play_note_duration_loop:
	jsr	play_delay
	dec
	bne	play_note_duration_loop

play_note_end:	
	pla
	rts


;          _                           _                          
;  _ __   | |   __ _   _   _          | |_   _   _   _ __     ___ 
; | '_ \  | |  / _` | | | | |         | __| | | | | | '_ \   / _ \
; | |_) | | | | (_| | | |_| |         | |_  | |_| | | | | | |  __/
; | .__/  |_|  \__,_|  \__, |  _____   \__|  \__,_| |_| |_|  \___|
; |_|                  |___/  |_____|                             
 
; ----------------------------------------------------------------------------------------------------------------------

play_tune:
	stx	PSG_TABLE		; Save table pointer (LSB)
	sty	PSG_TABLE+1		; Save table pointer (MSB)

play_tune_load_data:
	; CHECK IF ESC has been pressed
	jsr	read_char
	cmp	#ESC			; Has ESCAPE key been pressed?
	bne	play_tune_fine		; Go check for record marker
	printString playaborted		; *MACRO*
	rts				; Exit

play_tune_fine:
	; FINE NOTE
	lda	(PSG_TABLE)		; Load fine portion of note data
	sta	PSG_NOTE_FINE		; Save fine portion of note data
	jsr	inc_table		; Increment table pointer

	; COARSE NOTE
	lda	(PSG_TABLE)		; Reload merged voice and coarse note data
	and	#$0F			; Filter out voice data to only keep coarse note data
	sta	PSG_NOTE_COARSE		; Sage coarse portion of note data
	
	; VOICE
	lda	(PSG_TABLE)		; Load merged voice and coarse note data
	and	#$F0			; Filter out note data to only keep voice number
	sta	PSG_VOICE		; Save voice number
	jsr	inc_table		; Increment table pointer

	; DURATION
	lda	(PSG_TABLE)		; Load merged voice and coarse note data
	sta	PSG_DURATION		; Save voice number
	jsr	inc_table		; Increment table pointer

	; VOLUME
	lda	(PSG_TABLE)		; Load merged (future nibble data) and volume data
	and	#$0F			; Filter out MSB to only keep volume data
	sta	PSG_VOLUME		; Save volume data
	jsr	inc_table		; Increment table pointer
	
	lda	PSG_VOICE		; Load voice number from current record

play_tune_voice_1:
	cmp	#>VOICE1		; Is it voice 1?
	bne	play_tune_voice_2	; No, check if it's voice 2
	
	lda	#TONE_A_fine		; Tone Generator Control - Fine
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG1_WRITE		; Store fine tone value

	lda	#TONE_A_coarse		; Tone Generator Control - Fine
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG1_WRITE		; Store fine tone value
	
	lda	#AMPL_A			; Amplitude control register
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG1_WRITE		; Store fine tone value

	jmp	play_tune_duration	; Set duration

play_tune_voice_2:
	cmp	#>VOICE2		; Is it voice 2?
	bne	play_tune_voice_3	; No, check if it's voice 3
	
	lda	#TONE_B_fine		; Tone Generator Control - Fine
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG1_WRITE		; Store fine tone value

	lda	#TONE_B_coarse		; Tone Generator Control - Fine
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG1_WRITE		; Store fine tone value
	
	lda	#AMPL_B			; Amplitude control register
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG1_WRITE		; Store fine tone value

	jmp	play_tune_duration	; Set duration

play_tune_voice_3:
	cmp	#>VOICE3		; Is it voice 3?
	bne	play_tune_voice_4	; No, check if it's voice 4
	
	lda	#TONE_C_fine		; Tone Generator Control - Fine
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG1_WRITE		; Store fine tone value

	lda	#TONE_C_coarse		; Tone Generator Control - Fine
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG1_WRITE		; Store fine tone value
	
	lda	#AMPL_C			; Amplitude control register
	sta	PSG1_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG1_WRITE		; Store fine tone value

	jmp	play_tune_duration	; Set duration

play_tune_voice_4:
	cmp	#>VOICE4		; Is it voice 4?
	bne	play_tune_voice_5	; No, check if it's voice 5
	
	lda	#TONE_A_fine		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value

	lda	#TONE_A_coarse		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value
	
	lda	#AMPL_A			; Amplitude control register
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG2_WRITE		; Store fine tone value

	jmp	play_tune_duration	; Set duration

play_tune_voice_5:
	cmp	#>VOICE5		; Is it voice 5?
	bne	play_tune_voice_6	; No, check if it's voice 6
	
	lda	#TONE_B_fine		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value

	lda	#TONE_B_coarse		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value
	
	lda	#AMPL_B			; Amplitude control register
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG2_WRITE		; Store fine tone value

	jmp	play_tune_duration	; Set duration

play_tune_voice_6:
	cmp	#>VOICE6		; Is it voice 6?
	bne	play_tune_voice_7	; No, check if it's voice 7
	
	lda	#TONE_C_fine		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value

	lda	#TONE_C_coarse		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value
	
	lda	#AMPL_C			; Amplitude control register
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG2_WRITE		; Store fine tone value

	jmp	play_tune_duration	; Set duration

play_tune_voice_7:
	cmp	#>VOICE7		; Is it voice 7?
	bne	play_tune_voice_8	; No, check if it's voice 8
	
	lda	#TONE_A_fine		; Tone Generator Control - Fine
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG3_WRITE		; Store fine tone value

	lda	#TONE_A_coarse		; Tone Generator Control - Fine
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG3_WRITE		; Store fine tone value
	
	lda	#AMPL_A			; Amplitude control register
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG3_WRITE		; Store fine tone value

	jmp	play_tune_duration	; Set duration

play_tune_voice_8:
	cmp	#>VOICE8		; Is it voice 8?
	bne	play_tune_voice_9	; No, check if it's voice 9
	
	lda	#TONE_B_fine		; Tone Generator Control - Fine
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG3_WRITE		; Store fine tone value

	lda	#TONE_B_coarse		; Tone Generator Control - Fine
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG3_WRITE		; Store fine tone value
	
	lda	#AMPL_B			; Amplitude control register
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG3_WRITE		; Store fine tone value

	jmp	play_tune_duration	; Set duration

play_tune_voice_9:
	cmp	#>VOICE9		; Is it voice 9?
	bne	play_tune_voice_10	; No, check if it's voice 10
	
	lda	#TONE_C_fine		; Tone Generator Control - Fine
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG3_WRITE		; Store fine tone value

	lda	#TONE_C_coarse		; Tone Generator Control - Fine
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG3_WRITE		; Store fine tone value
	
	lda	#AMPL_C			; Amplitude control register
	sta	PSG3_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG3_WRITE		; Store fine tone value

	jmp	play_tune_duration	; Set duration

play_tune_voice_10:
	cmp	#>VOICE10		; Is it voice 10?
	bne	play_tune_voice_11	; No, check if it's voice 11
	
	lda	#TONE_A_fine		; Tone Generator Control - Fine
	sta	PSG4_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG4_WRITE		; Store fine tone value

	lda	#TONE_A_coarse		; Tone Generator Control - Fine
	sta	PSG4_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG4_WRITE		; Store fine tone value
	
	lda	#AMPL_A			; Amplitude control register
	sta	PSG4_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG4_WRITE		; Store fine tone value

	jmp	play_tune_duration	; Set duration

play_tune_voice_11:
	cmp	#>VOICE11		; Is it voice 11?
	bne	play_tune_voice_12	; No, check if it's voice 12
	
	lda	#TONE_B_fine		; Tone Generator Control - Fine
	sta	PSG4_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG4_WRITE		; Store fine tone value

	lda	#TONE_B_coarse		; Tone Generator Control - Fine
	sta	PSG4_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG4_WRITE		; Store fine tone value
	
	lda	#AMPL_B			; Amplitude control register
	sta	PSG4_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG4_WRITE		; Store fine tone value

	jmp	play_tune_duration	; Set duration

play_tune_voice_12:
	cmp	#>VOICE12		; Is it voice 12?
	bne	play_tune_noise_1	; No, check if it's noise1
	
	lda	#TONE_C_fine		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_FINE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value

	lda	#TONE_C_coarse		; Tone Generator Control - Fine
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_NOTE_COARSE		; Read fine value
	sta	PSG2_WRITE		; Store fine tone value
	
	lda	#AMPL_C			; Amplitude control register
	sta	PSG2_ADDR		; Store register in PSG
	lda	PSG_VOLUME		; Read volume value
	sta	PSG2_WRITE		; Store fine tone value

	jmp	play_tune_duration	; Set duration

play_tune_noise_1:
	cmp	#>NOISE1		; Is it noise 1?
	bne	play_tune_noise_2	; No, check if it's noise2
	jmp	play_tune_end

play_tune_noise_2:
	cmp	#>NOISE2		; Is it noise 1?
	bne	play_tune_noise_3	; No, check if it's noise3
	jmp	play_tune_end

play_tune_noise_3:
	cmp	#>NOISE3		; Is it noise 1?
	bne	play_tune_no_channel	; No, end routine
	jmp	play_tune_end

play_tune_no_channel:
	bra	play_tune_end

play_tune_duration:
	lda	PSG_DURATION		; Load duration value
	bne	play_tune_duration_loop
	jmp	play_tune_load_data
	
play_tune_duration_loop:
	jsr	play_delay
	dec
	bne	play_tune_duration_loop
	jmp	play_tune_load_data

play_tune_end:	
	rts


;          _                               _          _                 
;  _ __   | |   __ _   _   _            __| |   ___  | |   __ _   _   _ 
; | '_ \  | |  / _` | | | | |          / _` |  / _ \ | |  / _` | | | | |
; | |_) | | | | (_| | | |_| |         | (_| | |  __/ | | | (_| | | |_| |
; | .__/  |_|  \__,_|  \__, |  _____   \__,_|  \___| |_|  \__,_|  \__, |
; |_|                  |___/  |_____|                             |___/ 
 
; ----------------------------------------------------------------------------------------------------------------------

play_delay:
	pha
	lda	PSG_TEMPO
	jsr	millis
	pla
	rts


;  _                          _             _       _        
; (_)  _ __     ___          | |_    __ _  | |__   | |   ___ 
; | | | '_ \   / __|         | __|  / _` | | '_ \  | |  / _ \
; | | | | | | | (__          | |_  | (_| | | |_) | | | |  __/
; |_| |_| |_|  \___|  _____   \__|  \__,_| |_.__/  |_|  \___|
;                    |_____|                                 
		    
; Increment PSG_TABLE (16-bit address) - Does not roll-over
; ----------------------------------------------------------------------------------------------------------------------
; INPUT: PSG_TABLE and PSG_TABLE+1
; RETURNS: Carry bit clear = Did not increment. Already at $FFFF
;          Carry bit set =   Incremented

inc_table:
	pha
	lda	PSG_TABLE+1
	cmp	#$FF			; Is MSB = $FF?
	bne	inc_table_add		; No, then proceed to increment
	lda	PSG_TABLE
	cmp	#$FF			; Is LSB = $FF
	bne	inc_table_add		; No, then proceed to increment
	clc				; Carry clear indicate reached $FFFF
	pla
	rts
inc_table_add:
	clc				; Clear carry bit
	lda	PSG_TABLE		; Load LSB into A
	adc	#1			; Add 1
	sta	PSG_TABLE		; Store the result in LSB
	bcc	inc_table_end		; If result does not roll over(FF -> 00), then end subroutine
	inc	PSG_TABLE+1		; IF it does, then add 1 to MSB
inc_table_end:
	sec				; Carry set indicates incrementation done
	pla
	rts


;  _                                          _          
; (_)  _ __     ___           _ __     ___   | |_    ___ 
; | | | '_ \   / __|         | '_ \   / _ \  | __|  / _ \
; | | | | | | | (__          | | | | | (_) | | |_  |  __/
; |_| |_| |_|  \___|  _____  |_| |_|  \___/   \__|  \___|
;                    |_____|                             

; Increment PSG_NOTE (12-bit value)
; ----------------------------------------------------------------------------------------------------------------------
; INPUT: PSG_NOTE_FINE and PSG_NOTE_COARSE

inc_note:
	pha
	lda	PSG_NOTE_COARSE
	cmp	#$0F			; Is MSB = $0F?
	bne	inc_note_add		; No, then proceed to increment
	lda	PSG_NOTE_FINE
	cmp	#$FF			; Is LSB = $FF
	bne	inc_note_add		; No, then proceed to increment
	pla
	rts
inc_note_add:
	clc				; Clear carry bit
	lda	PSG_NOTE_FINE		; Load LSB into A
	adc	#1			; Add 1
	sta	PSG_NOTE_FINE		; Store the result in LSB
	bcc	inc_note_end		; If result does not roll over(FF -> 00), then end subroutine
	inc	PSG_NOTE_COARSE		; IF it does, then add 1 to MSB
inc_note_end:
	pla
	rts
	

;          _                           _                       _             _                          
;  _ __   | |   __ _   _   _          | |__     ___     ___   | |_          | |_   _   _   _ __     ___ 
; | '_ \  | |  / _` | | | | |         | '_ \   / _ \   / _ \  | __|         | __| | | | | | '_ \   / _ \
; | |_) | | | | (_| | | |_| |         | |_) | | (_) | | (_) | | |_          | |_  | |_| | | | | | |  __/
; | .__/  |_|  \__,_|  \__, |  _____  |_.__/   \___/   \___/   \__|  _____   \__|  \__,_| |_| |_|  \___|
; |_|                  |___/  |_____|                               |_____|                             

; Windows 95 boot tune
; ----------------------------------------------------------------------------------------------------------------------

play_boot_tune:
	lda	#12			; Load tempo
	sta	PSG_TEMPO

	ldx	#<boot_tune		; Get LSB address
	ldy	#>boot_tune		; Get MSB address
	jsr	play_tune		; 
	
	rts

; ----------------------------------------------------------------------------------------------------------------------

boot_tune:
	; 0:0	 Voice    Note   Vol   Dur
	.word	(VOICE1 | XX),  (OFF | SIXTEENTH)
	
	; 1:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Eb6), (MID | NONE)
	.word	(VOICE3 | Eb6), (LOW | NONE)
	.word	(VOICE4 | Eb6), (LOW | NONE)
	.word	(VOICE5 | Ab4), (MID | NONE)
	.word	(VOICE6 | Eb4), (MID | NONE)
	.word	(VOICE7 | Ab3), (MID | NONE)
	.word	(VOICE8 | F2),  (MID | NONE)
	.word	(VOICE10| F1),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)

	; 1:2	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Eb5), (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)

	; 1:3,4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Bb5), (MID | SIXTEENTH)
	.word	(VOICE2 | Bb5), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | NONE)
	.word	(VOICE10| XX),  (OFF | NONE)

	; 1:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Ab5), (MID | NONE)
	.word	(VOICE2 | Ab4), (MID | NONE)
	.word	(VOICE8 | Ab2), (MID | NONE)
	.word	(VOICE10| Ab1), (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	
	; 1:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Eb6), (MID | NONE)
	.word	(VOICE1 | Eb5), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (LOW | NONE)
	.word	(VOICE4 | XX),  (LOW | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | NONE)
	.word	(VOICE10| XX),  (OFF | NONE)

	; 2:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Bb6), (MID | NONE)
	.word	(VOICE2 | Bb5), (MID | NONE)
	.word	(VOICE3 | Bb6), (LOW | NONE)
	.word	(VOICE4 | Bb5), (LOW | NONE)
	.word	(VOICE5 | G4),  (MID | NONE)
	.word	(VOICE6 | Eb4), (MID | NONE)
	.word	(VOICE7 | G3),  (MID | NONE)
	.word	(VOICE8 | Bb3), (MID | NONE)
	.word	(VOICE9 | Eb3), (MID | NONE)
	.word	(VOICE10| Eb2), (MID | NONE)
	.word	(VOICE11| Eb1), (MID | HALF)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | NONE)
	.word	(VOICE9 | XX),  (OFF | NONE)
	.word	(VOICE10| XX),  (OFF | NONE)
	.word	(VOICE11| XX),  (OFF | NONE)

	; EOT
	.word	$0000, $0000
