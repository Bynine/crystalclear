Trainers:

; All trainers follow a basic structure:
	; Name
		; String in format "TEXT@"
	; Type
		; 0: Level, species
		; 1: Level, species, moves
		; 2: Level, species, item
		; 3: Level, species, item, moves
	; Party
		; Up to six monsters following the data type
	; $ff


FalknerGroup:
; ================================
; ================

	; FALKNER (1)
	db "FALKNER@"
	db 1 ; moves

	; party

	db 7, MURKROW
		db FAINT_ATTACK
		db MUD_SLAP
		db 0
		db 0

	db 8, NATU
		db CONFUSION
		db MUD_SLAP
		db 0
		db 0

	db 9, FARFETCH_D
		db MUD_SLAP
		db LEER
		db QUICK_ATTACK
		db 0

	db $ff ; end

; ================
; ================================


WhitneyGroup:
; ================================
; ================

	; WHITNEY (1)
	db "WHITNEY@"
	db 1 ; moves

	; party

	db 18, TEDDIURSA
		db LICK
		db FURY_SWIPES
		db ATTRACT
		db 0

	db 18, SNUBBULL
		db CHARM
		db BITE
		db ATTRACT
		db METRONOME

	db 18, CHANSEY
		db EGG_BOMB
		db SOFTBOILED
		db ATTRACT
		db GROWL

	db 18, CLEFABLE
		db DOUBLESLAP
		db ATTRACT
		db ENCORE
		db METRONOME

	db 20, MILTANK
		db ROLLOUT
		db ATTRACT
		db STOMP
		db MILK_DRINK

	db $ff ; end

; ================
; ================================


BugsyGroup:
; ================================
; ================

	; BUGSY (1)
	db "BUGSY@"
	db 1 ; moves

	; party

	db 14, SPINARAK
		db FURY_CUTTER
		db CONSTRICT
		db POISON_STING
		db 0

	db 14, LEDYBA
		db COMET_PUNCH
		db CONFUSION
		db SUPERSONIC
		db 0

	db 14, YANMA
		db THUNDERSHOCK
		db QUICK_ATTACK
		db FURY_CUTTER
		db 0

	db 16, SCYTHER
		db QUICK_ATTACK
		db LEER
		db FURY_CUTTER
		db 0

	db $ff ; end

; ================
; ================================


MortyGroup:
; ================================
; ================

	; MORTY (1)
	db "MORTY@"
	db 1 ; moves

	; party

	db 22, MISDREAVUS
		db SHADOW_BALL
		db MEAN_LOOK
		db PSYWAVE
		db CONFUSE_RAY

	db 22, WIREGAUST
		db SHADOW_BALL
		db SPARK
		db SCREECH
		db THUNDER_WAVE

	db 23, NINETALES
		db SHADOW_BALL
		db EMBER
		db CONFUSE_RAY
		db QUICK_ATTACK

	db 23, MAROWAK
		db SHADOW_BALL
		db BONE_CLUB
		db HEADBUTT
		db FOCUS_ENERGY

	db 23, CLOYSTER
		db SHADOW_BALL
		db AURORA_BEAM
		db SUPERSONIC
		db WITHDRAW

	db 26, GENGAR
		db HYPNOSIS
		db SHADOW_BALL
		db MEAN_LOOK
		db DREAM_EATER

	db $ff ; end

; ================
; ================================


PryceGroup:
; ================================
; ================

	; PRYCE (1)
	db "PRYCE@"
	db 1 ; moves

	; party

	db 30, SNEASEL
		db SLASH
		db FAINT_ATTACK
		db ICE_PUNCH
		db SWORDS_DANCE

	db 30, LAPRAS
		db SING
		db SURF
		db ICE_BEAM
		db REST

	db 30, JYNX
		db PSYCHIC_M
		db ICE_BEAM
		db AURORA_BEAM
		db REST

	db 32, DELIBIRD
		db PRESENT
		db METRONOME
		db 0
		db 0

	db 31, DEWGONG
		db HEADBUTT
		db ICE_BEAM
		db SURF
		db REST

	db 33, PILOSWINE
		db EARTHQUAKE
		db BODY_SLAM
		db MIST
		db BLIZZARD

	db $ff ; end

; ================
; ================================


JasmineGroup:
; ================================
; ================

	; JASMINE (1)
	db "JASMINE@"
	db 1 ; moves

	; party

	db 28, FORRETRESS
		db ZAP_CANNON
		db SPIKES
		db SANDSTORM
		db DOUBLE_EDGE

	db 29, STARMIE
		db PSYCHIC_M
		db SURF
		db THUNDERBOLT
		db HARDEN

	db 30, SKARMORY
		db DRILL_PECK
		db STEEL_WING
		db SWIFT
		db AGILITY

	db 31, MAGNETON
		db THUNDERBOLT
		db SUPERSONIC
		db SONICBOOM
		db THUNDER_WAVE

	db 30, SAMURAI
		db SWORDS_DANCE
		db AGILITY
		db STEEL_WING
		db SPIKE_CANNON

	db 32, STEELIX
		db SCREECH
		db EARTHQUAKE
		db ROCK_THROW
		db IRON_TAIL

	db $ff ; end

; ================
; ================================


ChuckGroup:
; ================================
; ================

	; CHUCK (1)
	db "CHUCK@"
	db 1 ; moves

	; party

	db 26, PRIMEAPE
		db LEER
		db RAGE
		db KARATE_CHOP
		db DYNAMICPUNCH

	db 26, GOLDUCK
		db SURF
		db ICE_BEAM
		db KARATE_CHOP
		db DYNAMICPUNCH

	db 26, MACHOKE
		db SUBMISSION
		db VITAL_THROW
		db KARATE_CHOP
		db DYNAMICPUNCH

	db 26, ELECTABUZZ
		db AGILITY
		db MIND_READER
		db THUNDERBOLT
		db DYNAMICPUNCH

	db 26, MAGMAR
		db CONFUSE_RAY
		db MIND_READER
		db FLAMETHROWER
		db DYNAMICPUNCH

	db 28, POLIWRATH
		db HYPNOSIS
		db MIND_READER
		db SURF
		db DYNAMICPUNCH

	db $ff ; end

; ================
; ================================


ClairGroup:
; ================================
; ================

	; CLAIR (1)
	db "CLAIR@"
	db 1 ; moves

	; party

	db 38, DUNSPARCE
		db GLARE
		db DIG
		db HORN_DRILL
		db OUTRAGE

	db 38, SLOWKING
		db DRAGONBREATH
		db SURF
		db PSYCHIC_M
		db FLAMETHROWER

	db 38, GOLEM
		db ROCK_SLIDE
		db EARTHQUAKE
		db EXPLOSION
		db DRAGONBREATH

	db 39, DRAGONAIR
		db THUNDER_WAVE
		db ICE_BEAM
		db SLAM
		db DRAGONBREATH
	
	db 40, GYARADOS
		db THRASH
		db WATERFALL
		db SCARY_FACE
		db DRAGONBREATH

	db 42, KINGDRA
		db SMOKESCREEN
		db SURF
		db HYPER_BEAM
		db DRAGONBREATH

	db $ff ; end

; ================
; ================================


Rival1Group:
; ================================
; ================

	; RIVAL1 (1)
	db "?@"
	db 0 ; normal

	; party
	db 6, CHIKORITA

	db $ff ; end

; ================

	; RIVAL1 (2)
	db "?@"
	db 0 ; normal

	; party
	db 6, CYNDAQUIL

	db $ff ; end

; ================

	; RIVAL1 (3)
	db "?@"
	db 0 ; normal

	; party
	db 6, TOTODILE

	db $ff ; end

; ================

	; RIVAL1 (4)
	db "?@"
	db 0 ; normal

	; party
	db 13, GASTLY
	db 13, MACHOP
	db 14, ZUBAT
	db 15, SLUGMA
	db 15, KRABBY
	db 16, CHIKORITA

	db $ff ; end

; ================

	; RIVAL1 (5)
	db "?@"
	db 0 ; normal

	; party
	db 13, GASTLY
	db 13, MACHOP
	db 14, ZUBAT
	db 15, KRABBY
	db 15, EXEGGCUTE
	db 16, CYNDAQUIL

	db $ff ; end

; ================

	; RIVAL1 (6)
	db "?@"
	db 0 ; normal

	; party
	db 13, GASTLY
	db 13, MACHOP
	db 14, ZUBAT
	db 15, EXEGGCUTE
	db 15, SLUGMA
	db 16, TOTODILE

	db $ff ; end

; ================

	; RIVAL1 (7)
	db "?@"
	db 0 ; normal

	; party
	db 19, HAUNTER
	db 19, MAGNEMITE
	db 20, GEODUDE
	db 20, SLUGMA
	db 20, KRABBY
	db 23, BAYLEEF

	db $ff ; end

; ================

	; RIVAL1 (8)
	db "?@"
	db 0 ; normal

	; party
	db 19, HAUNTER
	db 19, MAGNEMITE
	db 20, GEODUDE
	db 20, KRABBY
	db 20, EXEGGCUTE
	db 23, QUILAVA

	db $ff ; end

; ================

	; RIVAL1 (9)
	db "?@"
	db 0 ; normal

	; party
	db 19, HAUNTER
	db 19, MAGNEMITE
	db 20, GEODUDE
	db 20, EXEGGCUTE
	db 20, SLUGMA
	db 23, CROCONAW

	db $ff ; end

; ================

	; RIVAL1 (10)
	db "?@"
	db 0 ; normal

	; party
	db 28, MISDREAVUS
	db 28, SNEASEL
	db 28, GOLBAT
	db 28, HOUNDOOM
	db 28, KINGLER
	db 36, MEGANIUM

	db $ff ; end

; ================

	; RIVAL1 (11)
	db "?@"
	db 0 ; normal

	; party
	db 32, MISDREAVUS
	db 32, SNEASEL
	db 32, GOLBAT
	db 32, VICTREEBEL
	db 32, HOUNDOOM
	db 36, TYPHLOSION

	db $ff ; end

; ================

	; RIVAL1 (12)
	db "?@"
	db 0 ; normal

	; party
	db 32, MISDREAVUS
	db 32, SNEASEL
	db 32, GOLBAT
	db 32, KINGLER
	db 32, VICTREEBEL
	db 36, FERALIGATR

	db $ff ; end

; ================

	; RIVAL1 (13)
	db "?@"
	db 0 ; normal

	; party
	db 36, GOLEM
	db 36, GOLBAT
	db 36, MAROWAK
	db 40, BLASTOISE
	db 40, CHARIZARD
	db 45, MEGANIUM

	db $ff ; end

; ================

	; RIVAL1 (14)
	db "?@"
	db 0 ; normal

	; party
	db 36, GOLEM
	db 36, GOLBAT
	db 36, MAROWAK
	db 40, VENUSAUR
	db 40, BLASTOISE
	db 45, TYPHLOSION

	db $ff ; end

; ================

	; RIVAL1 (15)
	db "?@"
	db 0 ; normal

	; party
	db 36, GOLEM
	db 36, GOLBAT
	db 36, MAROWAK
	db 40, CHARIZARD
	db 40, VENUSAUR
	db 45, FERALIGATR

	db $ff ; end

; ================
; ================================


PokemonProfGroup:
; ================================
; ================
; ================================


WillGroup:
; ================================
; ================

	; WILL (1)
	db "WILL@"
	db 1 ; moves

	; party

	db 41, NOCTOWL
		db PSYCHIC_M
		db HYPNOSIS
		db DREAM_EATER
		db NIGHTMARE

	db 41, STARMIE
		db PSYCHIC_M
		db THUNDER
		db BLIZZARD
		db SURF

	db 42, JYNX
		db DOUBLESLAP
		db LOVELY_KISS
		db ICE_PUNCH
		db PSYCHIC_M

	db 42, EXEGGUTOR
		db REFLECT
		db LEECH_SEED
		db EGG_BOMB
		db PSYCHIC_M

	db 43, SLOWBRO
		db CURSE
		db AMNESIA
		db BODY_SLAM
		db PSYCHIC_M

	db 45, XATU
		db WING_ATTACK
		db FUTURE_SIGHT
		db CONFUSE_RAY
		db PSYCHIC_M

	db $ff ; end

; ================
; ================================


PKMNTrainerGroup:
; ================================
; ================

	; CAL (1)
	db "CAL@"
	db 0 ; normal

	; party
	db 10, CHIKORITA
	db 10, CYNDAQUIL
	db 10, TOTODILE

	db $ff ; end

; ================

	; CAL (2)
	db "CAL@"
	db 0 ; normal

	; party
	db 30, BAYLEEF
	db 30, QUILAVA
	db 30, CROCONAW

	db $ff ; end

; ================

	; CAL (3)
	db "CAL@"
	db 0 ; normal

	; party
	db 50, MEGANIUM
	db 50, TYPHLOSION
	db 50, FERALIGATR

	db $ff ; end

; ================
; ================================


BrunoGroup:
; ================================
; ================

	; BRUNO (1)
	db "BRUNO@"
	db 1 ; moves

	; party

	db 42, HITMONTOP
		db PURSUIT
		db QUICK_ATTACK
		db DIG
		db TRIPLE_KICK

	db 42, HITMONLEE
		db SWAGGER
		db DOUBLE_KICK
		db HI_JUMP_KICK
		db LOVELY_KISS

	db 42, HITMONCHAN
		db THUNDERPUNCH
		db ICE_PUNCH
		db FIRE_PUNCH
		db MACH_PUNCH

	db 43, GRAVELER
		db CROSS_CHOP
		db EARTHQUAKE
		db SANDSTORM
		db ROCK_SLIDE

	db 44, KANGASKHAN
		db DYNAMICPUNCH
		db SURF
		db BODY_SLAM
		db REVERSAL

	db 45, MACHAMP
		db ROCK_SLIDE
		db THUNDERPUNCH
		db VITAL_THROW
		db CROSS_CHOP

	db $ff ; end

; ================
; ================================


KarenGroup:
; ================================
; ================

	; KAREN (1)
	db "KAREN@"
	db 1 ; moves

	; party

	db 42, MURKROW
		db QUICK_ATTACK
		db WHIRLWIND
		db PURSUIT
		db FAINT_ATTACK

	db 43, UMBREON
		db SAND_ATTACK
		db CONFUSE_RAY
		db FAINT_ATTACK
		db MEAN_LOOK

	db 43, ARBOK
		db GLARE
		db SLUDGE_BOMB
		db CRUNCH
		db REST

	db 44, FEAROW
		db DRILL_PECK
		db FAINT_ATTACK
		db AGILITY
		db MEAN_LOOK

	db 45, PERSIAN
		db CRUNCH
		db SLASH
		db PAY_DAY
		db MEAN_LOOK

	db 47, HOUNDOOM
		db ROAR
		db PURSUIT
		db FLAMETHROWER
		db CRUNCH

	db $ff ; end

; ================
; ================================


KogaGroup:
; ================================
; ================

	; KOGA (1)
	db "KOGA@"
	db 1 ; moves

	; party

	db 44, NIDOQUEEN
		db ATTRACT
		db MOON_DANCE
		db SLUDGE_BOMB
		db ICE_BEAM

	db 46, ARIADOS
		db DOUBLE_TEAM
		db SPIDER_WEB
		db BATON_PASS
		db GIGA_DRAIN

	db 45, VENOMOTH
		db SUPERSONIC
		db GUST
		db PSYCHIC_M
		db TOXIC

	db 45, WEEZING
		db SLUDGE_BOMB
		db FLAMETHROWER
		db EXPLOSION
		db TOXIC

	db 45, MUK
		db MINIMIZE
		db ACID_ARMOR
		db SLUDGE_BOMB
		db TOXIC

	db 48, CROBAT
		db DOUBLE_TEAM
		db QUICK_ATTACK
		db WING_ATTACK
		db TOXIC

	db $ff ; end

; ================
; ================================


ChampionGroup:
; ================================
; ================

	; CHAMPION (1)
	db "LANCE@"
	db 1 ; moves

	; party

	db 47, GYARADOS
		db FLAIL
		db RAIN_DANCE
		db SURF
		db HYPER_BEAM

	db 47, KANGASKHAN
		db DYNAMICPUNCH
		db IRON_TAIL
		db SURF
		db HYPER_BEAM

	db 47, RHYDON
		db ROCK_SLIDE
		db EARTHQUAKE
		db HORN_DRILL
		db HYPER_BEAM

	db 47, AERODACTYL
		db WING_ATTACK
		db ANCIENTPOWER
		db ROCK_SLIDE
		db HYPER_BEAM

	db 47, CHARIZARD
		db FLAMETHROWER
		db WING_ATTACK
		db SLASH
		db HYPER_BEAM

	db 50, DRAGONITE
		db FIRE_BLAST
		db SAFEGUARD
		db OUTRAGE
		db HYPER_BEAM

	db $ff ; end

; ================
; ================================


BrockGroup:
; ================================
; ================

	; BROCK (1)
	db "BROCK@"
	db 1 ; moves

	; party

	db 52, RHYDON
		db EARTHQUAKE
		db ROCK_SLIDE
		db FIRE_BLAST
		db HORN_DRILL

	db 52, GRAVELER
		db CROSS_CHOP
		db ROCK_SLIDE
		db ROLLOUT
		db EARTHQUAKE

	db 52, GOLEM
		db FLAMETHROWER
		db ROCK_SLIDE
		db DRAGONBREATH
		db EARTHQUAKE

	db 52, OMASTAR
		db ROCK_SLIDE
		db SURF
		db PROTECT
		db SPIKES

	db 60, ONIX
		db BIND
		db ROCK_SLIDE
		db BIDE
		db SANDSTORM

	db 52, KABUTOPS
		db SLASH
		db SURF
		db ROCK_SLIDE
		db GIGA_DRAIN

	db $ff ; end

; ================
; ================================


MistyGroup:
; ================================
; ================

	; MISTY (1)
	db "MISTY@"
	db 1 ; moves

	; party

	db 50, GOLDUCK
		db SURF
		db DISABLE
		db PSYCH_UP
		db CROSS_CHOP

	db 50, QUAGSIRE
		db SURF
		db AMNESIA
		db EARTHQUAKE
		db RAIN_DANCE

	db 50, SEADRA
		db RAIN_DANCE
		db OCTAZOOKA
		db TOXIC
		db SMOKESCREEN

	db 90, MAGIKARP
		db BUBBLE
		db FLAIL
		db 0
		db 0

	db 50, AZUMARILL
		db SURF
		db RAIN_DANCE
		db MOONLIGHT
		db ROLLOUT

	db 55, LAPRAS
		db SURF
		db PERISH_SONG
		db BLIZZARD
		db RAIN_DANCE

	db $ff ; end

; ================
; ================================


LtSurgeGroup:
; ================================
; ================

	; LT_SURGE (1)
	db "LT.SURGE@"
	db 1 ; moves

	; party

	db 50, RAICHU
		db THUNDER_WAVE
		db QUICK_ATTACK
		db THUNDERBOLT
		db SURF

	db 50, ELECTRODE
		db SCREECH
		db DOUBLE_TEAM
		db SWIFT
		db EXPLOSION

	db 50, MAGNETON
		db LOCK_ON
		db DOUBLE_TEAM
		db SWIFT
		db ZAP_CANNON

	db 50, AMPHAROS
		db COTTON_SPORE
		db WHIRLPOOL
		db THUNDER
		db LIGHT_SCREEN

	db 50, JOLTEON
		db THUNDER_WAVE
		db DOUBLE_KICK
		db PIN_MISSILE
		db THUNDER

	db 55, ELECTABUZZ
		db CROSS_CHOP
		db PSYCHIC_M
		db LIGHT_SCREEN
		db THUNDER

	db $ff ; end

; ================
; ================================


ScientistGroup: ; done
; ================================
; ================

	; SCIENTIST (1)
	db "ROSS@"
	db 0 ; normal

	; party
	db 27, KOFFING
	db 27, PORYGON

	db $ff ; end

; ================

	; SCIENTIST (2)
	db "MITCH@"
	db 0 ; normal

	; party
	db 30, DITTO

	db $ff ; end

; ================

	; SCIENTIST (3)
	db "JED@"
	db 0 ; normal

	; party
	db 27, MAGNEMITE
	db 27, VOLTORB
	db 24, PORYGON
	db 24, PORYGON

	db $ff ; end

; ================

	; SCIENTIST (4)
	db "MARC@"
	db 0 ; normal

	; party
	db 30, PORYGON2

	db $ff ; end

; ================

	; SCIENTIST (5)
	db "RICH@"
	db 1 ; moves

	; party

	db 30, PORYGON
		db CONVERSION
		db CONVERSION2
		db RECOVER
		db TRI_ATTACK

	db $ff ; end

; ================
; ================================


ErikaGroup:
; ================================
; ================

	; ERIKA (1)
	db "ERIKA@"
	db 1 ; moves

	; party

	db 50, TANGELA
		db VINE_WHIP
		db BIND
		db GIGA_DRAIN
		db SLEEP_POWDER

	db 50, JUMPLUFF
		db MEGA_DRAIN
		db LEECH_SEED
		db COTTON_SPORE
		db GIGA_DRAIN

	db 50, VICTREEBEL
		db SUNNY_DAY
		db SYNTHESIS
		db ACID
		db RAZOR_LEAF

	db 55, VILEPLUME
		db SUNNY_DAY
		db SYNTHESIS
		db PETAL_DANCE
		db SOLARBEAM

	db 50, SUNFLORA
		db SUNNY_DAY
		db SYNTHESIS
		db FLAMETHROWER
		db SOLARBEAM

	db 55, BELLOSSOM
		db RAIN_DANCE
		db MOONLIGHT
		db PETAL_DANCE
		db MOON_DANCE

	db $ff ; end

; ================
; ================================


YoungsterGroup: ; done
; ================================
; ================

	; YOUNGSTER (1)
	db "JOEY@"
	db 0 ; normal

	; party
	db 4, RATTATA

	db $ff ; end

; ================

	; YOUNGSTER (2)
	db "MIKEY@"
	db 0 ; normal

	; party
	db 4, PIDGEY
	db 5, SENTRET

	db $ff ; end

; ================

	; YOUNGSTER (3)
	db "ALBERT@"
	db 0 ; normal

	; party
	db 7, RATTATA
	db 8, ZUBAT

	db $ff ; end

; ================

	; YOUNGSTER (4)
	db "GORDON@"
	db 0 ; normal

	; party
	db 12, WOOPER

	db $ff ; end

; ================

	; YOUNGSTER (5)
	db "SAMUEL@"
	db 0 ; normal

	; party
	db 8, RATTATA
	db 10, SANDSHREW
	db 9, SPEAROW
	db 11, METAPOD

	db $ff ; end

; ================

	; YOUNGSTER (6)
	db "IAN@"
	db 0 ; normal

	; party
	db 12, MANKEY
	db 15, DIGLETT

	db $ff ; end

; ================

	; YOUNGSTER (7)
	db "JOEY@"
	db 0 ; normal

	; party
	db 22, RATTATA

	db $ff ; end

; ================

	; YOUNGSTER (8)
	db "JOEY@"
	db 1 ; moves

	; party

	db 34, RATTATA
		db TAIL_WHIP
		db QUICK_ATTACK
		db HYPER_FANG
		db SUPER_FANG

	db $ff ; end

; ================

	; YOUNGSTER (9)
	db "WARREN@"
	db 0 ; normal

	; party
	db 55, FEAROW

	db $ff ; end

; ================

	; YOUNGSTER (10)
	db "JIMMY@"
	db 0 ; normal

	; party
	db 52, RATICATE
	db 53, URSARING

	db $ff ; end

; ================

	; YOUNGSTER (11)
	db "OWEN@"
	db 1 ; moves

	; party
	db 52, ARCANINE
		db FLAME_WHEEL
		db EXTREMESPEED
		db FLAMETHROWER
		db ROAR

	db $ff ; end

; ================

	; YOUNGSTER (12)
	db "JASON@"
	db 0 ; normal

	; party
	db 51, BLISSEY
	db 51, UMBREON
	db 51, CROBAT

	db $ff ; end

; ================

	; YOUNGSTER (13)
	db "JOEY@"
	db 1 ; moves

	; party

	db 70, RATTATA
		db FLAME_WHEEL
		db SUPER_FANG
		db HYPER_FANG
		db PURSUIT

	db $ff ; end

; ================

	; YOUNGSTER (14)
	db "JOEY@"
	db 1 ; moves

	; party

	db 100, RATTATA
		db FLAME_WHEEL
		db SUPER_FANG
		db HYPER_FANG
		db PURSUIT

	db $ff ; end

; ================
; ================================


SchoolboyGroup: ; done
; ================================
; ================

	; SCHOOLBOY (1)
	db "JACK@"
	db 0 ; normal

	; party
	db 16, ODDISH
	db 18, VOLTORB

	db $ff ; end

; ================

	; SCHOOLBOY (2)
	db "KIPP@"
	db 0 ; normal

	; party
	db 44, ELECTRODE
	db 44, MAGNETON
	db 50, STARMIE

	db $ff ; end

; ================

	; SCHOOLBOY (3)
	db "ALAN@"
	db 0 ; normal

	; party
	db 24, TANGELA

	db $ff ; end

; ================

	; SCHOOLBOY (4)
	db "JOHNNY@"
	db 0 ; normal

	; party
	db 50, BELLSPROUT
	db 50, WEEPINBELL
	db 50, VICTREEBEL

	db $ff ; end

; ================

	; SCHOOLBOY (5)
	db "DANNY@"
	db 0 ; normal

	; party
	db 45, JYNX
	db 45, ELECTABUZZ
	db 45, MAGMAR

	db $ff ; end

; ================

	; SCHOOLBOY (6)
	db "TOMMY@"
	db 0 ; normal

	; party
	db 48, XATU
	db 50, ALAKAZAM

	db $ff ; end

; ================

	; SCHOOLBOY (7)
	db "DUDLEY@"
	db 0 ; normal

	; party
	db 48, BELLOSSOM
	db 48, VILEPLUME

	db $ff ; end

; ================

	; SCHOOLBOY (8)
	db "JOE@"
	db 0 ; normal

	; party
	db 48, TANGELA
	db 48, VAPOREON

	db $ff ; end

; ================

	; SCHOOLBOY (9)
	db "BILLY@"
	db 0 ; normal

	; party
	db 43, PARASECT
	db 43, KABUTOPS
	db 43, POLITOED
	db 43, DITTO

	db $ff ; end

; ================

	; SCHOOLBOY (10)
	db "CHAD@"
	db 0 ; normal

	; party
	db 25, MR__MIME

	db $ff ; end

; ================

	; SCHOOLBOY (11)
	db "NATE@"
	db 0 ; normal

	; party
	db 50, LEDIAN
	db 52, EXEGGUTOR

	db $ff ; end

; ================

	; SCHOOLBOY (12)
	db "RICKY@"
	db 0 ; normal

	; party
	db 45, DITTO

	db $ff ; end

; ================

	; SCHOOLBOY (13)
	db "JACK@"
	db 0 ; normal

	; party
	db 14, ODDISH
	db 17, PORYGON

	db $ff ; end

; ================

	; SCHOOLBOY (14)
	db "JACK@"
	db 0 ; normal

	; party
	db 34, VILEPLUME
	db 36, PORYGON2

	db $ff ; end

; ================

	; SCHOOLBOY (15)
	db "ALAN@"
	db 0 ; normal

	; party
	db 20, TANGELA
	db 20, YANMA

	db $ff ; end

; ================

	; SCHOOLBOY (16)
	db "ALAN@"
	db 0 ; normal

	; party
	db 24, NATU
	db 26, TANGELA
	db 27, QUAGSIRE
	db 29, YANMA

	db $ff ; end

; ================

	; SCHOOLBOY (17)
	db "CHAD@"
	db 0 ; normal

	; party
	db 23, MR__MIME
	db 22, MAGNEMITE

	db $ff ; end

; ================

	; SCHOOLBOY (18)
	db "CHAD@"
	db 0 ; normal

	; party
	db 45, MR__MIME
	db 50, MAGNETON

	db $ff ; end

; ================

	; SCHOOLBOY (19)
	db "JACK@"
	db 0 ; normal

	; party
	db 42, VILEPLUME
	db 43, ARCANINE
	db 44, SUNFLORA
	db 45, PORYGON2

	db $ff ; end

; ================

	; SCHOOLBOY (20)
	db "JACK@"
	db 1 ; moves

	; party

	db 54, VILEPLUME
		db SOLARBEAM
		db SLUDGE_BOMB
		db SUNNY_DAY
		db SYNTHESIS

	db 55, ARCANINE
		db SUNNY_DAY
		db FIRE_BLAST
		db TAKE_DOWN
		db FLAME_WHEEL

	db 56, SUNFLORA
		db SOLARBEAM
		db FLAMETHROWER
		db SUNNY_DAY
		db SYNTHESIS

	db 57, PORYGON2
		db SUNNY_DAY
		db ICE_BEAM
		db HIDDEN_POWER
		db RECOVER

	db $ff ; end

; ================

	; SCHOOLBOY (21)
	db "ALAN@"
	db 0 ; normal

	; party
	db 34, XATU
	db 35, TANGELA
	db 36, QUAGSIRE
	db 37, YANMA

	db $ff ; end

; ================

	; SCHOOLBOY (22)
	db "ALAN@"
	db 0 ; normal

	; party
	db 45, XATU
	db 46, TANGELA
	db 48, QUAGSIRE
	db 50, YANMA

	db $ff ; end

; ================

	; SCHOOLBOY (23)
	db "CHAD@"
	db 0 ; normal

	; party
	db 40, MR__MIME
	db 42, MAGNETON

	db $ff ; end

; ================

	; SCHOOLBOY (24)
	db "CHAD@"
	db 0 ; normal

	; party
	db 50, MR__MIME
	db 54, MAGNETON
	db 50, MR__MIME
	db 54, MAGNETON
	db 50, MR__MIME
	db 54, MAGNETON

	db $ff ; end

; ================
; ================================


BirdKeeperGroup: ; done
; ================================
; ================

	; BIRD_KEEPER (1)
	db "ROD@"
	db 0 ; normal

	; party
	db 6, PIDGEY
	db 7, HOOTHOOT

	db $ff ; end

; ================

	; BIRD_KEEPER (2)
	db "ABE@"
	db 0 ; normal

	; party
	db 6, SPEAROW
	db 7, DODUO

	db $ff ; end

; ================

	; BIRD_KEEPER (3)
	db "BRYAN@"
	db 0 ; normal

	; party
	db 14, PIDGEY
	db 19, PIDGEOTTO

	db $ff ; end

; ================

	; BIRD_KEEPER (4)
	db "THEO@"
	db 0 ; normal

	; party
	db 18, PIDGEOTTO
	db 19, PIDGEOTTO
	db 20, PIDGEOTTO
	db 17, PIDGEY
	db 21, PIDGEOTTO

	db $ff ; end

; ================

	; BIRD_KEEPER (5)
	db "TOBY@"
	db 0 ; normal

	; party
	db 17, DODUO
	db 19, FARFETCH_D
	db 20, DODUO

	db $ff ; end

; ================

	; BIRD_KEEPER (6)
	db "DENIS@"
	db 0 ; normal

	; party
	db 20, SPEAROW
	db 22, FEAROW
	db 23, DELIBIRD

	db $ff ; end

; ================

	; BIRD_KEEPER (7)
	db "VANCE@"
	db 0 ; normal

	; party
	db 30, PIDGEOTTO
	db 35, PIDGEOT

	db $ff ; end

; ================

	; BIRD_KEEPER (8)
	db "HANK@"
	db 0 ; normal

	; party
	db 5, PIDGEY
	db 5, HOOTHOOT
	db 5, SPEAROW
	db 50, PIDGEOT
	db 50, NOCTOWL
	db 50, FEAROW

	db $ff ; end

; ================

	; BIRD_KEEPER (9)
	db "ROY@"
	db 0 ; normal

	; party
	db 47, FEAROW
	db 53, MURKROW

	db $ff ; end

; ================

	; BIRD_KEEPER (10)
	db "BORIS@"
	db 0 ; normal

	; party
	db 46, DELIBIRD
	db 48, SKARMORY
	db 50, DODRIO

	db $ff ; end

; ================

	; BIRD_KEEPER (11)
	db "BOB@"
	db 0 ; normal

	; party
	db 60, NOCTOWL

	db $ff ; end

; ================

	; BIRD_KEEPER (12)
	db "JOSE@"
	db 0 ; normal

	; party
	db 36, SAMURAI
	db 36, SKARMORY

	db $ff ; end

; ================

	; BIRD_KEEPER (13)
	db "PETER@"
	db 0 ; normal

	; party
	db 6, PIDGEY
	db 7, DODUO
	db 9, SPEAROW

	db $ff ; end

; ================

	; BIRD_KEEPER (14)
	db "JOSE@"
	db 0 ; normal

	; party
	db 50, SAMURAI
	db 50, SKARMORY

	db $ff ; end

; ================

	; BIRD_KEEPER (15)
	db "PERRY@"
	db 0 ; normal

	; party
	db 54, SAMURAI

	db $ff ; end

; ================

	; BIRD_KEEPER (16)
	db "BRET@"
	db 0 ; normal

	; party
	db 40, PIDGEOT
	db 44, FEAROW

	db $ff ; end

; ================

	; BIRD_KEEPER (17)
	db "JOSE@"
	db 0 ; normal

	; party

	db 60, SAMURAI
	db 60, SKARMORY

	db $ff ; end

; ================

	; BIRD_KEEPER (18)
	db "VANCE@"
	db 0 ; normal

	; party
	db 38, PIDGEOT
	db 38, PIDGEOT

	db $ff ; end

; ================

	; BIRD_KEEPER (19)
	db "VANCE@"
	db 1 ; moves

	; party

	db 58, PIDGEOT
		db TOXIC
		db PROTECT
		db WHIRLWIND
		db FLY

	db 58, PIDGEOT
		db SKY_ATTACK
		db BLIZZARD
		db HYPER_BEAM
		db 0

	db $ff ; end

; ================
; ================================


LassGroup: ; done
; ================================
; ================

	; LASS (1)
	db "CARRIE@"
	db 1 ; moves

	; party

	db 23, SNUBBULL
		db SCARY_FACE
		db CHARM
		db BITE
		db LICK

	db $ff ; end

; ================

	; LASS (2)
	db "BRIDGET@"
	db 0 ; normal

	; party
	db 20, JIGGLYPUFF
	db 20, CLEFAIRY
	db 15, CHANSEY

	db $ff ; end

; ================

	; LASS (3)
	db "ALICE@"
	db 0 ; normal

	; party
	db 46, VILEPLUME
	db 50, ARBOK

	db $ff ; end

; ================

	; LASS (4)
	db "KRISE@"
	db 0 ; normal

	; party
	db 17, ODDISH
	db 18, CUBONE

	db $ff ; end

; ================

	; LASS (5)
	db "CONNIE@"
	db 0 ; normal

	; party
	db 26, AZUMARILL

	db $ff ; end

; ================

	; LASS (6)
	db "LINDA@"
	db 0 ; normal

	; party
	db 40, BULBASAUR
	db 46, IVYSAUR
	db 52, VENUSAUR

	db $ff ; end

; ================

	; LASS (7)
	db "LAURA@"
	db 0 ; normal

	; party
	db 47, BELLOSSOM
	db 44, AZUMARILL
	db 44, OCTILLERY

	db $ff ; end

; ================

	; LASS (8)
	db "SHANNON@"
	db 0 ; normal

	; party
	db 46, PARASECT
	db 46, VENOMOTH
	db 50, HERACROSS

	db $ff ; end

; ================

	; LASS (9)
	db "MICHELLE@"
	db 0 ; normal

	; party
	db 32, HOPPIP
	db 43, SKIPLOOM
	db 50, JUMPLUFF

	db $ff ; end

; ================

	; LASS (10)
	db "DANA@"
	db 1 ; moves

	; party

	db 22, FLAAFFY
		db TACKLE
		db GROWL
		db THUNDERSHOCK
		db THUNDER_WAVE

	db 23, PSYDUCK
		db SCRATCH
		db TAIL_WHIP
		db DISABLE
		db CONFUSION

	db $ff ; end

; ================

	; LASS (11)
	db "ELLEN@"
	db 0 ; normal

	; party
	db 48, WIGGLYTUFF
	db 50, GRANBULL

	db $ff ; end

; ================

	; LASS (12)
	db "CONNIE@"
	db 0 ; normal

	; party
	db 21, MARILL
	db 22, PIKACHU
	db 23, AZUMARILL

	db $ff ; end

; ================

	; LASS (13)
	db "CONNIE@"
	db 0 ; normal

	; party
	db 31, MARILL
	db 33, PIKACHU
	db 35, AZUMARILL

	db $ff ; end

; ================

	; LASS (14)
	db "DANA@"
	db 1 ; moves

	; party

	db 32, FLAAFFY
		db FIRE_PUNCH
		db THUNDERPUNCH
		db COTTON_SPORE
		db THUNDER_WAVE

	db 32, PSYDUCK
		db SURF
		db ICE_BEAM
		db DISABLE
		db PSYCHIC_M

	db $ff ; end

; ================

	; LASS (15)
	db "DANA@"
	db 1 ; moves

	; party

	db 42, FLAAFFY
		db FIRE_PUNCH
		db THUNDERPUNCH
		db COTTON_SPORE
		db THUNDER_WAVE

	db 42, PSYDUCK
		db SURF
		db ICE_BEAM
		db DISABLE
		db PSYCHIC_M

	db $ff ; end

; ================

	; LASS (16)
	db "DANA@"
	db 1 ; moves

	; party

	db 52, FLAAFFY
		db FIRE_PUNCH
		db THUNDERBOLT
		db COTTON_SPORE
		db THUNDER_WAVE

	db 54, PSYDUCK
		db SURF
		db ICE_BEAM
		db DISABLE
		db PSYCHIC_M

	db $ff ; end

; ================

	; LASS (17)
	db "DANA@"
	db 1 ; moves

	; party

	db 64, FLAAFFY
		db FIRE_PUNCH
		db THUNDER
		db COTTON_SPORE
		db THUNDER_WAVE

	db 75, PSYDUCK
		db SURF
		db ICE_BEAM
		db DISABLE
		db PSYCHIC_M

	db $ff ; end

; ================
; ================================


JanineGroup:
; ================================
; ================

	; JANINE (1)
	db "JANINE@"
	db 1 ; moves

	; party

	db 50, CROBAT
		db SCREECH
		db SLUDGE_BOMB
		db CONFUSE_RAY
		db WING_ATTACK

	db 50, SUDOWOODO
		db ROCK_SLIDE
		db MIMIC
		db EARTHQUAKE
		db LOW_KICK

	db 50, WEEZING
		db POISON_GAS
		db SLUDGE_BOMB
		db TOXIC
		db EXPLOSION

	db 50, FORRETRESS
		db SPIKES
		db ZAP_CANNON
		db SWARM
		db EXPLOSION

	db 50, ARIADOS
		db KINESIS
		db GIGA_DRAIN
		db STRING_SHOT
		db NIGHT_SHADE

	db 55, VENOMOTH
		db SWARM
		db DOUBLE_TEAM
		db SLUDGE_BOMB
		db PSYCHIC_M

	db $ff ; end

; ================
; ================================


CooltrainerMGroup: ; done
; ================================
; ================

	; COOLTRAINERM (1)
	db "NICK@"
	db 1 ; moves

	; party

	db 32, CHARMANDER
		db FLAMETHROWER
		db SMOKESCREEN
		db RAGE
		db SCARY_FACE

	db 32, SQUIRTLE
		db WITHDRAW
		db SURF
		db BITE
		db CURSE

	db 32, BULBASAUR
		db LEECH_SEED
		db POISONPOWDER
		db SLEEP_POWDER
		db RAZOR_LEAF

	db $ff ; end

; ================

	; COOLTRAINERM (2)
	db "AARON@"
	db 0 ; normal

	; party
	db 32, IVYSAUR
	db 32, CHARMELEON
	db 32, WARTORTLE

	db $ff ; end

; ================

	; COOLTRAINERM (3)
	db "PAUL@"
	db 0 ; normal

	; party
	db 36, DUNSPARCE
	db 36, DUNSPARCE
	db 36, DUNSPARCE

	db $ff ; end

; ================

	; COOLTRAINERM (4)
	db "CODY@"
	db 0 ; normal

	; party
	db 42, GEODUDE
	db 42, SLOWPOKE
	db 42, HORSEA
	db 80, MAGIKARP

	db $ff ; end

; ================

	; COOLTRAINERM (5)
	db "MIKE@"
	db 0 ; normal

	; party
	db 45, DRAGONAIR

	db $ff ; end

; ================

	; COOLTRAINERM (6)
	db "GAVEN@"
	db 1 ; moves

	; party

	db 46, VICTREEBEL
		db WRAP
		db TOXIC
		db CRUNCH
		db RAZOR_LEAF

	db 46, KINGLER
		db SURF
		db STOMP
		db GUILLOTINE
		db CRABHAMMER

	db 46, FLAREON
		db SAND_ATTACK
		db QUICK_ATTACK
		db BITE
		db FLAMETHROWER

	db $ff ; end

; ================

	; COOLTRAINERM (7)
	db "GAVEN@"
	db 3 ; item + moves

	; party

	db 59, VICTREEBEL, KINGS_ROCK
		db GIGA_DRAIN
		db TOXIC
		db SLUDGE_BOMB
		db RAZOR_LEAF

	db 59, KINGLER, KINGS_ROCK
		db SURF
		db STOMP
		db GUILLOTINE
		db CRABHAMMER

	db 59, FLAREON, KINGS_ROCK
		db FLAMETHROWER
		db QUICK_ATTACK
		db BITE
		db FIRE_SPIN

	db $ff ; end

; ================

	; COOLTRAINERM (8)
	db "RYAN@"
	db 1 ; moves

	; party

	db 32, PIDGEOT
		db SAND_ATTACK
		db QUICK_ATTACK
		db WHIRLWIND
		db WING_ATTACK

	db 34, ELECTABUZZ
		db THUNDERPUNCH
		db LIGHT_SCREEN
		db SWIFT
		db SCREECH

	db $ff ; end

; ================

	; COOLTRAINERM (9)
	db "JAKE@"
	db 1 ; moves

	; party

	db 42, SNEASEL
		db BLIZZARD
		db FAINT_ATTACK
		db SLASH
		db SWORDS_DANCE

	db 44, GOLDUCK
		db CROSS_CHOP
		db SCREECH
		db PSYCH_UP
		db FURY_SWIPES

	db $ff ; end

; ================

	; COOLTRAINERM (10)
	db "GAVEN@"
	db 3 ; item + moves

	; party

	db 39, VICTREEBEL, KINGS_ROCK
		db GIGA_DRAIN
		db TOXIC
		db SLUDGE_BOMB
		db RAZOR_LEAF

	db 39, KINGLER, KINGS_ROCK
		db SURF
		db STOMP
		db GUILLOTINE
		db CRABHAMMER

	db 39, FLAREON, KINGS_ROCK
		db FLAMETHROWER
		db QUICK_ATTACK
		db BITE
		db FIRE_SPIN

	db $ff ; end

; ================

	; COOLTRAINERM (11)
	db "BLAKE@"
	db 1 ; moves

	; party

	db 42, MAGNETON
		db THUNDERBOLT
		db SUPERSONIC
		db SWIFT
		db SCREECH

	db 42, QUAGSIRE
		db WATER_GUN
		db SLAM
		db AMNESIA
		db EARTHQUAKE

	db 42, EXEGGUTOR
		db LEECH_SEED
		db CONFUSION
		db SLEEP_POWDER
		db SOLARBEAM

	db $ff ; end

; ================

	; COOLTRAINERM (12)
	db "BRIAN@"
	db 1 ; moves

	; party

	db 50, SANDSLASH
		db EARTHQUAKE
		db POISON_STING
		db SLASH
		db SWIFT

	db $ff ; end

; ================

	; COOLTRAINERM (13)
	db "ERICK@"
	db 0 ; normal

	; party
	db 14, BULBASAUR
	db 14, CHARMANDER
	db 14, SQUIRTLE

	db $ff ; end

; ================

	; COOLTRAINERM (14)
	db "ANDY@"
	db 0 ; normal

	; party
	db 14, CHIKORITA
	db 14, CYNDAQUIL
	db 14, TOTODILE

	db $ff ; end

; ================

	; COOLTRAINERM (15)
	db "TYLER@"
	db 0 ; normal

	; party
	db 14, PICHU
	db 14, TYROGUE
	db 14, EEVEE

	db $ff ; end

; ================

	; COOLTRAINERM (16)
	db "SEAN@"
	db 0 ; normal

	; party
	db 50, FLAREON
	db 50, TANGELA
	db 50, TAUROS

	db $ff ; end

; ================

	; COOLTRAINERM (17)
	db "KEVIN@"
	db 0 ; normal

	; party
	db 54, RHYHORN
	db 54, CHARMELEON
	db 54, PSYDUCK

	db $ff ; end

; ================

	; COOLTRAINERM (18)
	db "STEVE@"
	db 0 ; normal

	; party
	db 15, BULBASAUR
	db 15, CHARMANDER
	db 15, SQUIRTLE

	db $ff ; end

; ================

	; COOLTRAINERM (19)
	db "ALLEN@"
	db 1 ; moves

	; party

	db 35, CHARMELEON
		db FLAME_WHEEL
		db IRON_TAIL
		db RAGE
		db SCARY_FACE

	db $ff ; end

; ================

	; COOLTRAINERM (20)
	db "DARIN@"
	db 1 ; moves

	; party

	db 44, DRAGONAIR
		db WRAP
		db SURF
		db DRAGON_RAGE
		db SLAM

	db $ff ; end

; ================
; ================================


CooltrainerFGroup: ;done
; ================================
; ================

	; COOLTRAINERF (1)
	db "GWEN@"
	db 0 ; normal

	; party
	db 32, EEVEE
	db 25, FLAREON
	db 25, VAPOREON
	db 25, JOLTEON

	db $ff ; end

; ================

	; COOLTRAINERF (2)
	db "LOIS@"
	db 1 ; moves

	; party

	db 30, SKIPLOOM
		db SYNTHESIS
		db POISONPOWDER
		db MEGA_DRAIN
		db LEECH_SEED

	db 30, NINETALES
		db EMBER
		db QUICK_ATTACK
		db CONFUSE_RAY
		db SAFEGUARD

	db $ff ; end

; ================

	; COOLTRAINERF (3)
	db "FRAN@"
	db 0 ; normal

	; party
	db 45, SLOWKING

	db $ff ; end

; ================

	; COOLTRAINERF (4)
	db "LOLA@"
	db 0 ; normal

	; party
	db 35, DRATINI
	db 40, DRAGONAIR

	db $ff ; end

; ================

	; COOLTRAINERF (5)
	db "KATE@"
	db 0 ; normal

	; party
	db 30, SHELLDER
	db 33, CLOYSTER

	db $ff ; end

; ================

	; COOLTRAINERF (6)
	db "IRENE@"
	db 0 ; normal

	; party
	db 24, GOLDEEN
	db 24, SEAKING

	db $ff ; end

; ================

	; COOLTRAINERF (7)
	db "KELLY@"
	db 0 ; normal

	; party
	db 36, BLASTOISE
	db 36, FERALIGATR
	db 39, AZUMARILL

	db $ff ; end

; ================

	; COOLTRAINERF (8)
	db "JOYCE@"
	db 1 ; moves

	; party

	db 35, PIKACHU
		db QUICK_ATTACK
		db DOUBLE_TEAM
		db RAIN_DANCE
		db THUNDER

	db 44, BLASTOISE
		db BITE
		db CURSE
		db SURF
		db RAIN_DANCE

	db $ff ; end

; ================

	; COOLTRAINERF (9)
	db "BETH@"
	db 1 ; moves

	; party

	db 50, RAPIDASH
		db STOMP
		db FIRE_SPIN
		db FURY_ATTACK
		db AGILITY

	db $ff ; end

; ================

	; COOLTRAINERF (10)
	db "REENA@"
	db 0 ; normal

	; party
	db 36, STARMIE
	db 36, NIDOQUEEN
	db 36, CHARIZARD

	db $ff ; end

; ================

	; COOLTRAINERF (11)
	db "MEGAN@"
	db 1 ; moves

	; party

	db 30, BULBASAUR
		db SUNNY_DAY
		db LEECH_SEED
		db POISONPOWDER
		db RAZOR_LEAF

	db 40, IVYSAUR
		db GROWL
		db LEECH_SEED
		db POISONPOWDER
		db RAZOR_LEAF

	db 50, VENUSAUR
		db BODY_SLAM
		db SLEEP_POWDER
		db SLUDGE_BOMB
		db SOLARBEAM

	db $ff ; end

; ================

	; COOLTRAINERF (12)
	db "BETH@"
	db 0 ; normal

	; party

	db 48, TAUROS
	db 48, MILTANK

	db $ff ; end

; ================

	; COOLTRAINERF (13)
	db "CAROL@"
	db 0 ; normal

	; party
	db 42, ELECTRODE
	db 42, STARMIE
	db 42, NINETALES

	db $ff ; end

; ================

	; COOLTRAINERF (14)
	db "QUINN@"
	db 0 ; normal

	; party
	db 50, VENUSAUR
	db 50, STARMIE

	db $ff ; end

; ================

	; COOLTRAINERF (15)
	db "EMMA@"
	db 0 ; normal

	; party
	db 30, POLIWHIRL
	db 30, TANGELA
	db 30, PONYTA

	db $ff ; end

; ================

	; COOLTRAINERF (16)
	db "CYBIL@"
	db 1 ; moves

	; party

	db 30, BUTTERFREE
		db CONFUSION
		db SLEEP_POWDER
		db WHIRLWIND
		db GUST

	db 31, BELLOSSOM
		db MEGA_DRAIN
		db STUN_SPORE
		db ACID
		db SOLARBEAM

	db $ff ; end

; ================

	; COOLTRAINERF (17)
	db "JENN@"
	db 0 ; normal

	; party
	db 25, KRABBY
	db 30, STARMIE

	db $ff ; end

; ================

	; COOLTRAINERF (18)
	db "BETH@"
	db 3 ; item + moves

	; party

	db 55, RAPIDASH, FOCUS_BAND
		db STOMP
		db FIRE_SPIN
		db FURY_ATTACK
		db FIRE_BLAST

	db $ff ; end

; ================

	; COOLTRAINERF (19)
	db "REENA@"
	db 0 ; normal

	; party
	db 30, NIDORAN_F
	db 40, NIDORINA
	db 50, NIDOQUEEN

	db $ff ; end

; ================

	; COOLTRAINERF (20)
	db "REENA@"
	db 3 ; item + moves

	; party

	db 48, STARMIE, TWISTEDSPOON
		db DOUBLE_TEAM
		db PSYCHIC_M
		db WATERFALL
		db CONFUSE_RAY

	db 50, NIDOQUEEN, PINK_BOW
		db EARTHQUAKE
		db DOUBLE_KICK
		db TOXIC
		db BODY_SLAM

	db 52, STARMIE, NEVERMELTICE
		db BLIZZARD
		db PSYCHIC_M
		db WATERFALL
		db RECOVER

	db $ff ; end

; ================

	; COOLTRAINERF (21)
	db "CARA@"
	db 1 ; moves

	; party

	db 38, HORSEA
		db SMOKESCREEN
		db LEER
		db WHIRLPOOL
		db TWISTER

	db 40, HORSEA
		db SMOKESCREEN
		db LEER
		db WHIRLPOOL
		db TWISTER

	db 42, SEADRA
		db SWIFT
		db LEER
		db WATERFALL
		db TWISTER

	db $ff ; end

; ================
; ================================


BeautyGroup: ;done
; ================================
; ================

	; BEAUTY (1)
	db "VICTORIA@"
	db 0 ; normal

	; party
	db 8, SENTRET
	db 11, SENTRET
	db 14, SENTRET
	db 17, SENTRET
	db 20, SENTRET
	db 23, SENTRET

	db $ff ; end

; ================

	; BEAUTY (2)
	db "SAMANTHA@"
	db 1 ; moves

	; party

	db 17, MEOWTH
		db SCRATCH
		db GROWL
		db BITE
		db PAY_DAY

	db 17, MEOWTH
		db SCRATCH
		db GROWL
		db BITE
		db SLASH

	db $ff ; end

; ================

	; BEAUTY (3)
	db "JULIE@"
	db 0 ; normal

	; party
	db 19, FURRET

	db $ff ; end

; ================

	; BEAUTY (4)
	db "JACLYN@"
	db 0 ; normal

	; party
	db 19, SNUBBULL

	db $ff ; end

; ================

	; BEAUTY (5)
	db "BRENDA@"
	db 0 ; normal

	; party
	db 19, EEVEE

	db $ff ; end

; ================

	; BEAUTY (6)
	db "CASSIE@"
	db 0 ; normal

	; party
	db 35, VILEPLUME
	db 35, BUTTERFREE

	db $ff ; end

; ================

	; BEAUTY (7)
	db "CAROLINE@"
	db 0 ; normal

	; party
	db 40, AZUMARILL
	db 40, DEWGONG
	db 42, LAPRAS

	db $ff ; end

; ================

	; BEAUTY (8)
	db "CARLENE@"
	db 0 ; normal

	; party
	db 16, SUDOWOODO
	db 16, REMORAID
	db 14, ONIX

	db $ff ; end

; ================

	; BEAUTY (9)
	db "JESSICA@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (10)
	db "RACHAEL@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (11)
	db "ANGELICA@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (12)
	db "KENDRA@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (13)
	db "VERONICA@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (14)
	db "JULIA@"
	db 0 ; normal

	; party
	db 47, SUDOWOODO

	db $ff ; end

; ================

	; BEAUTY (15)
	db "THERESA@"
	db 0 ; normal

	; party
	db 15, SENTRET

	db $ff ; end

; ================

	; BEAUTY (16)
	db "VALERIE@"
	db 1 ; moves

	; party

	db 25, HOPPIP
		db SYNTHESIS
		db TAIL_WHIP
		db TACKLE
		db POISONPOWDER

	db 25, SKIPLOOM
		db SYNTHESIS
		db TAIL_WHIP
		db TACKLE
		db STUN_SPORE

	db $ff ; end

; ================

	; BEAUTY (17)
	db "OLIVIA@"
	db 0 ; normal

	; party
	db 23, CORSOLA

	db $ff ; end

; ================
; ================================


PokemaniacGroup: ;done
; ================================
; ================

	; POKEMANIAC (1)
	db "LARRY@"
	db 0 ; normal

	; party
	db 11, SLOWPOKE

	db $ff ; end

; ================

	; POKEMANIAC (2)
	db "ANDREW@"
	db 0 ; normal

	; party
	db 22, MAROWAK
	db 24, NINETALES

	db $ff ; end

; ================

	; POKEMANIAC (3)
	db "CALVIN@"
	db 0 ; normal

	; party
	db 30, KANGASKHAN

	db $ff ; end

; ================

	; POKEMANIAC (4)
	db "SHANE@"
	db 0 ; normal

	; party
	db 17, ARCANINE
	db 17, CLEFABLE
	db 17, SUNFLORA
	db 17, RAICHU

	db $ff ; end

; ================

	; POKEMANIAC (5)
	db "BEN@"
	db 0 ; normal

	; party
	db 18, SLOWKING
	db 18, SLOWBRO

	db $ff ; end

; ================

	; POKEMANIAC (6)
	db "BRENT@"
	db 0 ; normal

	; party
	db 26, LICKITUNG
	db 26, AIPOM

	db $ff ; end

; ================

	; POKEMANIAC (7)
	db "RON@"
	db 0 ; normal

	; party
	db 26, NIDOKING

	db $ff ; end

; ================

	; POKEMANIAC (8)
	db "ETHAN@"
	db 0 ; normal

	; party
	db 35, RHYHORN
	db 35, RHYDON

	db $ff ; end

; ================

	; POKEMANIAC (9)
	db "BRENT@"
	db 0 ; normal

	; party
	db 30, KANGASKHAN

	db $ff ; end

; ================

	; POKEMANIAC (10)
	db "BRENT@"
	db 1 ; moves

	; party

	db 32, PORYGON2
		db RECOVER
		db PSYCHIC_M
		db CONVERSION2
		db TRI_ATTACK

	db 64, PORYGON
		db RECOVER
		db PSYCHIC_M
		db CONVERSION
		db TRI_ATTACK

	db $ff ; end

; ================

	; POKEMANIAC (11)
	db "ISSAC@"
	db 1 ; moves

	; party

	db 16, LICKITUNG
		db LICK
		db SUPERSONIC
		db CUT
		db 0

	db $ff ; end

; ================

	; POKEMANIAC (12)
	db "DONALD@"
	db 0 ; normal

	; party
	db 15, SLOWPOKE
	db 16, DRATINI

	db $ff ; end

; ================

	; POKEMANIAC (13)
	db "ZACH@"
	db 0 ; normal

	; party
	db 35, RHYHORN

	db $ff ; end

; ================

	; POKEMANIAC (14)
	db "BRENT@"
	db 1 ; moves

	; party

	db 46, CHANSEY
		db ROLLOUT
		db ATTRACT
		db EGG_BOMB
		db SOFTBOILED

	db 38, BLISSEY
		db ICE_BEAM
		db ATTRACT
		db MINIMIZE
		db SOFTBOILED

	db $ff ; end

; ================

	; POKEMANIAC (15)
	db "MILLER@"
	db 0 ; normal

	; party
	db 20, NIDOKING
	db 20, NIDOQUEEN

	db $ff ; end

; ================
; ================================


GruntMGroup: ;done
; ================================
; ================

	; GRUNTM (1)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 14, KOFFING

	db $ff ; end

; ================

	; GRUNTM (2)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 7, RATTATA
	db 8, ZUBAT
	db 9, EKANS

	db $ff ; end

; ================

	; GRUNTM (3)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 26, RATICATE
	db 26, PERSIAN

	db $ff ; end

; ================

	; GRUNTM (4)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 26, SNEASEL
	db 28, MUK

	db $ff ; end

; ================

	; GRUNTM (5)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 20, RATTATA
	db 22, RATTATA
	db 24, RATTATA
	db 26, RATTATA
	db 28, RATTATA
	db 30, RATTATA

	db $ff ; end

; ================

	; GRUNTM (6)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 30, MACHOKE
	db 30, GOLBAT

	db $ff ; end

; ================

	; GRUNTM (7)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 23, ELECTABUZZ
	db 26, GRIMER
	db 23, MAGMAR
	db 26, KOFFING

	db $ff ; end

; ================

	; GRUNTM (8)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 35, WEEZING

	db $ff ; end

; ================

	; GRUNTM (9)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 32, RATICATE
	db 32, WEEZING
	db 32, SNEASEL

	db $ff ; end

; ================

	; GRUNTM (10)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 23, ZUBAT
	db 24, ZUBAT
	db 25, ZUBAT
	db 26, ZUBAT
	db 27, ZUBAT
	db 28, GOLBAT

	db $ff ; end

; ================

	; GRUNTM (11)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 26, MUK
	db 26, HOUNDOUR
	db 28, FEAROW

	db $ff ; end

; ================

	; GRUNTM (12)
	db "EXECUTIVE@"
	db 0 ; normal

	; party
	db 30, MAGCARGO
	db 30, HOUNDOOM

	db $ff ; end

; ================

	; GRUNTM (13)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 27, FEAROW
	db 30, RATICATE

	db $ff ; end

; ================

	; GRUNTM (14)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 31, RATICATE
	db 30, GLIGAR
	db 32, BEEDRILL

	db $ff ; end

; ================

	; GRUNTM (15)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 32, MUK
	db 32, WEEZING

	db $ff ; end

; ================

	; GRUNTM (16)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 24, HOUNDOUR
	db 25, EKANS
	db 26, SANDSHREW
	db 27, RATICATE

	db $ff ; end

; ================

	; GRUNTM (17)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 27, GOLBAT
	db 28, PARASECT

	db $ff ; end

; ================

	; GRUNTM (18)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 26, GRIMER
	db 27, GOLBAT
	db 27, FEAROW

	db $ff ; end

; ================

	; GRUNTM (19)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 24, VENONAT
	db 25, PARAS
	db 26, WEEPINBELL

	db $ff ; end

; ================

	; GRUNTM (20)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 22, DROWZEE
	db 22, KADABRA

	db $ff ; end

; ================

	; GRUNTM (21)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 20, SNEASEL
	db 21, SNEASEL
	db 22, SNEASEL

	db $ff ; end

; ================

	; GRUNTM (22)
	db "EXECUTIVE@"
	db 0 ; normal

	; party
	db 48, GOLBAT

	db $ff ; end

; ================

	; GRUNTM (23)
	db "EXECUTIVE@"
	db 0 ; normal

	; party
	db 24, WEEZING
	db 24, SANDSLASH
	db 24, MUK
	db 24, GOLBAT
	db 24, KADABRA
	db 24, MAGNETON

	db $ff ; end

; ================

	; GRUNTM (24)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 30, WEEZING
	db 32, WEEPINBELL

	db $ff ; end

; ================

	; GRUNTM (25)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 24, SLUGMA
	db 24, DITTO
	db 24, MUK

	db $ff ; end

; ================

	; GRUNTM (26)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 15, RATTATA
	db 11, RATTATA
	db 19, RATTATA
	db 5,  RATTATA
	db 2,  RATTATA
	db 24, RATTATA

	db $ff ; end

; ================

	; GRUNTM (27)
	db "EXECUTIVE@"
	db 0 ; normal

	; party
	db 20, GOLBAT
	db 20, KADABRA
	db 20, MAGNEMITE

	db $ff ; end

; ================

	; GRUNTM (28)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 27, RATICATE
	db 28, MUK

	db $ff ; end

; ================

	; GRUNTM (29)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 8, RATTATA
	db 9, PARAS
	db 10, SANDSHREW
	db 11, KAKUNA

	db $ff ; end

; ================

	; GRUNTM (30)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 26, BEEDRILL
	db 28, GOLBAT
	db 30, ARBOK

	db $ff ; end

; ================

	; GRUNTM (31)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 38, BEEDRILL
	db 40, PINSIR

	db $ff ; end

; ================
; ================================


GentlemanGroup: ;done
; ================================
; ================

	; GENTLEMAN (1)
	db "PRESTON@"
	db 0 ; normal

	; party
	db 24, GROWLITHE

	db $ff ; end

; ================

	; GENTLEMAN (2)
	db "EDWARD@"
	db 0 ; normal

	; party
	db 39, PERSIAN

	db $ff ; end

; ================

	; GENTLEMAN (3)
	db "GREGORY@"
	db 0 ; normal

	; party
	db 44, RAICHU
	db 44, AMPHAROS

	db $ff ; end

; ================

	; GENTLEMAN (4)
	db "VIRGIL@"
	db 0 ; normal

	; party
	db 24, PONYTA

	db $ff ; end

; ================

	; GENTLEMAN (5)
	db "ALFRED@"
	db 0 ; normal

	; party
	db 23, NOCTOWL
	db 23, XATU

	db $ff ; end

; ================
; ================================


SkierGroup: ;done
; ================================
; ================

	; SKIER (1)
	db "ROXANNE@"
	db 0 ; normal

	; party
	db 26, SMOOCHUM
	db 24, SMOOCHUM
	db 22, SMOOCHUM
	db 30, JYNX

	db $ff ; end

; ================

	; SKIER (2)
	db "CLARISSA@"
	db 0 ; normal

	; party
	db 30, DEWGONG

	db $ff ; end

; ================
; ================================


TeacherGroup: ;done
; ================================
; ================

	; TEACHER (1)
	db "COLETTE@"
	db 0 ; normal

	; party
	db 48, CLEFABLE

	db $ff ; end

; ================

	; TEACHER (2)
	db "HILLARY@"
	db 0 ; normal

	; party
	db 40, AIPOM
	db 44, PUPITAR

	db $ff ; end

; ================

	; TEACHER (3)
	db "SHIRLEY@"
	db 0 ; normal

	; party
	db 32, HYPNO
	db 32, KADABRA

	db $ff ; end

; ================
; ================================


SabrinaGroup:
; ================================
; ================

	; SABRINA (1)
	db "SABRINA@"
	db 1 ; moves

	; party

	db 50, LEDIAN
		db BATON_PASS
		db SWORDS_DANCE
		db AGILITY
		db PSYCHIC_M

	db 50, HYPNO
		db HYPNOSIS
		db DREAM_EATER
		db NIGHTMARE
		db PSYCHIC_M

	db 50, SLOWKING
		db DRAGONBREATH
		db WHIRLPOOL
		db SURF
		db PSYCHIC_M

	db 50, ESPEON
		db SAND_ATTACK
		db QUICK_ATTACK
		db SWIFT
		db PSYCHIC_M

	db 50, MR__MIME
		db BARRIER
		db REFLECT
		db BATON_PASS
		db PSYCHIC_M

	db 55, ALAKAZAM
		db RECOVER
		db FUTURE_SIGHT
		db PSYCHIC_M
		db REFLECT

	db $ff ; end

; ================
; ================================


BugCatcherGroup: ;done
; ================================
; ================

	; BUG_CATCHER (1)
	db "DON@"
	db 0 ; normal

	; party
	db 3, CATERPIE
	db 3, WEEDLE
	db 3, LEDYBA
	db 3, SPINARAK

	db $ff ; end

; ================

	; BUG_CATCHER (2)
	db "ROB@"
	db 0 ; normal

	; party
	db 54, BEEDRILL
	db 54, BUTTERFREE

	db $ff ; end

; ================

	; BUG_CATCHER (3)
	db "ED@"
	db 0 ; normal

	; party
	db 80, WEEDLE
	db 70, KAKUNA
	db 60, BEEDRILL

	db $ff ; end

; ================

	; BUG_CATCHER (4)
	db "WADE@"
	db 0 ; normal

	; party
	db 2, CATERPIE
	db 2, CATERPIE
	db 5, WEEDLE
	db 2, CATERPIE

	db $ff ; end

; ================

	; BUG_CATCHER (5)
	db "BENNY@"
	db 0 ; normal

	; party
	db 8, WEEDLE
	db 10, KAKUNA
	db 14, BEEDRILL

	db $ff ; end

; ================

	; BUG_CATCHER (6)
	db "AL@"
	db 0 ; normal

	; party
	db 14, METAPOD
	db 14, KAKUNA
	db 5, SCYTHER

	db $ff ; end

; ================

	; BUG_CATCHER (7)
	db "JOSH@"
	db 0 ; normal

	; party
	db 13, BEEDRILL

	db $ff ; end

; ================

	; BUG_CATCHER (8)
	db "ARNIE@"
	db 0 ; normal

	; party
	db 18, VENONAT
	db 19, PARAS

	db $ff ; end

; ================

	; BUG_CATCHER (9)
	db "KEN@"
	db 0 ; normal

	; party
	db 42, ARIADOS
	db 44, PINSIR
	db 46, SCYTHER

	db $ff ; end

; ================

	; BUG_CATCHER (10)
	db "WADE@"
	db 0 ; normal

	; party
	db 8, METAPOD
	db 8, METAPOD
	db 15, KAKUNA
	db 8, METAPOD

	db $ff ; end

; ================

	; BUG_CATCHER (11)
	db "WADE@"
	db 0 ; normal

	; party
	db 14, BUTTERFREE
	db 14, BUTTERFREE
	db 21, BEEDRILL
	db 14, BUTTERFREE

	db $ff ; end

; ================

	; BUG_CATCHER (12)
	db "DOUG@"
	db 0 ; normal

	; party
	db 90, CATERPIE
	db 70, METAPOD
	db 50, BUTTERFREE

	db $ff ; end

; ================

	; BUG_CATCHER (13)
	db "ARNIE@"
	db 0 ; normal

	; party
	db 22, VENOMOTH
	db 24, PARASECT

	db $ff ; end

; ================

	; BUG_CATCHER (14)
	db "ARNIE@"
	db 1 ; moves

	; party

	db 22, BEEDRILL
	db 24, VENOMOTH
	db 27, PARASECT

	db $ff ; end

; ================

	; BUG_CATCHER (15)
	db "WADE@"
	db 1 ; moves

	; party

	db 26, BUTTERFREE
		db CONFUSION
		db POISONPOWDER
		db SUPERSONIC
		db WHIRLWIND

	db 26, BUTTERFREE
		db CONFUSION
		db STUN_SPORE
		db SUPERSONIC
		db WHIRLWIND

	db 34, BEEDRILL
		db FURY_ATTACK
		db FOCUS_ENERGY
		db TWINEEDLE
		db RAGE

	db 26, BUTTERFREE
		db CONFUSION
		db SLEEP_POWDER
		db SUPERSONIC
		db WHIRLWIND

	db $ff ; end

; ================

	; BUG_CATCHER (16)
	db "WADE@"
	db 1 ; moves

	; party

	db 35, BUTTERFREE
		db CONFUSION
		db POISONPOWDER
		db SUPERSONIC
		db GUST

	db 35, BUTTERFREE
		db CONFUSION
		db STUN_SPORE
		db SUPERSONIC
		db GUST

	db 44, BEEDRILL
		db FURY_ATTACK
		db PURSUIT
		db TWINEEDLE
		db DOUBLE_TEAM

	db 35, BUTTERFREE
		db PSYBEAM
		db SLEEP_POWDER
		db GUST
		db WHIRLWIND

	db $ff ; end

; ================

	; BUG_CATCHER (17)
	db "ARNIE@"
	db 0 ; normal

	; party

	db 30, BEEDRILL
	db 31, VENOMOTH
	db 32, PARASECT
	db 33, FORRETRESS
	db 34, SCIZOR
	db 35, HERACROSS

	db $ff ; end

; ================

	; BUG_CATCHER (18)
	db "ARNIE@"
	db 1 ; moves

	; party

	db 99, CATERPIE
		db TACKLE
		db STRING_SHOT
		db SNORE
		db 0

	db $ff ; end

; ================

	; BUG_CATCHER (19)
	db "WAYNE@"
	db 0 ; normal

	; party
	db 13, LEDYBA
	db 14, PARAS
	db 15, PINECO

	db $ff ; end

; ================
; ================================


FisherGroup: ;done
; ================================
; ================

	; FISHER (1)
	db "JUSTIN@"
	db 0 ; normal

	; party
	db 4, MAGIKARP
	db 12, MAGIKARP
	db 20, MAGIKARP
	db 24, MAGIKARP

	db $ff ; end

; ================

	; FISHER (2)
	db "RALPH@"
	db 0 ; normal

	; party
	db 10, GOLDEEN
	db 10, REMORAID
	db 10, HORSEA

	db $ff ; end

; ================

	; FISHER (3)
	db "ARNOLD@"
	db 0 ; normal

	; party
	db 48, LANTURN
	db 48, OCTILLERY

	db $ff ; end

; ================

	; FISHER (4)
	db "KYLE@"
	db 0 ; normal

	; party
	db 38, SEAKING
	db 42, POLITOED
	db 42, POLIWHIRL

	db $ff ; end

; ================

	; FISHER (5)
	db "HENRY@"
	db 0 ; normal

	; party
	db 7, HORSEA
	db 8, CHINCHOU

	db $ff ; end

; ================

	; FISHER (6)
	db "MARVIN@"
	db 0 ; normal

	; party
	db 20, GYARADOS
	db 20, GYARADOS
	db 20, GYARADOS
	db 20, GYARADOS
	db 20, GYARADOS
	db 85, MAGIKARP

	db $ff ; end

; ================

	; FISHER (7)
	db "TULLY@"
	db 0 ; normal

	; party
	db 22, IGGLYBUFF
	db 22, REMORAID

	db $ff ; end

; ================

	; FISHER (8)
	db "ANDRE@"
	db 0 ; normal

	; party
	db 32, GYARADOS

	db $ff ; end

; ================

	; FISHER (9)
	db "RAYMOND@"
	db 0 ; normal

	; party
	db 45, MAGIKARP
	db 60, MAGIKARP
	db 75, MAGIKARP
	db 90, MAGIKARP

	db $ff ; end

; ================

	; FISHER (10)
	db "WILTON@"
	db 0 ; normal

	; party
	db 24, GOLDEEN
	db 34, GOLDEEN
	db 34, SEAKING

	db $ff ; end

; ================

	; FISHER (11)
	db "EDGAR@"
	db 1 ; moves

	; party

	db 24, REMORAID
		db LOCK_ON
		db PSYBEAM
		db AURORA_BEAM
		db OCTAZOOKA

	db 28, OCTILLERY
		db LOCK_ON
		db OCTAZOOKA
		db 0
		db 0

	db $ff ; end

; ================

	; FISHER (12)
	db "JONAH@"
	db 0 ; normal

	; party
	db 32, LANTURN
	db 32, OCTILLERY
	db 32, POLITOED
	db 32, CLOYSTER

	db $ff ; end

; ================

	; FISHER (13)
	db "MARTIN@"
	db 0 ; normal

	; party
	db 45, TENTACRUEL
	db 45, LANTURN

	db $ff ; end

; ================

	; FISHER (14)
	db "STEPHEN@"
	db 0 ; normal

	; party
	db 32, SEAKING
	db 32, GYARADOS
	db 32, TENTACRUEL

	db $ff ; end

; ================

	; FISHER (15)
	db "BARNEY@"
	db 0 ; normal

	; party
	db 30, GYARADOS
	db 35, GYARADOS
	db 40, GYARADOS
	db 45, GYARADOS

	db $ff ; end

; ================

	; FISHER (16)
	db "RALPH@"
	db 0 ; normal

	; party
	db 20, GOLDEEN

	db $ff ; end

; ================

	; FISHER (17)
	db "RALPH@"
	db 0 ; normal

	; party
	db 20, REMORAID
	db 18, GOLDEEN

	db $ff ; end

; ================

	; FISHER (18)
	db "TULLY@"
	db 0 ; normal

	; party
	db 25, REMORAID

	db $ff ; end

; ================

	; FISHER (19)
	db "TULLY@"
	db 0 ; normal

	; party
	db 30, GOLDEEN
	db 40, GOLDEEN
	db 50, SEAKING

	db $ff ; end

; ================

	; FISHER (20)
	db "WILTON@"
	db 0 ; normal

	; party
	db 30, SEAKING
	db 40, SEAKING
	db 40, GOLDEEN
	db 40, GOLDEEN

	db $ff ; end

; ================

	; FISHER (21)
	db "SCOTT@"
	db 0 ; normal

	; party
	db 32, REMORAID
	db 36, SEADRA
	db 40, SEAKING

	db $ff ; end

; ================

	; FISHER (22)
	db "WILTON@"
	db 0 ; normal

	; party
	db 44, GOLDEEN
	db 44, GOLDEEN
	db 50, SEAKING
	db 50, SEAKING
	db 44, GOLDEEN
	db 44, GOLDEEN

	db $ff ; end

; ================

	; FISHER (23)
	db "RALPH@"
	db 0 ; normal

	; party
	db 35, SEADRA
	db 35, KINGLER
	db 35, SEAKING

	db $ff ; end

; ================

	; FISHER (24)
	db "RALPH@"
	db 0 ; normal

	; party
	db 45, SEADRA
	db 45, KINGLER
	db 45, SEAKING

	db $ff ; end

; ================

	; FISHER (25)
	db "TULLY@"
	db 0 ; normal

	; party
	db 98, GOLDEEN

	db $ff ; end

; ================
; ================================


SwimmerMGroup: ;done
; ================================
; ================

	; SWIMMERM (1)
	db "HAROLD@"
	db 0 ; normal

	; party
	db 36, KINGDRA
	db 36, SEADRA

	db $ff ; end

; ================

	; SWIMMERM (2)
	db "SIMON@"
	db 0 ; normal

	; party
	db 25, TENTACOOL
	db 25, MARILL

	db $ff ; end

; ================

	; SWIMMERM (3)
	db "RANDALL@"
	db 0 ; normal

	; party
	db 20, SHELLDER
	db 22, WARTORTLE
	db 24, MARILL

	db $ff ; end

; ================

	; SWIMMERM (4)
	db "CHARLIE@"
	db 0 ; normal

	; party
	db 24, POLIWAG
	db 20, POLIWHIRL
	db 20, POLIWRATH
	db 20, POLITOED

	db $ff ; end

; ================

	; SWIMMERM (5)
	db "GEORGE@"
	db 0 ; normal

	; party
	db 19, KRABBY
	db 17, SHELLDER
	db 18, SEEL
	db 20, STARYU
	db 22, TENTACOOL
	db 21, REMORAID

	db $ff ; end

; ================

	; SWIMMERM (6)
	db "BERKE@"
	db 0 ; normal

	; party
	db 25, MANTINE

	db $ff ; end

; ================

	; SWIMMERM (7)
	db "KIRK@"
	db 0 ; normal

	; party
	db 24, IGGLYBUFF
	db 24, SEEL

	db $ff ; end

; ================

	; SWIMMERM (8)
	db "MATHEW@"
	db 0 ; normal

	; party
	db 27, KINGLER

	db $ff ; end

; ================

	; SWIMMERM (9)
	db "HAL@"
	db 0 ; normal

	; party
	db 26, SEEL
	db 27, DEWGONG
	db 28, LAPRAS

	db $ff ; end

; ================

	; SWIMMERM (10)
	db "PATON@"
	db 0 ; normal

	; party
	db 27, LAPRAS
	db 27, CLOYSTER

	db $ff ; end

; ================

	; SWIMMERM (11)
	db "DARYL@"
	db 0 ; normal

	; party
	db 25, SHELLDER
	db 26, CLOYSTER
	db 27, SEADRA

	db $ff ; end

; ================

	; SWIMMERM (12)
	db "WALTER@"
	db 0 ; normal

	; party
	db 16, HORSEA
	db 18, HORSEA
	db 22, SEADRA

	db $ff ; end

; ================

	; SWIMMERM (13)
	db "TONY@"
	db 0 ; normal

	; party
	db 18, STARYU
	db 20, STARMIE
	db 19, HORSEA

	db $ff ; end

; ================

	; SWIMMERM (14)
	db "JEROME@"
	db 0 ; normal

	; party
	db 32, SEADRA
	db 32, QUAGSIRE
	db 32, TENTACRUEL
	db 32, SEAKING

	db $ff ; end

; ================

	; SWIMMERM (15)
	db "TUCKER@"
	db 0 ; normal

	; party
	db 42, CLOYSTER
	db 43, BLASTOISE
	db 44, KINGLER

	db $ff ; end

; ================

	; SWIMMERM (16)
	db "RICK@"
	db 0 ; normal

	; party
	db 16, POLIWAG
	db 18, STARYU
	db 17, HORSEA

	db $ff ; end

; ================

	; SWIMMERM (17)
	db "CAMERON@"
	db 0 ; normal

	; party
	db 47, AZUMARILL

	db $ff ; end

; ================

	; SWIMMERM (18)
	db "SETH@"
	db 0 ; normal

	; party
	db 45, KINGDRA
	db 50, OCTILLERY
	db 52, FERALIGATR

	db $ff ; end

; ================

	; SWIMMERM (19)
	db "JAMES@"
	db 0 ; normal

	; party
	db 12, RAIKOU

	db $ff ; end

; ================

	; SWIMMERM (20)
	db "LEWIS@"
	db 0 ; normal

	; party
	db 12, RAIKOU

	db $ff ; end

; ================

	; SWIMMERM (21)
	db "PARKER@"
	db 0 ; normal

	; party
	db 46, HORSEA
	db 46, SEADRA
	db 46, KINGDRA

	db $ff ; end

; ================
; ================================


SwimmerFGroup: ;done
; ================================
; ================

	; SWIMMERF (1)
	db "ELAINE@"
	db 0 ; normal

	; party
	db 22, STARYU
	db 20, IGGLYBUFF

	db $ff ; end

; ================

	; SWIMMERF (2)
	db "PAULA@"
	db 0 ; normal

	; party
	db 22, STARYU
	db 22, SHELLDER

	db $ff ; end

; ================

	; SWIMMERF (3)
	db "KAYLEE@"
	db 0 ; normal

	; party
	db 20, GOLDEEN
	db 20, SLOWPOKE
	db 20, CHINCHOU
	db 20, SHELLDER
	db 20, IGGLYBUFF
	db 20, VAPOREON

	db $ff ; end

; ================

	; SWIMMERF (4)
	db "SUSIE@"
	db 1 ; moves

	; party

	db 25, PSYDUCK
		db PSYCHIC
		db WATER_GUN
		db DISABLE
		db 0

	db 23, GOLDUCK
		db SUBMISSION
		db WATER_GUN
		db DISABLE
		db 0

	db $ff ; end

; ================

	; SWIMMERF (5)
	db "DENISE@"
	db 0 ; normal

	; party
	db 32, SEEL

	db $ff ; end

; ================

	; SWIMMERF (6)
	db "KARA@"
	db 0 ; normal

	; party
	db 18, STARYU
	db 18, STARMIE
	db 18, STARYU
	db 18, STARMIE
	db 18, STARYU
	db 18, STARMIE

	db $ff ; end

; ================

	; SWIMMERF (7)
	db "WENDY@"
	db 0 ; normal

	; party

	db 20, HORSEA
	db 20, TENTACOOL
	db 20, CHINCHOU

	db $ff ; end

; ================

	; SWIMMERF (8)
	db "LISA@"
	db 0 ; normal

	; party
	db 26, SMOOCHUM
	db 26, GOLDEEN
	db 26, SEAKING
	db 32, JYNX

	db $ff ; end

; ================

	; SWIMMERF (9)
	db "JILL@"
	db 0 ; normal

	; party
	db 25, SEEL
	db 35, DEWGONG

	db $ff ; end

; ================

	; SWIMMERF (10)
	db "MARY@"
	db 0 ; normal

	; party
	db 23, POLIWHIRL
	db 23, POLITOED
	db 23, POLIWRATH

	db $ff ; end

; ================

	; SWIMMERF (11)
	db "KATIE@"
	db 0 ; normal

	; party
	db 40, DEWGONG
	db 40, SEADRA
	db 40, LANTURN

	db $ff ; end

; ================

	; SWIMMERF (12)
	db "DAWN@"
	db 0 ; normal

	; party
	db 40, SEAKING
	db 40, LAPRAS
	db 40, VAPOREON

	db $ff ; end

; ================

	; SWIMMERF (13)
	db "TARA@"
	db 0 ; normal

	; party
	db 18, GOLDEEN

	db $ff ; end

; ================

	; SWIMMERF (14)
	db "NICOLE@"
	db 0 ; normal

	; party
	db 32, AZUMARILL
	db 36, LAPRAS

	db $ff ; end

; ================

	; SWIMMERF (15)
	db "LORI@"
	db 0 ; normal

	; party
	db 36, STARMIE
	db 55, SEEL

	db $ff ; end

; ================

	; SWIMMERF (16)
	db "JODY@"
	db 0 ; normal

	; party
	db 18, SEAKING

	db $ff ; end

; ================

	; SWIMMERF (17)
	db "NIKKI@"
	db 0 ; normal

	; party
	db 48, CLOYSTER
	db 50, STARMIE
	db 52, LAPRAS
	db 50, DEWGONG

	db $ff ; end

; ================

	; SWIMMERF (18)
	db "DIANA@"
	db 0 ; normal

	; party
	db 50, GOLDUCK

	db $ff ; end

; ================

	; SWIMMERF (19)
	db "BRIANA@"
	db 0 ; normal

	; party
	db 45, SEAKING
	db 45, DEWGONG

	db $ff ; end

; ================
; ================================


SailorGroup: ;done
; ================================
; ================

	; SAILOR (1)
	db "EUGENE@"
	db 0 ; normal

	; party
	db 20, POLIWHIRL
	db 20, RATICATE
	db 21, KRABBY

	db $ff ; end

; ================

	; SAILOR (2)
	db "HUEY@"
	db 0 ; normal

	; party
	db 21, MACHOP
	db 22, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR (3)
	db "TERRELL@"
	db 0 ; normal

	; party
	db 25, POLIWRATH

	db $ff ; end

; ================

	; SAILOR (4)
	db "KENT@"
	db 0 ; normal

	; party

	db 22, KRABBY
	db 16, SHUCKLE
	db 22, GEODUDE

	db $ff ; end

; ================

	; SAILOR (5)
	db "ERNEST@"
	db 0 ; normal

	; party
	db 22, MACHOKE
	db 22, POLIWHIRL

	db $ff ; end

; ================

	; SAILOR (6)
	db "JEFF@"
	db 0 ; normal

	; party
	db 42, RATICATE
	db 42, MAGMAR

	db $ff ; end

; ================

	; SAILOR (7)
	db "GARRETT@"
	db 0 ; normal

	; party
	db 42, KINGLER
	db 42, ELECTABUZZ

	db $ff ; end

; ================

	; SAILOR (8)
	db "KENNETH@"
	db 0 ; normal

	; party
	db 28, MAGMAR
	db 28, ELECTABUZZ
	db 28, POLIWRATH
	db 30, MACHOKE

	db $ff ; end

; ================

	; SAILOR (9)
	db "STANLEY@"
	db 0 ; normal

	; party
	db 40, POLIWRATH
	db 40, MACHOKE
	db 42, GOLDUCK

	db $ff ; end

; ================

	; SAILOR (10)
	db "HARRY@"
	db 0 ; normal

	; party
	db 21, POLIWHIRL
	db 21, MAGBY
	db 21, ELEKID

	db $ff ; end

; ================

	; SAILOR (11)
	db "HUEY@"
	db 0 ; normal

	; party
	db 32, POLIWRATH
	db 32, POLITOED

	db $ff ; end

; ================

	; SAILOR (12)
	db "HUEY@"
	db 0 ; normal

	; party
	db 40, POLIWRATH
	db 40, POLITOED

	db $ff ; end

; ================

	; SAILOR (13)
	db "HUEY@"
	db 1 ; moves

	; party

	db 48, POLITOED
		db WHIRLPOOL
		db RAIN_DANCE
		db BODY_SLAM
		db PERISH_SONG

	db 48, POLIWRATH
		db SURF
		db STRENGTH
		db ICE_PUNCH
		db SUBMISSION

	db $ff ; end

; ================
; ================================


SuperNerdGroup: ;done
; ================================
; ================

	; SUPER_NERD (1)
	db "STAN@"
	db 0 ; normal

	; party
	db 24, GRIMER
	db 22, DITTO

	db $ff ; end

; ================

	; SUPER_NERD (2)
	db "ERIC@"
	db 0 ; normal

	; party
	db 15, GRIMER
	db 16, MAGNEMITE

	db $ff ; end

; ================

	; SUPER_NERD (3)
	db "GREGG@"
	db 0 ; normal

	; party
	db 27, MAGNETON
	db 27, ELECTRODE

	db $ff ; end

; ================

	; SUPER_NERD (4)
	db "JAY@"
	db 0 ; normal

	; party
	db 26, ELECTRODE
	db 26, WEEZING

	db $ff ; end

; ================

	; SUPER_NERD (5)
	db "DAVE@"
	db 0 ; normal

	; party
	db 32, DITTO

	db $ff ; end

; ================

	; SUPER_NERD (6)
	db "SAM@"
	db 0 ; normal

	; party
	db 32, SUDOWOODO
	db 32, MUK

	db $ff ; end

; ================

	; SUPER_NERD (7)
	db "TOM@"
	db 0 ; normal

	; party
	db 33, MAGNETON
	db 33, DUGTRIO
	db 33, DODRIO
	db 33, MAGNETON
	db 33, DUGTRIO
	db 33, DODRIO

	db $ff ; end

; ================

	; SUPER_NERD (8)
	db "PAT@"
	db 0 ; normal

	; party
	db 48, PORYGON
	db 48, PORYGON2

	db $ff ; end

; ================

	; SUPER_NERD (9)
	db "SHAWN@"
	db 0 ; normal

	; party
	db 38, KADABRA
	db 38, MUK
	db 38, TANGELA

	db $ff ; end

; ================

	; SUPER_NERD (10)
	db "TERU@"
	db 0 ; normal

	; party
	db 7, MAGNEMITE
	db 7, VOLTORB
	db 9, MAGNEMITE
	db 9, VOLTORB
	db 11, MAGNEMITE
	db 11, VOLTORB

	db $ff ; end

; ================

	; SUPER_NERD (11)
	db "RUSS@"
	db 0 ; normal

	; party
	db 36, MAGNETON

	db $ff ; end

; ================

	; SUPER_NERD (12)
	db "NORTON@"
	db 1 ; moves

	; party

	db 36, PORYGON
		db CONVERSION
		db CONVERSION2
		db RECOVER
		db TRI_ATTACK

	db $ff ; end

; ================

	; SUPER_NERD (13)
	db "HUGH@"
	db 1 ; moves

	; party

	db 45, SEADRA
		db SMOKESCREEN
		db TWISTER
		db SURF
		db WATERFALL
	db 45, STARMIE
		db SURF
		db SWIFT
		db PSYCHIC_M
		db 0

	db $ff ; end

; ================

	; SUPER_NERD (14)
	db "MARKUS@"
	db 1 ; moves

	; party

	db 22, SLOWPOKE
		db CURSE
		db WATER_GUN
		db GROWL
		db STRENGTH

	db $ff ; end

; ================
; ================================


Rival2Group:
; ================================
; ================

	; RIVAL2 (1)
	db "?@"
	db 1 ; moves

	; party

	db 45, SNEASEL
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db BLIZZARD

	db 46, GOLBAT
		db SLUDGE_BOMB
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 47, MAGNETON
		db ZAP_CANNON
		db LOCK_ON
		db THUNDER_WAVE
		db SWIFT

	db 48, GENGAR
		db HYPNOSIS
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 49, ALAKAZAM
		db SHADOW_BALL
		db RECOVER
		db THUNDERPUNCH
		db PSYCHIC_M

	db 52, MEGANIUM
		db SYNTHESIS
		db REFLECT
		db BODY_SLAM
		db LIGHT_SCREEN

	db $ff ; end

; ================

	; RIVAL2 (2)
	db "?@"
	db 1 ; moves

	; party

	db 45, SNEASEL
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db BLIZZARD

	db 46, GOLBAT
		db SLUDGE_BOMB
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 47, MAGNETON
		db ZAP_CANNON
		db LOCK_ON
		db THUNDER_WAVE
		db SWIFT

	db 48, GENGAR
		db HYPNOSIS
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 49, ALAKAZAM
		db SHADOW_BALL
		db RECOVER
		db THUNDERPUNCH
		db PSYCHIC_M

	db 52, TYPHLOSION
		db THUNDERPUNCH
		db QUICK_ATTACK
		db FIRE_BLAST
		db EARTHQUAKE

	db $ff ; end

; ================

	; RIVAL2 (3)
	db "?@"
	db 1 ; moves

	; party

	db 45, SNEASEL
		db QUICK_ATTACK
		db SCREECH
		db FAINT_ATTACK
		db BLIZZARD

	db 46, GOLBAT
		db SLUDGE_BOMB
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db 47, MAGNETON
		db ZAP_CANNON
		db LOCK_ON
		db THUNDER_WAVE
		db SWIFT

	db 48, GENGAR
		db HYPNOSIS
		db CURSE
		db SHADOW_BALL
		db CONFUSE_RAY

	db 49, ALAKAZAM
		db SHADOW_BALL
		db RECOVER
		db ICE_PUNCH
		db PSYCHIC_M

	db 52, FERALIGATR
		db CRUNCH
		db SURF
		db ICE_BEAM
		db SLASH

	db $ff ; end

; ================

	; RIVAL2 (4)
	db "?@"
	db 1 ; moves

	; party

	db 55, SNEASEL
		db SLASH
		db BEAT_UP
		db METAL_CLAW
		db BLIZZARD

	db 55, CROBAT
		db TOXIC
		db BITE
		db CONFUSE_RAY
		db DOUBLE_TEAM

	db 55, MAGNETON
		db ZAP_CANNON
		db LOCK_ON
		db THUNDER_WAVE
		db TRI_ATTACK

	db 55, GENGAR
		db HYPNOSIS
		db THUNDERBOLT
		db SHADOW_BALL
		db GIGA_DRAIN

	db 55, ALAKAZAM
		db REFLECT
		db RECOVER
		db FIRE_PUNCH
		db PSYCHIC_M

	db 55, MEGANIUM
		db SYNTHESIS
		db SUNNY_DAY
		db SOLARBEAM
		db LIGHT_SCREEN

	db $ff ; end

; ================

	; RIVAL2 (5)
	db "?@"
	db 1 ; moves

	; party

	db 55, SNEASEL
		db SLASH
		db BEAT_UP
		db METAL_CLAW
		db BLIZZARD

	db 55, CROBAT
		db TOXIC
		db BITE
		db CONFUSE_RAY
		db DOUBLE_TEAM

	db 55, MAGNETON
		db ZAP_CANNON
		db LOCK_ON
		db THUNDER_WAVE
		db TRI_ATTACK

	db 55, GENGAR
		db HYPNOSIS
		db THUNDERBOLT
		db SHADOW_BALL
		db GIGA_DRAIN

	db 55, ALAKAZAM
		db REFLECT
		db RECOVER
		db ICE_PUNCH
		db PSYCHIC_M

	db 55, TYPHLOSION
		db THUNDERPUNCH
		db HIDDEN_POWER
		db FLAMETHROWER
		db EARTHQUAKE

	db $ff ; end

; ================

	; RIVAL2 (6)
	db "?@"
	db 1 ; moves

	; party

	db 55, SNEASEL
		db SLASH
		db BEAT_UP
		db METAL_CLAW
		db BLIZZARD

	db 55, CROBAT
		db TOXIC
		db BITE
		db CONFUSE_RAY
		db DOUBLE_TEAM

	db 55, MAGNETON
		db ZAP_CANNON
		db LOCK_ON
		db THUNDER_WAVE
		db TRI_ATTACK

	db 55, GENGAR
		db HYPNOSIS
		db THUNDERBOLT
		db SHADOW_BALL
		db GIGA_DRAIN

	db 55, ALAKAZAM
		db REFLECT
		db RECOVER
		db FIRE_PUNCH
		db PSYCHIC_M

	db 55, FERALIGATR
		db SURF
		db ICE_BEAM
		db SLASH
		db CRUNCH

	db $ff ; end

; ================
; ================================


GuitaristGroup: ;done
; ================================
; ================

	; GUITARIST (1)
	db "CLYDE@"
	db 0 ; normal

	; party
	db 36, ELEKID
	db 36, ELEKID
	db 40, ELECTABUZZ

	db $ff ; end

; ================

	; GUITARIST (2)
	db "VINCENT@"
	db 0 ; normal

	; party
	db 38, MAGNETON
	db 40, ELECTRODE
	db 44, WIGGLYTUFF

	db $ff ; end

; ================
; ================================


HikerGroup: ;done
; ================================
; ================

	; HIKER (1)
	db "ANTHONY@"
	db 0 ; normal

	; party
	db 18, GEODUDE
	db 22, MACHOKE

	db $ff ; end

; ================

	; HIKER (2)
	db "RUSSELL@"
	db 0 ; normal

	; party
	db 4, ONIX
	db 7, GEODUDE
	db 7, GEODUDE

	db $ff ; end

; ================

	; HIKER (3)
	db "PHILLIP@"
	db 0 ; normal

	; party
	db 22, SANDSHREW
	db 22, GEODUDE
	db 22, MACHOP
	db 22, TYROGUE
	db 22, ONIX
	db 22, DIGLETT

	db $ff ; end

; ================

	; HIKER (4)
	db "LEONARD@"
	db 0 ; normal

	; party
	db 24, LARVITAR
	db 24, GEODUDE
	db 24, RHYHORN

	db $ff ; end

; ================

	; HIKER (5)
	db "ANTHONY@"
	db 0 ; normal

	; party
	db 12, GEODUDE
	db 12, MACHOP

	db $ff ; end

; ================

	; HIKER (6)
	db "BENJAMIN@"
	db 0 ; normal

	; party
	db 15, DIGLETT
	db 15, GEODUDE
	db 15, RHYHORN

	db $ff ; end

; ================

	; HIKER (7)
	db "ERIK@"
	db 0 ; normal

	; party
	db 36, HITMONTOP
	db 36, GRAVELER
	db 35, MACHOKE

	db $ff ; end

; ================

	; HIKER (8)
	db "MICHAEL@"
	db 0 ; normal

	; party
	db 32, GEODUDE
	db 30, GRAVELER
	db 30, GOLEM

	db $ff ; end

; ================

	; HIKER (9)
	db "PARRY@"
	db 0 ; normal

	; party
	db 38, ONIX
	db 40, PILOSWINE

	db $ff ; end

; ================

	; HIKER (10)
	db "TIMOTHY@"
	db 1 ; moves

	; party

	db 30, DUGTRIO
		db MAGNITUDE
		db DIG
		db SAND_ATTACK
		db SLASH

	db 33, DUGTRIO
		db MAGNITUDE
		db DIG
		db SAND_ATTACK
		db SLASH

	db 30, DUGTRIO
		db MAGNITUDE
		db DIG
		db SAND_ATTACK
		db SLASH

	db 33, DUGTRIO
		db MAGNITUDE
		db DIG
		db SAND_ATTACK
		db SLASH

	db 30, DUGTRIO
		db MAGNITUDE
		db DIG
		db SAND_ATTACK
		db SLASH

	db 33, DUGTRIO
		db MAGNITUDE
		db DIG
		db SAND_ATTACK
		db SLASH

	db $ff ; end

; ================

	; HIKER (11)
	db "BAILEY@"
	db 0 ; normal

	; party
	db 14, GEODUDE
	db 15, GEODUDE
	db 16, GEODUDE
	db 17, GEODUDE
	db 19, GEODUDE

	db $ff ; end

; ================

	; HIKER (12)
	db "ANTHONY@"
	db 0 ; normal

	; party
	db 32, GRAVELER
	db 32, MACHOKE

	db $ff ; end

; ================

	; HIKER (13)
	db "TIM@"
	db 0 ; normal

	; party
	db 48, MACHAMP

	db $ff ; end

; ================

	; HIKER (14)
	db "NOLAND@"
	db 0 ; normal

	; party
	db 42, SANDSLASH
	db 43, GOLEM

	db $ff ; end

; ================

	; HIKER (15)
	db "SIDNEY@"
	db 0 ; normal

	; party
	db 45, DUGTRIO
	db 47, STEELIX

	db $ff ; end

; ================

	; HIKER (16)
	db "KENNY@"
	db 0 ; normal

	; party
	db 32, SANDSLASH
	db 33, GRAVELER
	db 34, GOLEM
	db 35, STEELIX

	db $ff ; end

; ================

	; HIKER (17)
	db "JIM@"
	db 0 ; normal

	; party
	db 40, MACHAMP
	db 40, GRAVELER

	db $ff ; end

; ================

	; HIKER (18)
	db "DANIEL@"
	db 0 ; normal

	; party
	db 10, ONIX

	db $ff ; end

; ================

	; HIKER (19)
	db "PARRY@"
	db 1 ; moves

	; party

	db 44, PILOSWINE
		db EARTHQUAKE
		db BLIZZARD
		db REST
		db TAKE_DOWN

	db 45, DUGTRIO
		db MAGNITUDE
		db DIG
		db TRI_ATTACK
		db SLASH

	db 46, STEELIX
		db DIG
		db IRON_TAIL
		db SANDSTORM
		db SLAM

	db $ff ; end

; ================

	; HIKER (20)
	db "PARRY@"
	db 0 ; normal

	; party
	db 32, ONIX
	db 32, STEELIX

	db $ff ; end

; ================

	; HIKER (21)
	db "ANTHONY@"
	db 0 ; normal

	; party
	db 33, GRAVELER
	db 33, MACHOKE
	db 33, SANDSLASH

	db $ff ; end

; ================

	; HIKER (22)
	db "ANTHONY@"
	db 1 ; moves

	; party

	db 40, GRAVELER
		db MAGNITUDE
		db SELFDESTRUCT
		db DEFENSE_CURL
		db ROLLOUT

	db 40, GOLEM
		db MAGNITUDE
		db SELFDESTRUCT
		db DEFENSE_CURL
		db ROLLOUT

	db 40, MACHAMP
		db KARATE_CHOP
		db VITAL_THROW
		db HEADBUTT
		db DIG

	db $ff ; end

; ================
; ================================


BikerGroup: ;done
; ================================
; ================

	; BIKER (1)
	db "BENNY@"
	db 0 ; normal

	; party
	db 24, MAGBY
	db 24, ELEKID
	db 24, KOFFING

	db $ff ; end

; ================

	; BIKER (2)
	db "KAZU@"
	db 0 ; normal

	; party
	db 24, KOFFING
	db 24, GRIMER
	db 24, EKANS

	db $ff ; end

; ================

	; BIKER (3)
	db "DWAYNE@"
	db 0 ; normal

	; party
	db 28, KOFFING
	db 29, EKANS
	db 41, WEEZING
	db 42, ARBOK

	db $ff ; end

; ================

	; BIKER (4)
	db "HARRIS@"
	db 0 ; normal

	; party
	db 45, FLAREON

	db $ff ; end

; ================

	; BIKER (5)
	db "ZEKE@"
	db 0 ; normal

	; party
	db 45, WEEZING

	db $ff ; end

; ================

	; BIKER (6)
	db "CHARLES@"
	db 0 ; normal

	; party
	db 45, CHARMELEON
	db 46, TYPHLOSION
	db 47, WEEZING

	db $ff ; end

; ================

	; BIKER (7)
	db "RILEY@"
	db 0 ; normal

	; party
	db 45, WEEZING

	db $ff ; end

; ================

	; BIKER (8)
	db "JOEL@"
	db 0 ; normal

	; party
	db 36, MAGMAR
	db 36, MAGMAR

	db $ff ; end

; ================

	; BIKER (9)
	db "GLENN@"
	db 0 ; normal

	; party
	db 36, MAGMAR
	db 40, WEEZING

	db $ff ; end

; ================
; ================================


BlaineGroup:
; ================================
; ================

	; BLAINE (1)
	db "BLAINE@"
	db 1 ; moves

	; party

	db 55, ARCANINE
		db EXTREMESPEED
		db ROAR
		db FLAMETHROWER
		db BODY_SLAM

	db 55, FLAREON
		db SHADOW_BALL
		db FIRE_BLAST
		db IRON_TAIL
		db DOUBLE_EDGE

	db 55, TYPHLOSION
		db FLAMETHROWER
		db FIRE_SPIN
		db SWIFT
		db FLAME_WHEEL

	db 55, MAGCARGO
		db CURSE
		db SMOG
		db FLAMETHROWER
		db ROCK_SLIDE

	db 55, MAGMAR
		db THUNDERPUNCH
		db FIRE_PUNCH
		db SUNNY_DAY
		db CONFUSE_RAY

	db 60, RAPIDASH
		db QUICK_ATTACK
		db FIRE_SPIN
		db FURY_ATTACK
		db FIRE_BLAST

	db $ff ; end

; ================
; ================================


BurglarGroup: ;done
; ================================
; ================

	; BURGLAR (1)
	db "DUNCAN@"
	db 1 ; moves

	; party
	db 24, KOFFING
		db SELFDESTRUCT
		db SMOKESCREEN
		db 0
		db 0
	db 24, KOFFING
		db SELFDESTRUCT
		db SMOKESCREEN
		db 0
		db 0
	db 24, KOFFING
		db SELFDESTRUCT
		db SMOKESCREEN
		db 0
		db 0
	db 24, KOFFING
		db SELFDESTRUCT
		db SMOKESCREEN
		db 0
		db 0
	db 24, KOFFING
		db SELFDESTRUCT
		db SMOKESCREEN
		db 0
		db 0
	db 30, SNEASEL
		db SLASH
		db ICE_BEAM
		db FAINT_ATTACK
		db 0

	db $ff ; end

; ================

	; BURGLAR (2)
	db "EDDIE@"
	db 1 ; moves

	; party

	db 27, GROWLITHE
		db ROAR
		db EMBER
		db LEER
		db TAKE_DOWN

	db 28, SNEASEL
		db SLASH
		db ICE_BEAM
		db FAINT_ATTACK
		db 0

	db $ff ; end

; ================

	; BURGLAR (3)
	db "COREY@"
	db 0 ; normal

	; party
	db 25, WEEZING
	db 25, MAGMAR
	db 32, SNEASEL

	db $ff ; end

; ================
; ================================


FirebreatherGroup: ;done
; ================================
; ================

	; FIREBREATHER (1)
	db "OTIS@"
	db 0 ; normal

	; party
	db 36, MAGMAR
	db 40, RAPIDASH

	db $ff ; end

; ================

	; FIREBREATHER (2)
	db "DICK@"
	db 0 ; normal

	; party
	db 22, CHARMELEON

	db $ff ; end

; ================

	; FIREBREATHER (3)
	db "NED@"
	db 0 ; normal

	; party
	db 16, VULPIX
	db 16, GROWLITHE
	db 16, CHARMANDER
	db 16, PONYTA
	db 16, CYNDAQUIL
	db 16, MAGBY

	db $ff ; end

; ================

	; FIREBREATHER (4)
	db "BURT@"
	db 0 ; normal

	; party
	db 42, MAGCARGO

	db $ff ; end

; ================

	; FIREBREATHER (5)
	db "BILL@"
	db 0 ; normal

	; party
	db 8, MAGBY

	db $ff ; end

; ================

	; FIREBREATHER (6)
	db "WALT@"
	db 0 ; normal

	; party
	db 16, VULPIX
	db 16, GROWLITHE
	db 16, CHARMANDER
	db 16, PONYTA
	db 16, CYNDAQUIL
	db 16, MAGBY

	db $ff ; end

; ================

	; FIREBREATHER (7)
	db "RAY@"
	db 0 ; normal

	; party
	db 12, VULPIX

	db $ff ; end

; ================

	; FIREBREATHER (8)
	db "LYLE@"
	db 0 ; normal

	; party
	db 43, NINETALES
	db 44, FLAREON

	db $ff ; end

; ================
; ================================


JugglerGroup: ;done
; ================================
; ================

	; JUGGLER (1)
	db "IRWIN@"
	db 0 ; normal

	; party
	db 2, VOLTORB
	db 6, VOLTORB
	db 10, VOLTORB
	db 14, VOLTORB
	db 18, VOLTORB
	db 22, VOLTORB

	db $ff ; end

; ================

	; JUGGLER (2)
	db "FRITZ@"
	db 0 ; normal

	; party
	db 38, MR__MIME
	db 38, MAGMAR
	db 39, ELECTRODE

	db $ff ; end

; ================

	; JUGGLER (3)
	db "HORTON@"
	db 0 ; normal

	; party
	db 42, ELECTRODE
	db 44, ELECTRODE
	db 46, ELECTRODE
	db 48, ELECTRODE

	db $ff ; end

; ================

	; JUGGLER (4)
	db "IRWIN@"
	db 0 ; normal

	; party
	db 2, VOLTORB
	db 10, VOLTORB
	db 18, VOLTORB
	db 26, VOLTORB
	db 34, VOLTORB
	db 42, ELECTRODE

	db $ff ; end

; ================

	; JUGGLER (5)
	db "IRWIN@"
	db 0 ; normal

	; party
	db 2, VOLTORB
	db 12, VOLTORB
	db 22, VOLTORB
	db 32, VOLTORB
	db 42, ELECTRODE
	db 52, ELECTRODE

	db $ff ; end

; ================

	; JUGGLER (6)
	db "IRWIN@"
	db 0 ; normal

	; party
	db 2, VOLTORB
	db 16, VOLTORB
	db 30, VOLTORB
	db 44, ELECTRODE
	db 58, ELECTRODE
	db 72, VOLTORB

	db $ff ; end

; ================
; ================================


BlackbeltGroup:
; ================================
; ================

	; BLACKBELT_T (1)
	db "KENJI@"
	db 0 ; normal

	; party
	db 32, GRAVELER
	db 32, HITMONLEE
	db 32, HITMONCHAN
	db 32, MACHOKE

	db $ff ; end

; ================

	; BLACKBELT_T (2)
	db "YOSHI@"
	db 1 ; moves

	; party

	db 30, HITMONLEE
		db DOUBLE_KICK
		db MEDITATE
		db JUMP_KICK
		db FOCUS_ENERGY

	db $ff ; end

; ================

	; BLACKBELT_T (3)
	db "KENJI@"
	db 1 ; moves

	; party

	db 45, ONIX
		db BIND
		db ROCK_THROW
		db TOXIC
		db DIG

	db 45, MACHAMP
		db HEADBUTT
		db SWAGGER
		db THUNDERPUNCH
		db VITAL_THROW

	db 45, STEELIX
		db EARTHQUAKE
		db ROCK_THROW
		db IRON_TAIL
		db SANDSTORM

	db 45, HITMONLEE
		db DOUBLE_TEAM
		db HI_JUMP_KICK
		db MUD_SLAP
		db SWIFT

	db $ff ; end

; ================

	; BLACKBELT_T (4)
	db "LAO@"
	db 1 ; moves

	; party

	db 30, HITMONCHAN
		db COMET_PUNCH
		db THUNDERPUNCH
		db ICE_PUNCH
		db FIRE_PUNCH

	db $ff ; end

; ================

	; BLACKBELT_T (5)
	db "NOB@"
	db 0 ; normal

	; party

	db 24, HITMONLEE
	db 24, HITMONCHAN
	db 24, HITMONTOP
	db 24, PRIMEAPE
	db 24, KANGASKHAN
	db 24, MACHOKE

	db $ff ; end

; ================

	; BLACKBELT_T (6)
	db "KIYO@"
	db 0 ; normal

	; party
	db 40, HITMONLEE
	db 40, HITMONCHAN

	db $ff ; end

; ================

	; BLACKBELT_T (7)
	db "LUNG@"
	db 0 ; normal

	; party
	db 24, HITMONTOP
	db 24, POLIWRATH
	db 24, PRIMEAPE

	db $ff ; end

; ================

	; BLACKBELT_T (8)
	db "KENJI@"
	db 0 ; normal

	; party
	db 33, MACHOKE
	db 33, GOLDUCK

	db $ff ; end

; ================

	; BLACKBELT_T (9)
	db "WAI@"
	db 0 ; normal

	; party
	db 42, MACHAMP

	db $ff ; end

; ================
; ================================


ExecutiveMGroup: ; done
; ================================
; ================

	; EXECUTIVEM (1)
	db "EXECUTIVE@"
	db 1 ; moves

	; party

	db 38, SANDSLASH
		db SLASH
		db POISON_STING
		db SAND_ATTACK
		db RAPID_SPIN

	db 38, WEEZING
		db TACKLE
		db SLUDGE
		db SMOKESCREEN
		db HAZE

	db 39, HOUNDOOM
		db FLAME_WHEEL
		db SOLARBEAM
		db BITE
		db FAINT_ATTACK

	db 38, MUK
		db SLUDGE_BOMB
		db FIRE_PUNCH
		db MINIMIZE
		db 0

	db 38, SNEASEL
		db SLASH
		db PURSUIT
		db BLIZZARD
		db 0

	db 39, PUPITAR
		db EARTHQUAKE
		db ROCK_SLIDE
		db BITE
		db SANDSTORM

	db $ff ; end

; ================

	; EXECUTIVEM (2)
	db "EXECUTIVE@"
	db 1 ; moves

	; party

	db 45, GOLBAT
		db LEECH_LIFE
		db BITE
		db CONFUSE_RAY
		db WING_ATTACK

	db $ff ; end

; ================

	; EXECUTIVEM (3)
	db "EXECUTIVE@"
	db 1 ; moves

	; party

	db 28, KOFFING
		db TACKLE
		db SELFDESTRUCT
		db SLUDGE
		db SMOKESCREEN

	db 30, KOFFING
		db TACKLE
		db SELFDESTRUCT
		db SLUDGE
		db SMOKESCREEN

	db 32, KOFFING
		db TACKLE
		db SELFDESTRUCT
		db SLUDGE
		db SMOKESCREEN

	db 35, WEEZING
		db TACKLE
		db EXPLOSION
		db SLUDGE
		db SMOKESCREEN

	db 32, KOFFING
		db TACKLE
		db SELFDESTRUCT
		db SLUDGE
		db SMOKESCREEN

	db 34, KOFFING
		db TACKLE
		db SMOG
		db SLUDGE
		db SMOKESCREEN

	db $ff ; end

; ================

	; EXECUTIVEM (4)
	db "EXECUTIVE@"
	db 0 ; normal

	; party
	db 29, MURKROW
	db 30, WEEZING
	db 31, FORRETRESS

	db $ff ; end

; ================
; ================================


PsychicGroup: ;done
; ================================
; ================

	; PSYCHIC_T (1)
	db "NATHAN@"
	db 0 ; normal

	; party
	db 32, GIRAFARIG

	db $ff ; end

; ================

	; PSYCHIC_T (2)
	db "FRANKLIN@"
	db 0 ; normal

	; party
	db 42, XATU
	db 44, ALAKAZAM

	db $ff ; end

; ================

	; PSYCHIC_T (3)
	db "HERMAN@"
	db 0 ; normal

	; party
	db 47, NOCTOWL
	db 47, LEDIAN
	db 48, EXEGGUTOR

	db $ff ; end

; ================

	; PSYCHIC_T (4)
	db "FIDEL@"
	db 0 ; normal

	; party
	db 54, XATU

	db $ff ; end

; ================

	; PSYCHIC_T (5)
	db "GREG@"
	db 1 ; moves

	; party

	db 22, DROWZEE
		db HYPNOSIS
		db DISABLE
		db DREAM_EATER
		db 0

	db $ff ; end

; ================

	; PSYCHIC_T (6)
	db "NORMAN@"
	db 0 ; normal

	; party

	db 24, SLOWPOKE
	db 26, NATU

	db $ff ; end

; ================

	; PSYCHIC_T (7)
	db "MARK@"
	db 1 ; moves

	; party

	db 17, ABRA
		db HIDDEN_POWER
		db FLASH
		db 0
		db 0

	db 17, ABRA
		db HIDDEN_POWER
		db FLASH
		db 0
		db 0

	db 20, KADABRA
		db TELEPORT
		db HIDDEN_POWER
		db CONFUSION
		db 0

	db $ff ; end

; ================

	; PSYCHIC_T (8)
	db "PHIL@"
	db 1 ; moves

	; party

	db 28, XATU
		db LEER
		db NIGHT_SHADE
		db FUTURE_SIGHT
		db CONFUSE_RAY

	db 28, KADABRA
		db DISABLE
		db PSYBEAM
		db RECOVER
		db FUTURE_SIGHT

	db $ff ; end

; ================

	; PSYCHIC_T (9)
	db "RICHARD@"
	db 0 ; normal

	; party
	db 47, ESPEON

	db $ff ; end

; ================

	; PSYCHIC_T (10)
	db "GILBERT@"
	db 0 ; normal

	; party
	db 37, STARMIE
	db 37, EXEGGUTOR
	db 43, GIRAFARIG

	db $ff ; end

; ================

	; PSYCHIC_T (11)
	db "JARED@"
	db 0 ; normal

	; party
	db 35, MR__MIME
	db 35, HYPNO
	db 40, EXEGGUTOR

	db $ff ; end

; ================

	; PSYCHIC_T (12)
	db "RODNEY@"
	db 0 ; normal

	; party
	db 36, HAUNTER
	db 39, HYPNO

	db $ff ; end

; ================
; ================================


PicnickerGroup: ;done
; ================================
; ================

	; PICNICKER (1)
	db "LIZ@"
	db 0 ; normal

	; party
	db 12, NIDORAN_F

	db $ff ; end

; ================

	; PICNICKER (2)
	db "GINA@"
	db 0 ; normal

	; party
	db 12, HOPPIP
	db 13, BULBASAUR
	db 14, SUNKERN

	db $ff ; end

; ================

	; PICNICKER (3)
	db "BROOKE@"
	db 1 ; moves

	; party

	db 20, PIKACHU
		db THUNDERSHOCK
		db GROWL
		db QUICK_ATTACK
		db DOUBLE_TEAM

	db $ff ; end

; ================

	; PICNICKER (4)
	db "KIM@"
	db 0 ; normal

	; party
	db 19, VULPIX

	db $ff ; end

; ================

	; PICNICKER (5)
	db "CINDY@"
	db 0 ; normal

	; party
	db 47, NIDOQUEEN

	db $ff ; end

; ================

	; PICNICKER (6)
	db "HOPE@"
	db 0 ; normal

	; party
	db 50, FLAAFFY

	db $ff ; end

; ================

	; PICNICKER (7)
	db "SHARON@"
	db 0 ; normal

	; party
	db 40, FURRET
	db 40, RAPIDASH

	db $ff ; end

; ================

	; PICNICKER (8)
	db "DEBRA@"
	db 0 ; normal

	; party
	db 42, SEAKING
	db 42, MEGANIUM
	db 42, DUNSPARCE

	db $ff ; end

; ================

	; PICNICKER (9)
	db "GINA@"
	db 0 ; normal

	; party
	db 19, SKIPLOOM
	db 21, IVYSAUR
	db 23, SUNKERN

	db $ff ; end

; ================

	; PICNICKER (10)
	db "ERIN@"
	db 0 ; normal

	; party
	db 18, PONYTA
	db 18, NIDORAN_M

	db $ff ; end

; ================

	; PICNICKER (11)
	db "LIZ@"
	db 0 ; normal

	; party
	db 16, WEEPINBELL
	db 16, NIDORINA

	db $ff ; end

; ================

	; PICNICKER (12)
	db "LIZ@"
	db 0 ; normal

	; party
	db 23, WEEPINBELL
	db 22, NIDORINO
	db 23, NIDOQUEEN

	db $ff ; end

; ================

	; PICNICKER (13)
	db "HEIDI@"
	db 0 ; normal

	; party
	db 40, SKIPLOOM
	db 48, JUMPLUFF

	db $ff ; end

; ================

	; PICNICKER (14)
	db "EDNA@"
	db 0 ; normal

	; party
	db 45, NIDOQUEEN
	db 45, RAICHU

	db $ff ; end

; ================

	; PICNICKER (15)
	db "GINA@"
	db 0 ; normal

	; party
	db 26, SKIPLOOM
	db 30, IVYSAUR
	db 30, SUNFLORA

	db $ff ; end

; ================

	; PICNICKER (16)
	db "TIFFANY@"
	db 1 ; moves

	; party

	db 41, CLEFAIRY
		db ENCORE
		db SING
		db DOUBLESLAP
		db MINIMIZE

	db $ff ; end

; ================

	; PICNICKER (17)
	db "TIFFANY@"
	db 1 ; moves

	; party

	db 47, CLEFAIRY
		db ENCORE
		db DOUBLESLAP
		db MINIMIZE
		db METRONOME

	db $ff ; end

; ================

	; PICNICKER (18)
	db "ERIN@"
	db 0 ; normal

	; party
	db 38, RAPIDASH
	db 38, MILTANK
	db 38, TAUROS

	db $ff ; end

; ================

	; PICNICKER (19)
	db "TANYA@"
	db 0 ; normal

	; party
	db 50, EXEGGUTOR

	db $ff ; end

; ================

	; PICNICKER (20)
	db "TIFFANY@"
	db 1 ; moves

	; party

	db 30, CLEFAIRY
		db ENCORE
		db SING
		db DOUBLESLAP
		db MINIMIZE

	db $ff ; end

; ================

	; PICNICKER (21)
	db "ERIN@"
	db 0 ; normal

	; party
	db 45, RAPIDASH
	db 45, MILTANK
	db 45, TAUROS

	db $ff ; end

; ================

	; PICNICKER (22)
	db "LIZ@"
	db 0 ; normal

	; party
	db 32, VICTREEBEL
	db 32, NIDORINO
	db 32, NIDOQUEEN

	db $ff ; end

; ================

	; PICNICKER (23)
	db "LIZ@"
	db 1 ; moves

	; party

	db 40, VICTREEBEL
		db SLEEP_POWDER
		db POISONPOWDER
		db STUN_SPORE
		db SLUDGE_BOMB

	db 42, NIDORINO
		db BLIZZARD
		db DOUBLE_KICK
		db POISON_STING
		db IRON_TAIL

	db 42, NIDOQUEEN
		db EARTHQUAKE
		db DOUBLE_KICK
		db TAIL_WHIP
		db BODY_SLAM

	db $ff ; end

; ================

	; PICNICKER (24)
	db "GINA@"
	db 0 ; normal

	; party
	db 32, JUMPLUFF
	db 36, VENUSAUR
	db 36, SUNFLORA

	db $ff ; end

; ================

	; PICNICKER (25)
	db "GINA@"
	db 0 ; normal

	; party

	db 44, JUMPLUFF
	db 44, VENUSAUR
	db 44, SUNFLORA

	db $ff ; end

; ================

	; PICNICKER (26)
	db "TIFFANY@"
	db 1 ; moves

	; party

	db 60, CLEFABLE
		db METRONOME
		db ENCORE
		db MOONLIGHT
		db MINIMIZE

	db $ff ; end

; ================
; ================================


CamperGroup: ;done
; ================================
; ================

	; CAMPER (1)
	db "ROLAND@"
	db 0 ; normal

	; party
	db 12, NIDORAN_F

	db $ff ; end

; ================

	; CAMPER (2)
	db "TODD@"
	db 0 ; normal

	; party
	db 16, PSYDUCK

	db $ff ; end

; ================

	; CAMPER (3)
	db "IVAN@"
	db 0 ; normal

	; party
	db 15, MACHOP
	db 17, ZUBAT
	db 18, DIGLETT

	db $ff ; end

; ================

	; CAMPER (4)
	db "ELLIOT@"
	db 0 ; normal

	; party
	db 15, SANDSHREW
	db 16, GROWLITHE
	db 17, MARILL

	db $ff ; end

; ================

	; CAMPER (5)
	db "BARRY@"
	db 0 ; normal

	; party
	db 47, GOLEM

	db $ff ; end

; ================

	; CAMPER (6)
	db "LLOYD@"
	db 0 ; normal

	; party
	db 50, NIDOKING

	db $ff ; end

; ================

	; CAMPER (7)
	db "DEAN@"
	db 0 ; normal

	; party
	db 46, GOLDUCK
	db 45, SANDSLASH

	db $ff ; end

; ================

	; CAMPER (8)
	db "SID@"
	db 0 ; normal

	; party
	db 44, DUGTRIO
	db 44, PRIMEAPE
	db 44, POLIWRATH

	db $ff ; end

; ================

	; CAMPER (9)
	db "HARVEY@"
	db 0 ; normal

	; party
	db 16, NIDORINA

	db $ff ; end

; ================

	; CAMPER (10)
	db "DALE@"
	db 0 ; normal

	; party
	db 16, NIDORINO

	db $ff ; end

; ================

	; CAMPER (11)
	db "TED@"
	db 0 ; normal

	; party
	db 21, MANKEY

	db $ff ; end

; ================

	; CAMPER (12)
	db "TODD@"
	db 0 ; normal

	; party
	db 18, SLUGMA
	db 20, CHIKORITA
	db 22, PSYDUCK

	db $ff ; end

; ================

	; CAMPER (13)
	db "TODD@"
	db 0 ; normal

	; party
	db 25, MAGCARGO
	db 25, BAYLEEF
	db 25, GOLDUCK

	db $ff ; end

; ================

	; CAMPER (14)
	db "THOMAS@"
	db 0 ; normal

	; party
	db 34, GRAVELER
	db 36, MAGCARGO
	db 38, GOLBAT
	db 40, GOLDUCK

	db $ff ; end

; ================

	; CAMPER (15)
	db "LEROY@"
	db 0 ; normal

	; party
	db 33, GRAVELER
	db 36, GRAVELER
	db 40, GOLBAT
	db 42, GOLDUCK

	db $ff ; end

; ================

	; CAMPER (16)
	db "DAVID@"
	db 0 ; normal

	; party
	db 33, GRAVELER
	db 36, GRAVELER
	db 40, GOLBAT
	db 42, GOLDUCK

	db $ff ; end

; ================

	; CAMPER (17)
	db "JOHN@"
	db 0 ; normal

	; party
	db 33, GRAVELER
	db 36, GRAVELER
	db 40, GOLBAT
	db 42, GOLDUCK

	db $ff ; end

; ================

	; CAMPER (18)
	db "JERRY@"
	db 2 ; item

	; party
	db 50, SUDOWOODO, HARD_STONE

	db $ff ; end

; ================

	; CAMPER (19)
	db "SPENCER@"
	db 0 ; normal

	; party
	db 18, SLUGMA
	db 19, SANDSLASH
	db 20, GOLBAT

	db $ff ; end

; ================

	; CAMPER (20)
	db "TODD@"
	db 0 ; normal

	; party
	db 40, GRAVELER
	db 40, MAGCARGO
	db 40, GOLDUCK

	db $ff ; end

; ================

	; CAMPER (21)
	db "TODD@"
	db 0 ; normal

	; party
	db 45, GRAVELER
	db 45, GOLDUCK
	db 45, GOLEM
	db 45, MAGCARGO

	db $ff ; end

; ================

	; CAMPER (22)
	db "QUENTIN@"
	db 0 ; normal

	; party
	db 42, FEAROW
	db 42, PRIMEAPE
	db 42, TAUROS

	db $ff ; end

; ================
; ================================

ExecutiveFGroup: ; done
; ================================
; ================

	; EXECUTIVEF (1)
	db "EXECUTIVE@"
	db 1 ; moves

	; party

	db 36, ARBOK
		db WRAP
		db SLUDGE_BOMB
		db CRUNCH
		db GLARE

	db 38, VILEPLUME
		db GIGA_DRAIN
		db STUN_SPORE
		db SLEEP_POWDER
		db ACID

	db 40, MURKROW
		db DRILL_PECK
		db PURSUIT
		db HAZE
		db NIGHT_SHADE

	db $ff ; end

; ================

	; EXECUTIVEF (2)
	db "EXECUTIVE@"
	db 1 ; moves

	; party

	db 30, ARBOK
		db WRAP
		db LEER
		db POISON_STING
		db BITE

	db 30, VILEPLUME
		db GIGA_DRAIN
		db SWEET_SCENT
		db SLEEP_POWDER
		db ACID

	db 32, MURKROW
		db PECK
		db PURSUIT
		db HAZE
		db 0

	db $ff ; end

; ================
; ================================


SageGroup: ;done
; ================================
; ================

	; SAGE (1)
	db "CHOW@"
	db 0 ; normal

	; party
	db 2, BELLSPROUT
	db 2, BELLSPROUT
	db 2, BELLSPROUT
	db 2, BELLSPROUT
	db 2, BELLSPROUT
	db 2, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (2)
	db "NICO@"
	db 0 ; normal

	; party
	db 3, BELLSPROUT
	db 4, BELLSPROUT
	db 5, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (3)
	db "JIN@"
	db 0 ; normal

	; party
	db 7, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (4)
	db "TROY@"
	db 0 ; normal

	; party
	db 7, BELLSPROUT
	db 7, HOOTHOOT

	db $ff ; end

; ================

	; SAGE (5)
	db "JEFFREY@"
	db 0 ; normal

	; party
	db 24, NINETALES

	db $ff ; end

; ================

	; SAGE (6)
	db "PING@"
	db 0 ; normal

	; party
	db 18, GASTLY
	db 18, CUBONE
	db 18, VULPIX
	db 18, SHELLDER
	db 18, MISDREAVUS

	db $ff ; end

; ================

	; SAGE (7)
	db "EDMOND@"
	db 0 ; normal

	; party
	db 3, BELLSPROUT
	db 4, BELLSPROUT
	db 5, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (8)
	db "NEAL@"
	db 0 ; normal

	; party
	db 8, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (9)
	db "LI@"
	db 0 ; normal

	; party
	db 8, HOOTHOOT
	db 10, BELLSPROUT

	db $ff ; end

; ================

	; SAGE (10)
	db "GAKU@"
	db 0 ; normal

	; party
	db 35, NOCTOWL
	db 40, FLAREON

	db $ff ; end

; ================

	; SAGE (11)
	db "MASA@"
	db 0 ; normal

	; party
	db 35, NOCTOWL
	db 40, JOLTEON

	db $ff ; end

; ================

	; SAGE (12)
	db "KOJI@"
	db 0 ; normal

	; party
	db 35, NOCTOWL
	db 40, VAPOREON

	db $ff ; end

; ================
; ================================


MediumGroup: ; done
; ================================
; ================

	; MEDIUM (1)
	db "MARTHA@"
	db 0 ; normal

	; party
	db 18, UNOWN
	db 17, GASTLY
	db 20, HAUNTER
	db 21, VULPIX

	db $ff ; end

; ================

	; MEDIUM (2)
	db "GRACE@"
	db 0 ; normal

	; party
	db 23, HAUNTER
	db 23, MISDREAVUS

	db $ff ; end

; ================

	; MEDIUM (3)
	db "BETHANY@"
	db 0 ; normal

	; party
	db 32, UNOWN

	db $ff ; end

; ================

	; MEDIUM (4)
	db "MARGRET@"
	db 0 ; normal

	; party
	db 24, HAUNTER

	db $ff ; end

; ================

	; MEDIUM (5)
	db "ETHEL@"
	db 0 ; normal

	; party
	db 24, HAUNTER

	db $ff ; end

; ================

	; MEDIUM (6)
	db "REBECCA@"
	db 0 ; normal

	; party
	db 38, DROWZEE
	db 40, HYPNO

	db $ff ; end

; ================

	; MEDIUM (7)
	db "DORIS@"
	db 0 ; normal

	; party
	db 36, SLOWKING
	db 36, SLOWBRO

	db $ff ; end

; ================
; ================================


BoarderGroup: ; done
; ================================
; ================

	; BOARDER (1)
	db "RONALD@"
	db 0 ; normal

	; party
	db 28, IGGLYBUFF
	db 29, DEWGONG

	db $ff ; end

; ================

	; BOARDER (2)
	db "BRAD@"
	db 0 ; normal

	; party
	db 26, SWINUB
	db 27, SNEASEL

	db $ff ; end

; ================

	; BOARDER (3)
	db "DOUGLAS@"
	db 0 ; normal

	; party
	db 25, SHELLDER
	db 25, SHELLDER
	db 30, CLOYSTER
	db 25, SHELLDER
	db 25, SHELLDER

	db $ff ; end

; ================
; ================================


PokefanMGroup: ; done
; ================================
; ================

	; POKEFANM (1)
	db "WILLIAM@"
	db 2 ; item

	; party
	db 19, RAICHU, BERRY

	db $ff ; end

; ================

	; POKEFANM (2)
	db "DEREK@"
	db 2 ; item

	; party
	db 26, PIKACHU, BERRY

	db $ff ; end

; ================

	; POKEFANM (3)
	db "ROBERT@"
	db 2 ; item

	; party
	db 44, QUAGSIRE, BERRY

	db $ff ; end

; ================

	; POKEFANM (4)
	db "JOSHUA@"
	db 2 ; item

	; party
	db 35, PIKACHU, BERRY
	db 36, PIKACHU, BERRY
	db 34, PIKACHU, LIGHT_BALL
	db 38, PIKACHU, BERRY
	db 39, PIKACHU, BERRY
	db 44, PIKACHU, BERRY

	db $ff ; end

; ================

	; POKEFANM (5)
	db "CARTER@"
	db 2 ; item

	; party
	db 50, BULBASAUR, BERRY
	db 50, CHARMANDER, BERRY
	db 50, SQUIRTLE, BERRY

	db $ff ; end

; ================

	; POKEFANM (6)
	db "TREVOR@"
	db 2 ; item

	; party
	db 66, PSYDUCK, BERRY

	db $ff ; end

; ================

	; POKEFANM (7)
	db "BRANDON@"
	db 2 ; item

	; party
	db 17, SNUBBULL, BERRY

	db $ff ; end

; ================

	; POKEFANM (8)
	db "JEREMY@"
	db 2 ; item

	; party
	db 34, MEOWTH, BERRY
	db 34, MEOWTH, BERRY
	db 34, MEOWTH, BERRY

	db $ff ; end

; ================

	; POKEFANM (9)
	db "COLIN@"
	db 2 ; item

	; party
	db 48, DELIBIRD, BERRY

	db $ff ; end

; ================

	; POKEFANM (10)
	db "DEREK@"
	db 2 ; item

	; party
	db 22, PIKACHU, BERRY

	db $ff ; end

; ================

	; POKEFANM (11)
	db "DEREK@"
	db 2 ; item

	; party
	db 50, PIKACHU, BERRY

	db $ff ; end

; ================

	; POKEFANM (12)
	db "ALEX@"
	db 2 ; item

	; party
	db 42, NIDOKING, BERRY
	db 42, SLOWKING, BERRY
	db 42, SEAKING, BERRY

	db $ff ; end

; ================

	; POKEFANM (13)
	db "REX@"
	db 2 ; item

	; party
	db 60, PHANPY, BERRY

	db $ff ; end

; ================

	; POKEFANM (14)
	db "ALLAN@"
	db 2 ; item

	; party
	db 60, TEDDIURSA, BERRY

	db $ff ; end

; ================
; ================================


KimonoGirlGroup: ; done
; ================================
; ================

	; KIMONO_GIRL (1)
	db "NAOKO@"
	db 0 ; normal

	; party
	db 20, SKIPLOOM
	db 20, VULPIX
	db 22, SUDOWOODO

	db $ff ; end

; ================

	; KIMONO_GIRL (2)
	db "NAOKO@"
	db 2 ; item

	; party
	db 23, FLAREON, CHARCOAL

	db $ff ; end

; ================

	; KIMONO_GIRL (3)
	db "SAYO@"
	db 2 ; item

	; party
	db 23, ESPEON, TWISTEDSPOON

	db $ff ; end

; ================

	; KIMONO_GIRL (4)
	db "ZUKI@"
	db 2 ; item

	; party
	db 23, UMBREON, BLACKGLASSES

	db $ff ; end

; ================

	; KIMONO_GIRL (5)
	db "KUNI@"
	db 2 ; item

	; party
	db 23, VAPOREON, MYSTIC_WATER

	db $ff ; end

; ================

	; KIMONO_GIRL (6)
	db "MIKI@"
	db 2 ; item

	; party
	db 23, JOLTEON, MAGNET

	db $ff ; end

; ================
; ================================


TwinsGroup: ; done
; ================================
; ================

	; TWINS (1)
	db "AMY & MAY@"
	db 0 ; normal

	; party
	db 12, SPINARAK
	db 12, LEDYBA

	db $ff ; end

; ================

	; TWINS (2)
	db "ANN & ANNE@"
	db 1 ; moves

	; party

	db 18, CLEFAIRY
		db GROWL
		db ENCORE
		db DOUBLESLAP
		db METRONOME

	db 18, JIGGLYPUFF
		db SING
		db DEFENSE_CURL
		db POUND
		db DISABLE

	db $ff ; end

; ================

	; TWINS (3)
	db "ANN & ANNE@"
	db 0 ; normal

	; party

	db 18, TEDDIURSA
	db 18, SNUBBULL

	db $ff ; end

; ================

	; TWINS (4)
	db "AMY & MAY@"
	db 0 ; normal

	; party
	db 10, PINSIR
	db 10, HERACROSS

	db $ff ; end

; ================

	; TWINS (5)
	db "JO & ZOE@"
	db 0 ; normal

	; party
	db 42, VICTREEBEL
	db 42, VILEPLUME

	db $ff ; end

; ================

	; TWINS (6)
	db "JO & ZOE@"
	db 0 ; normal

	; party
	db 42, VILEPLUME
	db 42, BELLOSSOM

	db $ff ; end

; ================

	; TWINS (7)
	db "MEG & PEG@"
	db 0 ; normal

	; party
	db 50, TEDDIURSA
	db 50, PHANPY

	db $ff ; end

; ================

	; TWINS (8)
	db "MEG & PEG@"
	db 0 ; normal

	; party
	db 40, PHANPY
	db 40, SANDSHREW

	db $ff ; end

; ================

	; TWINS (9)
	db "LEA & PIA@"
	db 1 ; moves

	; party

	db 50, DRATINI
		db THUNDER_WAVE
		db TWISTER
		db FLAMETHROWER
		db THUNDERBOLT

	db 50, DRATINI
		db THUNDER_WAVE
		db HEADBUTT
		db ICE_BEAM
		db SURF

	db $ff ; end

; ================

	; TWINS (10)
	db "LEA & PIA@"
	db 1 ; moves

	; party

	db 46, DRAGONAIR
		db THUNDER_WAVE
		db TWISTER
		db FLAMETHROWER
		db THUNDERBOLT

	db 46, DRAGONAIR
		db THUNDER_WAVE
		db HEADBUTT
		db ICE_BEAM
		db SURF

	db $ff ; end

; ================
; ================================


PokefanFGroup: ; done
; ================================
; ================

	; POKEFANF (1)
	db "BEVERLY@"
	db 2 ; item

	; party
	db 18, SNUBBULL, BERRY

	db $ff ; end

; ================

	; POKEFANF (2)
	db "RUTH@"
	db 2 ; item

	; party
	db 26, PIKACHU, BERRY

	db $ff ; end

; ================

	; POKEFANF (3)
	db "BEVERLY@"
	db 2 ; item

	; party
	db 18, SNUBBULL, BERRY

	db $ff ; end

; ================

	; POKEFANF (4)
	db "BEVERLY@"
	db 2 ; item

	; party
	db 42, GRANBULL, GOLD_BERRY

	db $ff ; end

; ================

	; POKEFANF (5)
	db "GEORGIA@"
	db 2 ; item

	; party
	db 26, SENTRET, BERRY
	db 26, SENTRET, BERRY
	db 26, SENTRET, BERRY
	db 26, FURRET, GOLD_BERRY
	db 26, SENTRET, BERRY

	db $ff ; end

; ================

	; POKEFANF (6)
	db "JAIME@"
	db 2 ; item

	; party
	db 24, MEOWTH, BERRY

	db $ff ; end

; ================
; ================================


RedGroup:
; ================================
; ================

	; RED (1)
	db "RED@"
	db 1 ; moves

	; party

	db 100, PIKACHU
		db CHARM
		db QUICK_ATTACK
		db THUNDERBOLT
		db SURF

	db 80, ESPEON
		db WHIRLPOOL
		db REFLECT
		db SWIFT
		db PSYCHIC_M

	db 80, SNORLAX
		db SLEEP_TALK
		db CURSE
		db REST
		db BODY_SLAM

	db 84, VENUSAUR
		db SUNNY_DAY
		db SLUDGE_BOMB
		db SYNTHESIS
		db SOLARBEAM

	db 84, CHARIZARD
		db FLAMETHROWER
		db WING_ATTACK
		db SLASH
		db FIRE_SPIN

	db 84, BLASTOISE
		db RAIN_DANCE
		db SURF
		db BLIZZARD
		db SKULL_BASH

	db $ff ; end

; ================
; ================================


BlueGroup:
; ================================
; ================

	; BLUE (1)
	db "BLUE@"
	db 1 ; moves

	; party

	db 58, PIDGEOT
		db QUICK_ATTACK
		db WHIRLWIND
		db WING_ATTACK
		db MIRROR_MOVE

	db 58, ALAKAZAM
		db DISABLE
		db RECOVER
		db PSYCHIC_M
		db REFLECT

	db 58, RHYDON
		db FURY_ATTACK
		db SANDSTORM
		db ROCK_SLIDE
		db EARTHQUAKE

	db 59, GYARADOS
		db TWISTER
		db HYDRO_PUMP
		db RAIN_DANCE
		db HYPER_BEAM

	db 59, EXEGGUTOR
		db SUNNY_DAY
		db LEECH_SEED
		db EGG_BOMB
		db SOLARBEAM

	db 59, ARCANINE
		db ROAR
		db SWIFT
		db FLAMETHROWER
		db EXTREMESPEED

	db $ff ; end

; ================
; ================================


OfficerGroup: ; done
; ================================
; ================

	; OFFICER (1)
	db "KEITH@"
	db 0 ; normal

	; party
	db 18, GROWLITHE

	db $ff ; end

; ================

	; OFFICER (2)
	db "DIRK@"
	db 0 ; normal

	; party
	db 16, GROWLITHE
	db 16, GROWLITHE

	db $ff ; end

; ================
; ================================


GruntFGroup:
; ================================
; ================

	; GRUNTF (1)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 10, ZUBAT
	db 12, EKANS
	db 11, SLOWPOKE

	db $ff ; end

; ================

	; GRUNTF (2)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 27, ARBOK
	db 28, DUNSPARCE

	db $ff ; end

; ================

	; GRUNTF (3)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 32, GLOOM
	db 32, ARBOK
	db 32, SANDSLASH

	db $ff ; end

; ================

	; GRUNTF (4)
	db "GRUNT@"
	db 0 ; normal

	; party
	db 32, ARBOK
	db 32, GLOOM
	db 25, EKANS
	db 25, ODDISH

	db $ff ; end

; ================

	; GRUNTF (5)
	db "GRUNT@"
	db 1 ; moves

	; party

	db 26, EKANS
		db WRAP
		db LEER
		db POISON_STING
		db BITE

	db 27, GLOOM
		db ABSORB
		db SWEET_SCENT
		db STUN_SPORE
		db SLEEP_POWDER

	db $ff ; end

; ================
; ================================


MysticalmanGroup: ; done
; ================================
; ================

	; MYSTICALMAN (1)
	db "EUSINE@"
	db 1 ; moves

	; party

	db 28, HYPNO
		db DREAM_EATER
		db HYPNOSIS
		db DISABLE
		db CONFUSION

	db 28, HAUNTER
		db LICK
		db HYPNOSIS
		db MEAN_LOOK
		db CURSE

	db 28, MR__MIME
		db PSYCHIC_M
		db RAIN_DANCE
		db REFLECT
		db LIGHT_SCREEN

	db 30, ELECTRODE
		db SCREECH
		db SONICBOOM
		db THUNDER
		db ROLLOUT

	db $ff ; end

; ================
; ================================
