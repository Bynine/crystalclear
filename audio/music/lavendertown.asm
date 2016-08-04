Music_LavenderTown: ; ef72f
	dbw $80, Music_LavenderTown_Ch1
	dbw $01, Music_LavenderTown_Ch2
	dbw $02, Music_LavenderTown_Ch3
	dbw $03, Music_LavenderTown_Ch4
; ef738

	db $3

Music_LavenderTown_Ch1: ; ef739
	tempo 152
	volume $77
	stereopanning $f
	vibrato $6, $24
	dutycycle $0
	notetype $c, $b3
Music_LavenderTown_branch_ef74c: ; ef74c
	intensity $93
	octave 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note F#, 4
	note E_, 4
	note B_, 4
	note C#, 8
	note C#, 8
	note G_, 8
	note G_, 8
	note F#, 8
	note F#, 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 4
	note C_, 8
	note C_, 8
	octave 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note F#, 4
	note E_, 4
	note B_, 4
	note C#, 8
	note C#, 8
	note G_, 8
	note G_, 8
	note F#, 8
	note F#, 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	note C_, 8
	note C_, 8
	loopchannel 0, Music_LavenderTown_branch_ef74c
; ef7fd

Music_LavenderTown_Ch2: ; ef899
	dutycycle $1
	vibrato $8, $24
	stereopanning $ff
Music_LavenderTown_branch_ef8a0: ; ef8a0
	intensity $a3
	octave 5
	note C_, 4
	note G_, 4
	note B_, 4
	note F#, 4
	loopchannel 3, Music_LavenderTown_branch_ef8a0

Music_LavenderTown_Ch3: ; ef932
	vibrato $12, $24
	notetype $c, $13
	stereopanning $f0
	octave 5
Music_LavenderTown_branch_ef941: ; ef941
	intensity $12
	octave 4
	note E_, 16
	note D_, 16
	note C_,16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	notetype 12, 3, 5
	octave 6
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	notetype 12, 2, 5
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 7
	note B_ ,4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 4
	note E_, 4
	note G_, 4
	note F#, 4
	note B_,4
	note E_,16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_,16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	notetype 12, 2, 5
	octave 6
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 7
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 4
	note E_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	loopchannel 0, Music_LavenderTown_branch_ef941
; ef9bc

Music_LavenderTown_Ch4: ;
	vibrato $12, $24
	notetype $c, $13
	stereopanning $f0
	octave 2
Music_Lavender_branch_bc26::
	note E_, 8
	note E_, 8
	loopchannel 0, Music_Lavender_branch_bc26
