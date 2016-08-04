SilverCaveItemRooms_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

MewScript:
	faceplayer
	loadfont
	writetext MewText
	cry MEW
	pause 15
	loadmovesprites
	setevent EVENT_FOUGHT_MEW
	writecode VAR_BATTLETYPE, BATTLETYPE_ROAMING
	loadpokedata MEW, 50
	startbattle
	disappear $4
	returnafterbattle
	end

MewText:
	text "Mew?"
	done

RemoveMew:
	disappear $4
	return

ItemFragment_0x18c65e:
	db MAX_REVIVE, 1

ItemFragment_0x18c660:
	db LIGHT_BALL, 1

SilverCaveItemRooms_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $3, $d, 3, SILVER_CAVE_ROOM_2
	warp_def $f, $7, 4, SILVER_CAVE_ROOM_2

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 3
	person_event SPRITE_POKE_BALL, 3, 6, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x18c65e, EVENT_SILVER_CAVE_ITEM_ROOMS_MAX_REVIVE
	person_event SPRITE_POKE_BALL, 11, 15, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x18c660, EVENT_SILVER_CAVE_ITEM_ROOMS_FULL_RESTORE
	person_event SPRITE_FAIRY, 3, 8, SPRITEMOVEDATA_01, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, 0, 0, MewScript, EVENT_MEW
