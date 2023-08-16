;  __  __                   _                       ___         _                       _ 
; |  \/  |   ___    _ __   | | __   ___   _   _    |_ _|  ___  | |   __ _   _ __     __| |
; | |\/| |  / _ \  | '_ \  | |/ /  / _ \ | | | |    | |  / __| | |  / _` | | '_ \   / _` |
; | |  | | | (_) | | | | | |   <  |  __/ | |_| |    | |  \__ \ | | | (_| | | | | | | (_| |
; |_|  |_|  \___/  |_| |_| |_|\_\  \___|  \__, |   |___| |___/ |_|  \__,_| |_| |_|  \__,_|
;                                         |___/                                           

; Monkey Island Song
; ----------------------------------------------------------------------------------------------------------------------

play_monkey_island_song:
	lda	#18			; Load tempo
	sta	PSG_TEMPO

	ldx	#<monkey_island		; Get LSB address
	ldy	#>monkey_island		; Get MSB address
	jsr	play_tune		; 
	
	rts

; ----------------------------------------------------------------------------------------------------------------------

monkey_island:
	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2
	
	; 22:1	 Voice    Note   Vol   Dur
	.word	(VOICE8 | E2),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 22:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 22:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | EIGHTH)

	; 22:4	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 22:5	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | EIGHTH)

	; 22:6	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 22:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 23:1	 Voice    Note   Vol   Dur
	.word	(VOICE8 | E2),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 23:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 23:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | EIGHTH)

	; 23:4	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 23:5	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 23:6	 Voice    Note   Vol   Dur
	.word	(VOICE8 | D2),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 23:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 23:8	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 23:9	 Voice    Note   Vol   Dur
	.word	(VOICE8 | A2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 23:10	 Voice    Note   Vol   Dur
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 23:11	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 23:12	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2
	
	; 24:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 24:2	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 24:3	 Voice    Note   Vol   Dur

	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 24:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 24:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 24:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 24:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 24:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 24:9	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 24:10	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 25:1	 Voice    Note   Vol   Dur
	.word	(VOICE8 | G2),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 25:2	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | NONE)
	.word	(VOICE8 | G2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 25:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | NONE)
	.word	(VOICE8 | G2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 25:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 25:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE3 | C4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)
	
	; 25:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B4),  (MID | NONE)
	.word	(VOICE3 | B3),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 25:7	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 25:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE3 | C4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 25:9	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE3 | C4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | A2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 25:10	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | A2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 26:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B4),  (MID | NONE)
	.word	(VOICE3 | B3),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 26:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 26:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | EIGHTH)

	; 26:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 26:5	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 26:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | EIGHTH)

	; 26:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 26:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 26:9	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | NONE)
	.word	(VOICE8 | D3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 26:10	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 26:11	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 26:12	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 27:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | C3),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 27:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 27:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | EIGHTH)

	; 27:4	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 27:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 27:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE8 | G2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 27:7	 Voice    Note   Vol   Dur
	.word	(VOICE8 | G2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 27:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 27:9	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | NONE)
	.word	(VOICE8 | G2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 27:10	 Voice    Note   Vol   Dur
	.word	(VOICE1 | A5),  (MID | NONE)
	.word	(VOICE3 | A4),  (MID | NONE)
	.word	(VOICE8 | A2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | SIXTEENTH)

	; 27:11	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | A2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 27:12	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 28:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | EIGHTH)

	; 28:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | A3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 28:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | A3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 28:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 28:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 28:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | A3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 28:7	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | NONE)
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | A3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 28:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE8 | G3),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 28:9	 Voice    Note   Vol   Dur
	.word	(VOICE8 | G3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 28:10	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 28:11	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | NONE)
	.word	(VOICE8 | G3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 28:12	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | NONE)
	.word	(VOICE8 | Eb3), (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | SIXTEENTH)

	; 28:13	 Voice    Note   Vol   Dur
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | Ds3), (MID | NONE)
	.word	(VOICE7 | B3),  (MID | NONE)
	.word	(VOICE8 | Eb3), (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (MID | NONE)
	.word	(VOICE6 | XX),  (MID | NONE)
	.word	(VOICE7 | XX),  (MID | NONE)
	.word	(VOICE8 | XX),  (MID | PAUSE)

	; 28:14	 Voice    Note   Vol   Dur
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | Ds3), (MID | NONE)
	.word	(VOICE7 | B3),  (MID | NONE)
	.word	(VOICE8 | Eb3), (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 29:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 29:2	 Voice    Note   Vol   Dur
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 29:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 29:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 29:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 29:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 29:7	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | A3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 29:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | NONE)
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | A3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 29:9	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 29:10	 Voice    Note   Vol   Dur
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 29:11	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 29:12	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 29:13	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | NONE)
	.word	(VOICE8 | B1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | SIXTEENTH)

	; 29:14	 Voice    Note   Vol   Dur
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | Ds3), (MID | NONE)
	.word	(VOICE7 | B3),  (MID | NONE)
	.word	(VOICE8 | B1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (MID | NONE)
	.word	(VOICE6 | XX),  (MID | NONE)
	.word	(VOICE7 | XX),  (MID | NONE)
	.word	(VOICE8 | XX),  (MID | PAUSE)

	; 29:15	 Voice    Note   Vol   Dur
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | Ds3), (MID | NONE)
	.word	(VOICE7 | B3),  (MID | NONE)
	.word	(VOICE8 | B1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 30:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 30:2	 Voice    Note   Vol   Dur
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 30:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 30:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 30:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 30:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 30:7	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | A3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 30:8	 Voice    Note   Vol   Dur
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | A3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 30:9	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 30:10	 Voice    Note   Vol   Dur
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 30:11	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 30:12	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 30:13	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | EIGHTH)
	
	; 30:14	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)
	
	; 30:15	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | EIGHTH)
	
	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 31:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)
	
	; 31:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 31:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE8 | G2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 31:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE3 | C4),  (MID | NONE)
	.word	(VOICE8 | G2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)
	
	; 31:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B4),  (MID | NONE)
	.word	(VOICE3 | B3),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 31:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | NONE)
	.word	(VOICE8 | G2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 31:7	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE3 | C4),  (MID | NONE)
	.word	(VOICE8 | A2),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 31:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE3 | C4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | A2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)
	
	; 31:9	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 32:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B4),  (MID | NONE)
	.word	(VOICE3 | B3),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 32:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 32:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | EIGHTH)
	
	; 32:4	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)
	
	; 32:5	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | EIGHTH)
	
	; 32:6	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 32:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 33:1	 Voice    Note   Vol   Dur
	.word	(VOICE8 | E2),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 33:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | NONE)	
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 33:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | NONE)	
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | EIGHTH)
	
	; 33:4	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)	
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)
	
	; 33:5	 Voice    Note   Vol   Dur
	.word	(VOICE5 | B3),  (MID | NONE)
	.word	(VOICE6 | G3),  (MID | NONE)
	.word	(VOICE7 | E3),  (MID | SIXTEENTH)	
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)
	
	; 33:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B4),  (MID | NONE)
	.word	(VOICE3 | B3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 33:7	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)	
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 33:8	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)	
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 34:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C6),  (MID | NONE)
	.word	(VOICE2 | E5),  (MID | NONE)
	.word	(VOICE3 | C5),  (MID | NONE)
	.word	(VOICE4 | E4),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 34:2	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)	
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 34:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 34:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | EIGHTH)

	; 34:5	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 34:6	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 34:7	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C6),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | NONE)
	.word	(VOICE3 | C5),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 34:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B5),  (MID | NONE)
	.word	(VOICE3 | B4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 34:9	 Voice    Note   Vol   Dur
	.word	(VOICE1 | A5),  (MID | NONE)
	.word	(VOICE3 | A4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 34:10	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C6),  (MID | NONE)
	.word	(VOICE3 | C5),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 35:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B5),  (MID | NONE)
	.word	(VOICE2 | D5),  (MID | NONE)
	.word	(VOICE3 | B4),  (MID | NONE)
	.word	(VOICE4 | D4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 35:2	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 35:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 35:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE8 | B1),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 35:5	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)

	; 35:6	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 35:7	 Voice    Note   Vol   Dur
	.word	(VOICE2 | B5),  (MID | NONE)
	.word	(VOICE4 | B4),  (MID | EIGHTH)

	; 35:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 35:9	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 36:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | A5),  (MID | NONE)
	.word	(VOICE2 | C5),  (MID | NONE)
	.word	(VOICE3 | A4),  (MID | NONE)
	.word	(VOICE4 | C4),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)
	
	; 36:2	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)	
	.word	(VOICE8 | D1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 36:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 36:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE8 | Fs1), (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 36:5	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)	
	.word	(VOICE8 | A1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 36:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | A5),  (MID | NONE)
	.word	(VOICE3 | A4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 36:7	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B5),  (MID | NONE)
	.word	(VOICE2 | D5),  (MID | NONE)
	.word	(VOICE3 | B4),  (MID | NONE)
	.word	(VOICE4 | D4),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 36:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | A5),  (MID | NONE)
	.word	(VOICE3 | A4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 36:9	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 36:10	 Voice    Note   Vol   Dur
	.word	(VOICE1 | A5),  (MID | NONE)
	.word	(VOICE3 | A4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 37:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B5),  (MID | NONE)
	.word	(VOICE2 | B4),  (MID | NONE)
	.word	(VOICE3 | B4),  (MID | NONE)
	.word	(VOICE4 | B3),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 37:2	 Voice    Note   Vol   Dur
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 37:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 37:4	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 37:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE8 | B1),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 37:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 37:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE2 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE4 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 37:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | EIGHTH)

	; 37:9	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 37:10	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 37:11	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs4), (MID | NONE)
	.word	(VOICE3 | Fs3), (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 37:12	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE3 | G3),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 37:13	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2
	
	; 38:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | A4),  (MID | NONE)
	.word	(VOICE3 | A3),  (MID | NONE)
	.word	(VOICE8 | F1),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 38:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | A1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 38:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 38:4	 Voice    Note   Vol   Dur
	.word	(VOICE8 | C2),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 38:5	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 38:6	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | EIGHTH)

	; 38:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 38:8	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | EIGHTH)

	; 38:9	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | F2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 38:10	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | F2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2
	
	; 39:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE3 | G3),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 39:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | B1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 39:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 39:4	 Voice    Note   Vol   Dur
	.word	(VOICE8 | G1),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 39:5	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 39:6	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | EIGHTH)

	; 39:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 39:8	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | EIGHTH)

	; 39:9	 Voice    Note   Vol   Dur
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)
	
	; 39:10	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs4), (MID | NONE)
	.word	(VOICE3 | Fs3), (MID | NONE)	
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 39:11	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2
	
	; 40:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G4),  (MID | NONE)
	.word	(VOICE3 | G3),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 40:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | Eb2), (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 40:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 40:4	 Voice    Note   Vol   Dur
	.word	(VOICE8 | G2),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 40:5	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 40:6	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 40:7	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE3 | C4),  (MID | EIGHTH)

	; 40:8	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 40:9	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | EIGHTH)

	; 40:10	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | G2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 40:11	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | G3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2
	
	; 41:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE8 | Fs2), (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 41:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 41:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 41:4	 Voice    Note   Vol   Dur
	.word	(VOICE8 | A1),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 41:5	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 41:6	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | EIGHTH)

	; 41:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 41:8	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | EIGHTH)

	; 41:9	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 41:10	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 42:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | SIXTEENTH)

	; 42:2	 Voice    Note   Vol   Dur
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 42:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 42:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 42:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 42:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 42:7	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 42:8	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 42:9	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 42:10	 Voice    Note   Vol   Dur
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 42:11	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 42:12	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 42:13	 Voice    Note   Vol   Dur
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | SIXTEENTH)
	
	; 42:14	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 42:15	 Voice    Note   Vol   Dur

	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 43:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 43:2	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE3 | C4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 43:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B4),  (MID | NONE)
	.word	(VOICE3 | B3),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 43:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 43:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE3 | C4),  (MID | NONE)
	.word	(VOICE8 | A1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 43:6	 Voice    Note   Vol   Dur
	.word	(VOICE8 | A1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 43:7	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE3 | C4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 43:8	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | A1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 43:9	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B4),  (MID | NONE)
	.word	(VOICE3 | B3),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 43:10	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 43:11	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | EIGHTH)

	; 43:12	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 43:13	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 44:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | EIGHTH)
	
	; 44:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 44:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 44:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 44:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 44:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 44:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 44:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | SIXTEENTH)

	; 44:9	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 44:10	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | EIGHTH)

	; 44:11	 Voice    Note   Vol   Dur
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 44:12	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 44:13	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 45:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 45:2	 Voice    Note   Vol   Dur
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)	

	; 45:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 45:4	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 45:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | A5),  (MID | NONE)
	.word	(VOICE3 | A4),  (MID | NONE)
	.word	(VOICE8 | A1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | SIXTEENTH)

	; 45:6	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | A1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 45:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | A1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 45:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | NONE)
	.word	(VOICE8 | D1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 45:9	 Voice    Note   Vol   Dur
	.word	(VOICE8 | D1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 45:10	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 45:11	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 45:12	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 45:13	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 45:14	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 45:15	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 46:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 46:2	 Voice    Note   Vol   Dur
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)	

	; 46:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 46:4	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 46:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5),  (MID | NONE)
	.word	(VOICE3 | Fs4),  (MID | NONE)
	.word	(VOICE8 | B1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | SIXTEENTH)

	; 46:6	 Voice    Note   Vol   Dur
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | Ds3), (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | B1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 46:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | Ds3), (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | B1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 46:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 46:9	 Voice    Note   Vol   Dur
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 46:10	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 46:11	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 46:12	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 46:13	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 46:14	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 46:15	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 47:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 47:2	 Voice    Note   Vol   Dur
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)	

	; 47:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 47:4	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | D3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | G2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 47:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5),  (MID | NONE)
	.word	(VOICE3 | Fs4),  (MID | NONE)
	.word	(VOICE8 | B1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | SIXTEENTH)

	; 47:6	 Voice    Note   Vol   Dur
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | Ds3), (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | B1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 47:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | Fs3), (MID | NONE)
	.word	(VOICE6 | Ds3), (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | B1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 47:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 47:9	 Voice    Note   Vol   Dur
	.word	(VOICE8 | E2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 47:10	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 47:11	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 47:12	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 47:13	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 47:14	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)

	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 47:15	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 48:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 48:2	 Voice    Note   Vol   Dur
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)	

	; 48:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 48:4	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 48:5	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 48:6	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 48:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 48:8	 Voice    Note   Vol   Dur
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 48:9	 Voice    Note   Vol   Dur
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 48:10	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 48:11	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | G1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 48:12	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE3 | C4),  (MID | NONE)
	.word	(VOICE8 | A1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 48:13	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B4),  (MID | NONE)
	.word	(VOICE3 | B3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)
	
	; 48:14	 Voice    Note   Vol   Dur
	.word	(VOICE1 | C5),  (MID | NONE)
	.word	(VOICE3 | C4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | A1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 48:15	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 49:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | B4),  (MID | NONE)
	.word	(VOICE3 | B3),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | EIGHTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 49:2	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 49:3	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | EIGHTH)

	; 49:4	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 49:5	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 49:6	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | EIGHTH)

	; 49:7	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 49:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 49:9	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 49:10	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 49:11	 Voice    Note   Vol   Dur
	.word	(VOICE1 | D5),  (MID | NONE)
	.word	(VOICE3 | D4),  (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 49:12	 Voice    Note   Vol   Dur

	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | E1),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 50:1	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 50:2	 Voice    Note   Vol   Dur
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 50:3	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 50:4	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 50:5	 Voice    Note   Vol   Dur
	.word	(VOICE8 | C2),  (MID | EIGHTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 50:6	 Voice    Note   Vol   Dur
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 50:7	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | C3),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 50:8	 Voice    Note   Vol   Dur
	.word	(VOICE1 | A5),  (MID | NONE)
	.word	(VOICE3 | A4),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 50:9	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 50:10	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 50:11	 Voice    Note   Vol   Dur
	.word	(VOICE1 | A5),  (MID | NONE)
	.word	(VOICE3 | A4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 50:12	 Voice    Note   Vol   Dur
	.word	(VOICE1 | G5),  (MID | NONE)
	.word	(VOICE3 | G4),  (MID | NONE)
	.word	(VOICE8 | C2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | PAUSE)

	; 50:13	 Voice    Note   Vol   Dur
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; 50:14	 Voice    Note   Vol   Dur
	.word	(VOICE1 | Fs5), (MID | NONE)
	.word	(VOICE3 | Fs4), (MID | NONE)
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | NONE)
	.word	(VOICE8 | D2),  (MID | SIXTEENTH)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | PAUSE)

	; 50:15	 Voice    Note   Vol   Dur
	.word	(VOICE5 | A3),  (MID | NONE)
	.word	(VOICE6 | Fs3), (MID | NONE)
	.word	(VOICE7 | D3),  (MID | SIXTEENTH)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)

	; Voice 1-2 = Panflote 5
	; Voice 3-4 = Marimba 4
	; Voice 5-7 = Steel Drum 3
	; Voice 8 = Elektrischer Bass 2

	; 51:1	 Voice    Note   Vol   Du
	.word	(VOICE1 | E5),  (MID | NONE)
	.word	(VOICE3 | E4),  (MID | NONE)
	.word	(VOICE5 | G3),  (MID | NONE)
	.word	(VOICE6 | E3),  (MID | NONE)
	.word	(VOICE7 | B2),  (MID | NONE)
	.word	(VOICE8 | E2),  (MID | QUARTER)
	.word	(VOICE1 | XX),  (OFF | NONE)
	.word	(VOICE3 | XX),  (OFF | NONE)
	.word	(VOICE5 | XX),  (OFF | NONE)
	.word	(VOICE6 | XX),  (OFF | NONE)
	.word	(VOICE7 | XX),  (OFF | NONE)
	.word	(VOICE8 | XX),  (OFF | PAUSE)








	; EOT
	.word	$0000, $0000
