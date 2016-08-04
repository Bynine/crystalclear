PewterMart_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ClerkScript_0x1a2dcb:
	loadfont
	pokemart MARTTYPE_STANDARD, MART_PEWTER
	loadmovesprites
	end

YoungsterScript_0x1a2dd2:
	jumptextfaceplayer UnknownText_0x1a2dd8

SuperNerdScript_0x1a2dd5:
	jumptextfaceplayer UnknownText_0x1a2e3a

UnknownText_0x1a2dd8:
	text "Hi! Check out my"
	line "GYARADOS!"

	para "I raised it from a"
	line "MAGIKARP. I can't"

	para "believe how strong"
	line "it has become."
	done

UnknownText_0x1a2e3a:
	text "It seems like some"
	line "fossil #MON"
	cont "escaped the lab."

	para "They're running"
	line "around Route 3..."

	para "I'm afraid to go!"
	line "They're dangerous!"
	done

PewterMart_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 3, PEWTER_CITY
	warp_def $7, $3, 3, PEWTER_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 3
	person_event SPRITE_CLERK, 3, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, 0, 0, ClerkScript_0x1a2dcb, -1
	person_event SPRITE_YOUNGSTER, 2, 9, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, 0, 0, YoungsterScript_0x1a2dd2, -1
	person_event SPRITE_SUPER_NERD, 6, 6, SPRITEMOVEDATA_03, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, 0, 0, SuperNerdScript_0x1a2dd5, -1
