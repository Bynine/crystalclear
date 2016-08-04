CinnabarIsland_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1

	; callbacks
	dbw 5, .FlyPoint

.FlyPoint
	setflag ENGINE_FLYPOINT_CINNABAR
	return

MewtwoScript:
	musicfadeout MUSIC_NONE, $8
	faceplayer
	loadfont
	writetext MewtwoText
	cry MEWTWO
	pause 15
	loadmovesprites
	setevent EVENT_FOUGHT_MEWTWO
	writecode VAR_BATTLETYPE, BATTLETYPE_ROAMING
	loadpokedata MEWTWO, 75
	startbattle
	disappear $3
	returnafterbattle
	end

MewtwoText:
	text "Human…"

	para "I sense a great"
	line "power within"
	cont "you."

	para "Come! Fight me,"
	line "and prove your"
	cont "mettle!"
	done

RemoveMewtwo:
	disappear $3
	return

CinnabarIslandBlue:
	faceplayer
	loadfont
	writetext CinnabarIslandBlueText
	closetext
	loadmovesprites
	playsound SFX_WARP_TO
	applymovement $2, CinnabarIslandBlueTeleport
	disappear $2
	clearevent EVENT_VIRIDIAN_GYM_BLUE
	end

CinnabarIslandGymSign:
	jumptext CinnabarIslandGymSignText

CinnabarIslandSign:
	jumptext CinnabarIslandSignText

CinnabarIslandPokeCenterSign:
	jumpstd pokecentersign

MapCinnabarIslandSignpostItem3:
	dwb EVENT_CINNABAR_ISLAND_HIDDEN_RARE_CANDY, RARE_CANDY

CinnabarIslandBlueTeleport:
	teleport_from
	step_end

CinnabarIslandBlueText:
	text "Who are you?"

	para "Well, it's plain"
	line "to see that you're"
	cont "a trainer…"

	para "My name's BLUE."

	para "I was once the"
	line "CHAMPION, although"

	para "it was for only a"
	line "short time…"

	para "That meddling RED"
	line "did me in…"

	para "Anyway, what do"
	line "you want? You want"

	para "to challenge me or"
	line "something?"

	para "…I hate to say"
	line "it, but I'm not in"

	para "the mood for a"
	line "battle now."

	para "Take a good look"
	line "around you…"

	para "A volcano erupts,"
	line "and just like"

	para "that, a whole town"
	line "disappears."

	para "We can go on win-"
	line "ning and losing in"

	para "#MON. But if"
	line "nature so much as"

	para "twitches, we can"
	line "lose in a second."

	para "…"

	para "That's the way it"
	line "is…"

	para "But, anyway, I'm"
	line "still a trainer."

	para "If I see a strong"
	line "opponent, it makes"
	cont "me want to battle."

	para "If you want to"
	line "battle me, come to"
	cont "the VIRIDIAN GYM."

	para "I'll take you on"
	line "then."
	done

CinnabarIslandGymSignText:
	text "There's a notice"
	line "here…"

	para "CINNABAR GYM has"
	line "relocated to SEA-"
	cont "FOAM ISLANDS."

	para "BLAINE"
	done

CinnabarIslandSignText:
	text "CINNABAR ISLAND"

	para "The Fiery Town of"
	line "Burning Desire"
	done

CinnabarIsland_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $b, $b, 1, CINNABAR_POKECENTER_1F

.XYTriggers:
	db 0

.Signposts:
	db 4
	signpost 11, 12, SIGNPOST_READ, CinnabarIslandPokeCenterSign
	signpost 11, 9, SIGNPOST_READ, CinnabarIslandGymSign
	signpost 7, 7, SIGNPOST_READ, CinnabarIslandSign
	signpost 1, 9, SIGNPOST_ITEM, MapCinnabarIslandSignpostItem3

.PersonEvents:
	db 2
	person_event SPRITE_BLUE, 6, 9, SPRITEMOVEDATA_03, 0, 0, -1, -1, 0, 0, 0, CinnabarIslandBlue, EVENT_BLUE_IN_CINNABAR
	person_event SPRITE_MONSTER, 1, 9, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, 0, 0, MewtwoScript, EVENT_MEWTWO, -1
