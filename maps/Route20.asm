Route20_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1

	; callbacks

	dbw 5, .ClearRocks

.ClearRocks
	setevent EVENT_CINNABAR_ROCKS_CLEARED
	return

ArticunoScript:
	faceplayer
	loadfont
	writetext ArticunoText
	cry ARTICUNO
	pause 15
	loadmovesprites
	setevent EVENT_FOUGHT_ARTICUNO
	writecode VAR_BATTLETYPE, BATTLETYPE_ROAMING
	loadpokedata ARTICUNO, 60
	startbattle
	disappear $4
	returnafterbattle
	end

ArticunoText:
	text "Kree-AH!"
	done

RemoveArticuno:
	disappear $4
	return

TrainerSwimmerfNicole:
	trainer EVENT_BEAT_SWIMMERF_NICOLE, SWIMMERF, NICOLE, SwimmerfNicoleSeenText, SwimmerfNicoleBeatenText, 0, SwimmerfNicoleScript

SwimmerfNicoleScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x1acd93
	closetext
	loadmovesprites
	end

TrainerSwimmerfLori:
	trainer EVENT_BEAT_SWIMMERF_LORI, SWIMMERF, LORI, SwimmerfLoriSeenText, SwimmerfLoriBeatenText, 0, SwimmerfLoriScript

SwimmerfLoriScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ace15
	closetext
	loadmovesprites
	end

TrainerSwimmermCameron:
	trainer EVENT_BEAT_SWIMMERM_CAMERON, SWIMMERM, CAMERON, SwimmermCameronSeenText, SwimmermCameronBeatenText, 0, SwimmermCameronScript

SwimmermCameronScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ace8b
	closetext
	loadmovesprites
	end

MapRoute20Signpost0Script:
	jumptext UnknownText_0x1acec2

SwimmerfNicoleSeenText:
	text "I feel so much"
	line "lighter in water."
	done

SwimmerfNicoleBeatenText:
	text "Oh, no!"
	done

UnknownText_0x1acd93:
	text "Swimming exercises"
	line "your full body."

	para "It's really good"
	line "for you."
	done

SwimmerfLoriSeenText:
	text "What an impressive"
	line "collection of GYM"

	para "BADGES. We should"
	line "battle!"
	done

SwimmerfLoriBeatenText:
	text "No!"
	done

UnknownText_0x1ace15:
	text "SURF is no longer"
	line "the only HM move"
	cont "you use in water."
	done

SwimmermCameronSeenText:
	text "I guess it's im-"
	line "possible to swim"

	para "all the way to"
	line "JOHTO."
	done

SwimmermCameronBeatenText:
	text "Aiyah!"
	done

UnknownText_0x1ace8b:
	text "Besides the sea, I"
	line "can also swim in"
	cont "ponds and rivers."
	done

UnknownText_0x1acec2:
	text "What does this"
	line "sign say?"

	para "CINNABAR GYM"
	line "LEADER: BLAINE"
	done

Route20_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $7, $26, 1, SEAFOAM_GYM

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 11, 37, SIGNPOST_READ, MapRoute20Signpost0Script

.PersonEvents:
	db 3
	person_event SPRITE_SWIMMER_GIRL, 13, 45, SPRITEMOVEDATA_0A, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, 2, 3, TrainerSwimmerfLori, -1
	person_event SPRITE_SWIMMER_GUY, 13, 12, SPRITEMOVEDATA_0A, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, 2, 3, TrainerSwimmermCameron, -1
	person_event SPRITE_BIRD, 3, 34, SPRITEMOVEDATA_01, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, 0, 0, ArticunoScript, EVENT_ARTICUNO
