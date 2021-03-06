Route39Barn_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TwinScript_0x9cc76:
	faceplayer
	loadfont
	checkevent EVENT_HEALED_MOOMOO
	iftrue .FeedingMooMoo
	writetext Text_MoomooIsSick
	closetext
	loadmovesprites
	spriteface $2, RIGHT
	end

.FeedingMooMoo:
	writetext Text_WereFeedingMoomoo
	closetext
	loadmovesprites
	spriteface $2, RIGHT
	end

TwinScript_0x9cc90:
	faceplayer
	loadfont
	checkevent EVENT_HEALED_MOOMOO
	iftrue .FeedingMooMoo
	writetext Text_MoomooIsSick
	closetext
	loadmovesprites
	spriteface $3, LEFT
	end

.FeedingMooMoo:
	writetext Text_WereFeedingMoomoo
	closetext
	loadmovesprites
	spriteface $3, LEFT
	end

TaurosScript_0x9ccaa:
	loadfont
	checkevent EVENT_HEALED_MOOMOO
	iftrue .HappyCow
	writetext Text_WeakMoo
	writebyte MILTANK
	special PlaySlowCry
	keeptextopen
	writetext Text_ItsCryIsWeak
	checkevent EVENT_TALKED_TO_FARMER_ABOUT_MOOMOO
	iftrue .GiveBerry
	closetext
	loadmovesprites
	end

.GiveBerry:
	keeptextopen
	writetext Text_AskGiveBerry
	yesorno
	iffalse .Refused
	checkitem BERRY
	iffalse .NoBerriesInBag
	takeitem BERRY, 1
	copybytetovar MooMooBerries
	addvar 1
	copyvartobyte MooMooBerries
	if_equal 3, .ThreeBerries
	if_equal 5, .FiveBerries
	if_equal 7, .SevenBerries
	writetext Text_GaveBerry
	closetext
	loadmovesprites
	end

.ThreeBerries:
	writetext Text_GaveBerry
	keeptextopen
	writetext Text_LittleHealthier
	closetext
	loadmovesprites
	end

.FiveBerries:
	writetext Text_GaveBerry
	keeptextopen
	writetext Text_QuiteHealthy
	closetext
	loadmovesprites
	end

.SevenBerries:
	playmusic MUSIC_HEAL
	writetext Text_GaveBerry
	pause 60
	keeptextopen
	special RestartMapMusic
	writetext Text_TotallyHealthy
	closetext
	loadmovesprites
	setevent EVENT_HEALED_MOOMOO
	end

.NoBerriesInBag:
	writetext Text_NoBerries
	closetext
	loadmovesprites
	end

.Refused:
	writetext Text_RefusedToGiveBerry
	closetext
	loadmovesprites
	end

.HappyCow:
	writetext UnknownText_0x9cd92
	cry MILTANK
	closetext
	loadmovesprites
	end

Text_MoomooIsSick:
	text "MOOMOO is sick…"

	para "She needs lots of"
	line "BERRIES."
	done

Text_WereFeedingMoomoo:
	text "We're feeding"
	line "MOOMOO!"
	done

Text_WeakMoo:
	text "MILTANK: …Moo…"
	done

Text_ItsCryIsWeak:
	text "Its cry is weak…"
	done

UnknownText_0x9cd92:
	text "MILTANK: Mooo!"
	done

Text_AskGiveBerry:
	text "Give a BERRY to"
	line "MILTANK?"
	done

Text_GaveBerry:
	text "<PLAYER> gave a"
	line "BERRY to MILTANK."
	done

Text_LittleHealthier:
	text "MILTANK became a"
	line "little healthier!"
	done

Text_QuiteHealthy:
	text "MILTANK became"
	line "quite healthy!"
	done

Text_TotallyHealthy:
	text "MILTANK became"
	line "totally healthy!"
	done

Text_NoBerries:
	text "<PLAYER> has no"
	line "BERRIES…"
	done

Text_RefusedToGiveBerry:
	text "<PLAYER> wouldn't"
	line "give a BERRY."

	para "MILTANK looks sad."
	done

Route39Barn_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $3, 1, ROUTE_39
	warp_def $7, $4, 1, ROUTE_39

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 3
	person_event SPRITE_TWIN, 3, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, 0, 0, TwinScript_0x9cc76, -1
	person_event SPRITE_TWIN, 3, 4, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, 0, 0, TwinScript_0x9cc90, -1
	person_event SPRITE_TAUROS, 3, 3, SPRITEMOVEDATA_16, 0, 0, -1, -1, 0, 0, 0, TaurosScript_0x9ccaa, -1
