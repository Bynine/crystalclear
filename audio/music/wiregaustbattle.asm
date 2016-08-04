Music_WiregaustBattle: ; eedcb
	dbw $80, Music_WiregaustBattle_Ch1
	dbw $01, Music_WiregaustBattle_Ch2
	dbw $02, Music_WiregaustBattle_Ch3
; eedd4

Music_WiregaustBattle_Ch1: ; eedd4
	tempo 130
	volume $77
	dutycycle $0
	tone $0116
	vibrato $10, $f0
	stereopanning $f0
Music_WiregaustBattle_branch_eede3: ; eede3
	notetype $6, $71
	callchannel Music_WiregaustBattle_branch_eee01
	notetype $c, $a1
	note __, 16
	note __, 16
	callchannel Music_WiregaustBattle_branch_eee08
	notetype $c, $a1
	note __, 16
	note F#, 16
	callchannel Music_WiregaustBattle_branch_eee01
	notetype $c, $b2
	note __, 16
	loopchannel 0, Music_WiregaustBattle_branch_eede3
; eee01

Music_WiregaustBattle_branch_eee01: ; eee01
	octave 4
	intensity $b7
	octave 3
	note D_, 32
	octave 2
	note B_, 6
	note B_, 4
	octave 3
	note F_, 6
	note E_, 6
	note C_, 4
	note F#, 8
	note F#, 3
	note A_, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note G#, 3
	note A_, 1
	note A#, 1
	octave 4
	note C_, 8
	octave 3
	note B_, 1
	note A#, 1
	note G#, 1
	note G_, 4
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	note D_, 1
	octave 3
	note G#, 3
	note B_, 4
	octave 2
	note F_, 6
	note E_, 6
	note D_, 4
	note E_, 8
	note D_, 8
	note C_, 8
	note F_, 8
	note D#, 6
	note C_, 6
	note C_, 4
	note F#, 6
	note F_, 6
	note C#, 4
	note A_, 8
	note B_, 1
	note A#, 1
	note G#, 1
	note E_, 1
	note A#, 1
	note E_, 1
	note A#, 1
	note B_, 1
	octave 4
	note C_, 8
	note C_, 1
	octave 3
	note B_, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 4
	note C_, 1
	octave 4
	note D#, 6
	note C_, 6
	note C_, 4
	note F#, 6
	note F_, 6
	note C#, 4
	note F_, 3
	note D#, 8
	note C#, 12
	note F#, 8
	intensity $b7
	note E_, 6
	note D_, 6
	note E_, 4
	note F_, 6
	note E_, 6
	note C_, 4
	note F_, 8
	note C_, 8
	note E_, 6
	note D_, 6
	note F_, 4
	note G_, 32
	octave 4
	note D_, 8
	note G_, 8
	note G_, 16
	note D_, 16
	octave 3
	note C_, 4
	note D_, 4
	note C_, 4
	octave 2
	note B_, 4
	octave 3
	note C_, 16
	note D_, 2
	note E_, 4
	note D_, 4
	note F#, 4
	note G_, 16
	endchannel
; eee08

Music_WiregaustBattle_branch_eee08: ; eee08
	octave 4
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note C_, 16
	note G_, 1
	octave 5
	note G_, 8
	endchannel
; eee12

Music_WiregaustBattle_Ch2: ; eee12
	dutycycle $1
	vibrato $1, $e0
Music_WiregaustBattle_branch_eee17: ; eee17
	stereopanning $f
	notetype $6, $81
	callchannel Music_WiregaustBattle_branch_eee01
	notetype $c, $a1
	note __, 16
	note __, 16
	notetype $6, $81
	callchannel Music_WiregaustBattle_branch_eee08
	notetype $c, $a1
	note __, 16
	loopchannel 0, Music_WiregaustBattle_branch_eee17
; eee32

Music_WiregaustBattle_Ch3: ; eee32
	notetype $6, $26
Music_WiregaustBattle_branch_eee35: ; eee35
	octave 2
	note C_, 1
	note C#, 1
	note C_, 1
	note __, 16
	note C#, 1
	note C_, 1
	note C#, 1
	note F#, 16
	loopchannel 0, Music_WiregaustBattle_branch_eee35
; eee3e
