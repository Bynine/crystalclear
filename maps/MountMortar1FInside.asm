MountMortar1FInside_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

TrainerPokemaniacMiller:
	trainer EVENT_BEAT_POKEMANIAC_MILLER, POKEMANIAC, MILLER, PokemaniacMillerSeenText, PokemaniacMillerBeatenText, 0, PokemaniacMillerScript

PokemaniacMillerScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x7debd
	closetext
	loadmovesprites
	end

TrainerSupernerdMarkus:
	trainer EVENT_BEAT_SUPER_NERD_MARKUS, SUPER_NERD, MARKUS, SupernerdMarkusSeenText, SupernerdMarkusBeatenText, 0, SupernerdMarkusScript

SupernerdMarkusScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x7df97
	closetext
	loadmovesprites
	end

MountMortar1FBoulder:
	jumpstd strengthboulder

ItemFragment_0x7de7c:
	db ESCAPE_ROPE, 1

ItemFragment_0x7de7e:
	db MAX_REVIVE, 1

ItemFragment_0x7de80:
	db HYPER_POTION, 1

ItemFragment_0x7de82:
	db MAX_POTION, 1

ItemFragment_0x7de84:
	db NUGGET, 1

ItemFragment_0x7de86:
	db IRON, 1

ItemFragment_0x7de88:
	db ULTRA_BALL, 1

MapMountMortar1FInsideSignpostItem0:
	dwb EVENT_MOUNT_MORTAR_1F_INSIDE_HIDDEN_MAX_REPEL, MAX_REPEL
	

PokemaniacMillerSeenText:
	text "I'm not losing"
	line "this time!"
	done

PokemaniacMillerBeatenText:
	text "I lost to some"
	line "kid…?"
	done

UnknownText_0x7debd:
	text "A while back, this"
	line "karate dude wanted"

	para "to battle. He was"
	line "ridiculously good."

	para "He just thrashed"
	line "us silly."

	para "He went in deeper"
	line "saying it was for"

	para "his training. I"
	line "wonder how he is?"
	done

SupernerdMarkusSeenText:
	text "Hey! HUGH!"
	done

SupernerdMarkusBeatenText:
	text "I mistook you for"
	line "someone else…"
	done

UnknownText_0x7df97:
	text "I came to explore"
	line "MT.MORTAR, but I"

	para "got separated from"
	line "my partner…"

	para "Did you run into a"
	line "trainer who uses a"

	para "SEADRA that knows"
	line "ASCEND?"
	done

MountMortar1FInside_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 6
	warp_def $2f, $b, 5, MOUNT_MORTAR_1F_OUTSIDE
	warp_def $2f, $1d, 6, MOUNT_MORTAR_1F_OUTSIDE
	warp_def $27, $5, 8, MOUNT_MORTAR_1F_OUTSIDE
	warp_def $29, $21, 9, MOUNT_MORTAR_1F_OUTSIDE
	warp_def $13, $3, 1, MOUNT_MORTAR_B1F
	warp_def $9, $9, 2, MOUNT_MORTAR_2F_INSIDE

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 11, 30, SIGNPOST_ITEM, MapMountMortar1FInsideSignpostItem0

.PersonEvents:
	db 10
	person_event SPRITE_BOULDER, 43, 21, SPRITEMOVEDATA_19, 0, 0, -1, -1, 0, 0, 0, MountMortar1FBoulder, -1
	person_event SPRITE_POKE_BALL, 38, 35, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7de7c, EVENT_MOUNT_MORTAR_1F_INSIDE_ESCAPE_ROPE
	person_event SPRITE_POKE_BALL, 10, 16, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7de7e, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_REVIVE
	person_event SPRITE_POKE_BALL, 27, 10, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7de80, EVENT_MOUNT_MORTAR_1F_INSIDE_HYPER_POTION
	person_event SPRITE_POKE_BALL, 20, 22, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7de82, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_POTION
	person_event SPRITE_POKE_BALL, 19, 35, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7de84, EVENT_MOUNT_MORTAR_1F_INSIDE_NUGGET
	person_event SPRITE_SUPER_NERD, 43, 33, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, 2, 3, TrainerPokemaniacMiller, -1
	person_event SPRITE_SUPER_NERD, 28, 24, SPRITEMOVEDATA_0A, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, 2, 3, TrainerSupernerdMarkus, -1
	person_event SPRITE_POKE_BALL, 16, 8, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7de86, EVENT_MOUNT_MORTAR_1F_INSIDE_IRON
	person_event SPRITE_POKE_BALL, 17, 17, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7de88, EVENT_MOUNT_MORTAR_1F_INSIDE_ULTRA_BALL
