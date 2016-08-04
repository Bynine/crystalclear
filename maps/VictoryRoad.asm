VictoryRoad_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	dw UnknownScript_0x74490, 0
	dw UnknownScript_0x74491, 0

.MapCallbacks:
	db 1

	dbw 2, MoltresCheck

MoltresCheck:
	checkevent EVENT_FOUGHT_MOLTRES
	iftrue RemoveMoltres

UnknownScript_0x74490:
	end

UnknownScript_0x74491:
	end

UnknownScript_0x74492:
	moveperson $2, $12, $b
	spriteface PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special Functionc48f
	pause 15
	appear $2
	applymovement $2, MovementData_0x74539
	scall UnknownScript_0x744d4
	applymovement $2, MovementData_0x7454c
	disappear $2
	dotrigger $1
	playmapmusic
	end

UnknownScript_0x744b5:
	spriteface PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special Functionc48f
	pause 15
	appear $2
	applymovement $2, MovementData_0x74542
	scall UnknownScript_0x744d4
	applymovement $2, MovementData_0x74555
	disappear $2
	dotrigger $1
	playmapmusic
	end

UnknownScript_0x744d4:
	spriteface PLAYER, DOWN
	playmusic MUSIC_RIVAL_ENCOUNTER
	loadfont
	writetext UnknownText_0x7455f
	closetext
	loadmovesprites
	setevent EVENT_RIVAL_VICTORY_ROAD
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue UnknownScript_0x744ff
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue UnknownScript_0x7450f
	winlosstext UnknownText_0x7463d, UnknownText_0x747aa
	setlasttalked $2
	loadtrainer RIVAL1, RIVAL1_15
	startbattle
	reloadmapmusic
	returnafterbattle
	jump UnknownScript_0x7451f

UnknownScript_0x744ff:
	winlosstext UnknownText_0x7463d, UnknownText_0x747aa
	setlasttalked $2
	loadtrainer RIVAL1, RIVAL1_13
	startbattle
	reloadmapmusic
	returnafterbattle
	jump UnknownScript_0x7451f

UnknownScript_0x7450f:
	winlosstext UnknownText_0x7463d, UnknownText_0x747aa
	setlasttalked $2
	loadtrainer RIVAL1, RIVAL1_14
	startbattle
	reloadmapmusic
	returnafterbattle
	jump UnknownScript_0x7451f

UnknownScript_0x7451f:
	playmusic MUSIC_RIVAL_AFTER
	loadfont
	writetext UnknownText_0x746ce
	closetext
	loadmovesprites
	end

ItemFragment_0x74529:
	db TM_EARTHQUAKE, 1

ItemFragment_0x7452b:
	db MAX_REVIVE, 1

ItemFragment_0x7452d:
	db FULL_RESTORE, 1

ItemFragment_0x7452f:
	db FULL_HEAL, 1

ItemFragment_0x74531:
	db TM_EARTHQUAKE, 1

MapVictoryRoadSignpostItem0:
	dwb EVENT_VICTORY_ROAD_HIDDEN_MAX_POTION, MAX_POTION
	

MapVictoryRoadSignpostItem1:
	dwb EVENT_VICTORY_ROAD_HIDDEN_FULL_HEAL, FULL_HEAL
	

MovementData_0x74539:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end

MovementData_0x74542:
	step_up
	step_up
	step_left
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end

MovementData_0x7454c:
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

MovementData_0x74555:
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	step_down
	step_down
	step_end

UnknownText_0x7455f:
	text "Hold it."

	para "…Are you going to"
	line "take the #MON"
	cont "LEAGUE challenge?"

	para "…Don't make me"
	line "laugh."

	para "You're so much"
	line "weaker than I am."

	para "I'm not like I was"
	line "before."

	para "I now have the"
	line "best and strongest"

	para "#MON with me."
	line "I'm invincible!"

	para "<PLAYER>!"
	line "I challenge you!"
	done

UnknownText_0x7463d:
	text "…I couldn't win…"

	para "I gave it every-"
	line "thing I had…"

	para "What you possess,"
	line "and what I lack…"

	para "I'm beginning to"
	line "understand what"

	para "that dragon master"
	line "said to me…"
	done

UnknownText_0x746ce:
	text "…I haven't given up"
	line "on becoming the"
	cont "greatest trainer…"

	para "I'm going to find"
	line "out why I can't"

	para "win and become"
	line "stronger…"

	para "When I do, I will"
	line "challenge you."

	para "And I'll beat you"
	line "down with all my"
	cont "power."

	para "…Humph! You keep"
	line "at it until then."
	done

UnknownText_0x747aa:
	text "…Humph!"

	para "When it comes down"
	line "to it, nothing can"
	cont "beat power."

	para "I don't need any-"
	line "thing else."
	done

MoltresScript:
	faceplayer
	loadfont
	writetext MoltresText
	cry MOLTRES
	pause 15
	loadmovesprites
	setevent EVENT_FOUGHT_MOLTRES
	writecode VAR_BATTLETYPE, BATTLETYPE_ROAMING
	loadpokedata MOLTRES, 50
	startbattle
	disappear $7
	returnafterbattle
	end

MoltresText:
	text "Skreaa!"
	done

RemoveMoltres:
	disappear $7
	return

VictoryRoad_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 10
	warp_def $43, $9, 5, VICTORY_ROAD_GATE
	warp_def $31, $1, 3, VICTORY_ROAD
	warp_def $23, $1, 2, VICTORY_ROAD
	warp_def $1f, $d, 5, VICTORY_ROAD
	warp_def $11, $d, 4, VICTORY_ROAD
	warp_def $21, $11, 7, VICTORY_ROAD
	warp_def $13, $11, 6, VICTORY_ROAD
	warp_def $b, $0, 9, VICTORY_ROAD
	warp_def $1b, $0, 8, VICTORY_ROAD
	warp_def $5, $d, 3, ROUTE_23

.XYTriggers:
	db 2
	xy_trigger 0, $8, $c, $0, UnknownScript_0x74492, $0, $0
	xy_trigger 0, $8, $d, $0, UnknownScript_0x744b5, $0, $0

.Signposts:
	db 2
	signpost 29, 3, SIGNPOST_ITEM, MapVictoryRoadSignpostItem0
	signpost 65, 3, SIGNPOST_ITEM, MapVictoryRoadSignpostItem1

.PersonEvents:
	db 6
	person_event SPRITE_SILVER, 13, 18, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_RIVAL_VICTORY_ROAD
	person_event SPRITE_POKE_BALL, 28, 3, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x74529, EVENT_VICTORY_ROAD_TM_EARTHQUAKE
	person_event SPRITE_POKE_BALL, 48, 12, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7452b, EVENT_VICTORY_ROAD_MAX_REVIVE
	person_event SPRITE_POKE_BALL, 29, 18, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7452d, EVENT_VICTORY_ROAD_FULL_RESTORE
	person_event SPRITE_POKE_BALL, 48, 15, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7452f, EVENT_VICTORY_ROAD_FULL_HEAL
	person_event SPRITE_MOLTRES, 28, 5, SPRITEMOVEDATA_01, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, 0, 0, MoltresScript, EVENT_VICTORY_ROAD_MOLTRES
