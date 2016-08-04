INCLUDE "includes.asm"


SECTION "Evolutions and Attacks", ROMX, BANK[EVOS_ATTACKS]


INCLUDE "data/evos_attacks_pointers.asm"


EvosAttacks::

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL,18,IVYSAUR
	db 0 ; no more evolutions
	db 1,TACKLE
	db 4,GROWL
	db 7,LEECH_SEED
	db 10,VINE_WHIP
	db 15,POISONPOWDER
	db 15,SLEEP_POWDER
	db 20,RAZOR_LEAF
	db 25,SWEET_SCENT
	db 32,GROWTH
	db 39,SYNTHESIS
	db 46,SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL,36,VENUSAUR
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,GROWL
	db 1,LEECH_SEED
	db 4,GROWL
	db 7,LEECH_SEED
	db 10,VINE_WHIP
	db 15,POISONPOWDER
	db 15,SLEEP_POWDER
	db 22,RAZOR_LEAF
	db 29,SWEET_SCENT
	db 38,GROWTH
	db 47,SYNTHESIS
	db 56,SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,GROWL
	db 1,LEECH_SEED
	db 1,VINE_WHIP
	db 4,GROWL
	db 7,LEECH_SEED
	db 10,VINE_WHIP
	db 15,POISONPOWDER
	db 15,SLEEP_POWDER
	db 22,RAZOR_LEAF
	db 29,SWEET_SCENT
	db 41,GROWTH
	db 53,SYNTHESIS
	db 65,SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL,18,CHARMELEON
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,GROWL
	db 7,EMBER
	db 13,SMOKESCREEN
	db 19,RAGE
	db 23,FLAME_WHEEL
	db 27,SCARY_FACE
	db 31,FLAMETHROWER
	db 37,SLASH
	db 43,DRAGON_RAGE
	db 49,FIRE_SPIN
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL,36,CHARIZARD
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,GROWL
	db 1,EMBER
	db 7,EMBER
	db 13,SMOKESCREEN
	db 20,RAGE
	db 25,FLAME_WHEEL
	db 30,SCARY_FACE
	db 34,FLAMETHROWER
	db 41,SLASH
	db 48,DRAGON_RAGE
	db 55,FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,GROWL
	db 1,EMBER
	db 1,SMOKESCREEN
	db 7,EMBER
	db 13,SMOKESCREEN
	db 20,RAGE
	db 27,SCARY_FACE
	db 34,FLAMETHROWER
	db 36,WING_ATTACK
	db 44,SLASH
	db 54,DRAGON_RAGE
	db 60,OUTRAGE
	db 64,FIRE_SPIN
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL,18,WARTORTLE
	db 0 ; no more evolutions
	db 1,TACKLE
	db 4,TAIL_WHIP
	db 7,BUBBLE
	db 10,WITHDRAW
	db 13,WATER_GUN
	db 18,BITE
	db 23,RAPID_SPIN
	db 28,PROTECT
	db 33,RAIN_DANCE
	db 40,SKULL_BASH
	db 47,HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL,36,BLASTOISE
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,TAIL_WHIP
	db 1,BUBBLE
	db 4,TAIL_WHIP
	db 7,BUBBLE
	db 10,WITHDRAW
	db 13,WATER_GUN
	db 19,BITE
	db 25,RAPID_SPIN
	db 31,PROTECT
	db 37,RAIN_DANCE
	db 45,SKULL_BASH
	db 53,HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,TAIL_WHIP
	db 1,BUBBLE
	db 1,WITHDRAW
	db 4,TAIL_WHIP
	db 7,BUBBLE
	db 10,WITHDRAW
	db 13,WATER_GUN
	db 19,BITE
	db 25,RAPID_SPIN
	db 31,PROTECT
	db 42,RAIN_DANCE
	db 55,SKULL_BASH
	db 68,HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL,8,METAPOD
	db 0 ; no more evolutions
	db 1,TACKLE
	db 4,STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL,12,BUTTERFREE
	db 0 ; no more evolutions
	db 1,HARDEN
	db 1,TACKLE
	db 4,STRING_SHOT
	db 7,HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1,CONFUSION
	db 14,CONFUSION
	db 16,POISONPOWDER
	db 17,STUN_SPORE
	db 18,GUST
	db 20,SUPERSONIC
	db 23,WHIRLWIND
	db 28,SLEEP_POWDER
	db 34,PSYBEAM
	db 40,SAFEGUARD
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL,8,KAKUNA
	db 0 ; no more evolutions
	db 1,POISON_STING
	db 4,STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL,12,BEEDRILL
	db 0 ; no more evolutions
	db 1,HARDEN
	db 1,POISON_STING
	db 4,STRING_SHOT
	db 7,HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1,FURY_ATTACK
	db 14,FURY_ATTACK
	db 17,FOCUS_ENERGY
	db 20,TWINEEDLE
	db 25,RAGE
	db 30,PURSUIT
	db 35,PIN_MISSILE
	db 40,AGILITY
	db 45,SLUDGE_BOMB
	db 50,SWARM
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL,18,PIDGEOTTO
	db 0 ; no more evolutions
	db 1,TACKLE
	db 5,SAND_ATTACK
	db 9,GUST
	db 15,QUICK_ATTACK
	db 21,WHIRLWIND
	db 29,WING_ATTACK
	db 37,AGILITY
	db 42,MIRROR_MOVE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL,36,PIDGEOT
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,SAND_ATTACK
	db 1,GUST
	db 5,SAND_ATTACK
	db 9,GUST
	db 15,QUICK_ATTACK
	db 23,WHIRLWIND
	db 33,WING_ATTACK
	db 43,AGILITY
	db 50,MIRROR_MOVE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,SAND_ATTACK
	db 1,GUST
	db 1,QUICK_ATTACK
	db 5,SAND_ATTACK
	db 9,GUST
	db 15,QUICK_ATTACK
	db 23,WHIRLWIND
	db 33,WING_ATTACK
	db 46,AGILITY
	db 55,MIRROR_MOVE
	db 61,SKY_ATTACK
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL,20,RATICATE
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,TAIL_WHIP
	db 7,QUICK_ATTACK
	db 13,HYPER_FANG
	db 20,FOCUS_ENERGY
	db 27,PURSUIT
	db 34,SUPER_FANG
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,TAIL_WHIP
	db 1,QUICK_ATTACK
	db 7,QUICK_ATTACK
	db 13,HYPER_FANG
	db 20,SCARY_FACE
	db 30,PURSUIT
	db 40,SUPER_FANG
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL,24,FEAROW
	db 0 ; no more evolutions
	db 1,PECK
	db 1,GROWL
	db 7,LEER
	db 13,FURY_ATTACK
	db 19,FAINT_ATTACK
	db 25,PURSUIT
	db 28,WING_ATTACK
	db 33,MIRROR_MOVE
	db 37,DRILL_PECK
	db 43,AGILITY
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1,PECK
	db 1,GROWL
	db 1,LEER
	db 1,FURY_ATTACK
	db 7,LEER
	db 13,FURY_ATTACK
	db 19,FAINT_ATTACK
	db 26,PURSUIT
	db 30,WING_ATTACK
	db 35,MIRROR_MOVE
	db 40,DRILL_PECK
	db 47,AGILITY
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL,26,ARBOK
	db 0 ; no more evolutions
	db 1,WRAP
	db 1,LEER
	db 1,SPITE
	db 9,POISON_STING
	db 15,BITE
	db 19,MEAN_LOOK
	db 23,GLARE
	db 29,SCREECH
	db 33,CRUNCH
	db 37,ACID
	db 43,HAZE
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1,WRAP
	db 1,LEER
	db 1,SPITE
	db 9,POISON_STING
	db 15,BITE
	db 20,MEAN_LOOK
	db 25,GLARE
	db 33,SCREECH
	db 37,CRUNCH
	db 43,ACID
	db 51,HAZE
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM,THUNDERSTONE,RAICHU
	db 0 ; no more evolutions
	db 1,THUNDERSHOCK
	db 1,GROWL
	db 6,TAIL_WHIP
	db 8,THUNDER_WAVE
	db 11,QUICK_ATTACK
	db 15,DOUBLE_TEAM
	db 20,SLAM
	db 26,THUNDERBOLT
	db 33,AGILITY
	db 41,THUNDER
	db 50,LIGHT_SCREEN
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1,THUNDERSHOCK
	db 1,TAIL_WHIP
	db 1,QUICK_ATTACK
	db 1,GROWL
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL,25,SANDSLASH
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 6,DEFENSE_CURL
	db 11,SAND_ATTACK
	db 17,POISON_STING
	db 23,SLASH
	db 30,SWIFT
	db 37,FURY_SWIPES
	db 45,SANDSTORM
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,DEFENSE_CURL
	db 1,SAND_ATTACK
	db 6,DEFENSE_CURL
	db 11,SAND_ATTACK
	db 17,POISON_STING
	db 24,SLASH
	db 33,SWIFT
	db 42,FURY_SWIPES
	db 45,SPIKES
	db 52,SANDSTORM
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_GENDER,18,MALE,NIDORINO
	db EVOLVE_GENDER,18,FEMALE,NIDORINA
	db 0 ; no more evolutions
	db 1,GROWL
	db 1,TACKLE
	db 8,SCRATCH
	db 12,DOUBLE_KICK
	db 17,POISON_STING
	db 23,ATTRACT
	db 30,BITE
	db 38,MOON_DANCE
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM,MOON_STONE,NIDOQUEEN
	db 0 ; no more evolutions
	db 1,GROWL
	db 1,TACKLE
	db 8,SCRATCH
	db 12,DOUBLE_KICK
	db 19,POISON_STING
	db 27,ATTRACT
	db 36,BITE
	db 46,MOON_DANCE
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,SCRATCH
	db 1,DOUBLE_KICK
	db 1,TAIL_WHIP
	db 28,BODY_SLAM
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_GENDER,25,MALE,TAUROS
	db EVOLVE_GENDER,25,FEMALE,MILTANK
	db 0 ; no more evolutions
	db 1,TAIL_WHIP
	db 1,TACKLE
	db 1,CHARM
	db 8,HORN_ATTACK
	db 12,DOUBLE_KICK
	db 16,MILK_DRINK
	db 20,HEADBUTT
	db 26,SWEET_KISS
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM,MOON_STONE,NIDOKING
	db 0 ; no more evolutions
	db 1,LEER
	db 1,TACKLE
	db 8,HORN_ATTACK
	db 12,DOUBLE_KICK
	db 19,POISON_STING
	db 27,FOCUS_ENERGY
	db 39,MOON_DANCE
	db 46,HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,HORN_ATTACK
	db 1,DOUBLE_KICK
	db 1,POISON_STING
	db 28,THRASH
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM,MOON_STONE,CLEFABLE
	db 0 ; no more evolutions
	db 1,POUND
	db 1,GROWL
	db 4,ENCORE
	db 8,SING
	db 13,DOUBLESLAP
	db 19,MINIMIZE
	db 26,DEFENSE_CURL
	db 32,METRONOME
	db 40,MOONLIGHT
	db 47,LIGHT_SCREEN
	db 55,MOON_DANCE
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1,SING
	db 1,DOUBLESLAP
	db 1,METRONOME
	db 1,MOONLIGHT
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM,FIRE_STONE,NINETALES
	db 0 ; no more evolutions
	db 1,EMBER
	db 1,TAIL_WHIP
	db 7,QUICK_ATTACK
	db 13,ROAR
	db 19,CONFUSE_RAY
	db 25,SAFEGUARD
	db 31,FLAMETHROWER
	db 37,FIRE_SPIN
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1,EMBER
	db 1,QUICK_ATTACK
	db 1,CONFUSE_RAY
	db 1,SAFEGUARD
	db 43,FIRE_SPIN
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM,MOON_STONE,WIGGLYTUFF
	db 0 ; no more evolutions
	db 1,SING
	db 1,POUND
	db 4,DEFENSE_CURL
	db 9,DOUBLESLAP
	db 14,DISABLE
	db 19,ROLLOUT
	db 24,MINIMIZE
	db 29,REST
	db 34,BODY_SLAM
	db 39,DOUBLE_EDGE
	db 50,MOON_DANCE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1,SING
	db 1,DISABLE
	db 1,DEFENSE_CURL
	db 1,DOUBLESLAP
	db 30,BIGGLYTUFF
	db 50,BIGGLYTUFF
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL,22,GOLBAT
	db 0 ; no more evolutions
	db 1,LEECH_LIFE
	db 6,GUST
	db 12,BITE
	db 19,CONFUSE_RAY
	db 27,WING_ATTACK
	db 36,MEAN_LOOK
	db 41,SLUDGE_BOMB
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS,TR_ANYTIME,CROBAT
	db 0 ; no more evolutions
	db 1,SCREECH
	db 1,LEECH_LIFE
	db 1,SUPERSONIC
	db 6,SUPERSONIC
	db 12,BITE
	db 19,CONFUSE_RAY
	db 30,WING_ATTACK
	db 42,MEAN_LOOK
	db 50,SLUDGE_BOMB
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL,22,GLOOM
	db 0 ; no more evolutions
	db 1,ABSORB
	db 7,SWEET_SCENT
	db 14,POISONPOWDER
	db 16,STUN_SPORE
	db 18,SLEEP_POWDER
	db 23,ACID
	db 30,PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM,SUN_STONE,VILEPLUME
	db EVOLVE_ITEM,MOON_STONE,BELLOSSOM
	db 0 ; no more evolutions
	db 1,ABSORB
	db 7,SWEET_SCENT
	db 14,POISONPOWDER
	db 16,STUN_SPORE
	db 18,SLEEP_POWDER
	db 24,ACID
	db 34,PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1,ABSORB
	db 1,SWEET_SCENT
	db 1,STUN_SPORE
	db 1,POISONPOWDER
	db 40,SOLARBEAM
	db 45,SUNNY_DAY
	db 50,MORNING_SUN
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL,24,PARASECT
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 7,STUN_SPORE
	db 13,POISONPOWDER
	db 19,LEECH_LIFE
	db 25,SPORE
	db 31,SLASH
	db 37,GROWTH
	db 43,GIGA_DRAIN
	db 50,SWARM
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,STUN_SPORE
	db 1,POISONPOWDER
	db 7,STUN_SPORE
	db 13,POISONPOWDER
	db 19,LEECH_LIFE
	db 28,SPORE
	db 32,GLARE
	db 37,SLASH
	db 46,GROWTH
	db 55,GIGA_DRAIN
	db 60,SWARM
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL,31,VENOMOTH
	db EVOLVE_HAPPINESS,TR_MORNDAY,BUTTERFREE
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,DISABLE
	db 9,SUPERSONIC
	db 17,CONFUSION
	db 20,POISONPOWDER
	db 25,LEECH_LIFE
	db 28,STUN_SPORE
	db 33,PSYBEAM
	db 36,SLEEP_POWDER
	db 41,PSYCHIC_M
	db 45,SWARM
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,DISABLE
	db 1,SWARM
	db 1,SUPERSONIC
	db 9,SUPERSONIC
	db 17,CONFUSION
	db 20,POISONPOWDER
	db 25,LEECH_LIFE
	db 28,STUN_SPORE
	db 31,GUST
	db 36,PSYBEAM
	db 42,SLEEP_POWDER
	db 52,PSYCHIC_M
	db 58,SWARM
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL,30,DUGTRIO
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 5,GROWL
	db 9,MAGNITUDE
	db 17,DIG
	db 25,SAND_ATTACK
	db 33,SLASH
	db 41,EARTHQUAKE
	db 49,FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,GROWL
	db 1,MAGNITUDE
	db 5,GROWL
	db 9,MAGNITUDE
	db 17,DIG
	db 25,SAND_ATTACK
	db 37,SLASH
	db 49,EARTHQUAKE
	db 55,TRI_ATTACK
	db 61,FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL,28,PERSIAN
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,GROWL
	db 11,BITE
	db 20,PAY_DAY
	db 28,FAINT_ATTACK
	db 35,SCREECH
	db 41,FURY_SWIPES
	db 46,SLASH
	db 50,CRUNCH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,GROWL
	db 1,BITE
	db 11,BITE
	db 20,PAY_DAY
	db 29,FAINT_ATTACK
	db 38,SCREECH
	db 46,FURY_SWIPES
	db 53,SLASH
	db 60,CRUNCH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL,33,GOLDUCK
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,WATER_GUN
	db 5,TAIL_WHIP
	db 10,DISABLE
	db 16,CONFUSION
	db 23,SCREECH
	db 31,PSYCH_UP
	db 40,FURY_SWIPES
	db 50,HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,TAIL_WHIP
	db 1,DISABLE
	db 1,CONFUSION
	db 5,TAIL_WHIP
	db 10,DISABLE
	db 16,CONFUSION
	db 23,SCREECH
	db 31,PSYCH_UP
	db 44,FURY_SWIPES
	db 58,HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL,28,PRIMEAPE
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,LEER
	db 9,LOW_KICK
	db 15,KARATE_CHOP
	db 21,FURY_SWIPES
	db 27,FOCUS_ENERGY
	db 33,SEISMIC_TOSS
	db 39,CROSS_CHOP
	db 45,SCREECH
	db 51,THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,LEER
	db 1,LOW_KICK
	db 1,RAGE
	db 9,LOW_KICK
	db 15,KARATE_CHOP
	db 21,FURY_SWIPES
	db 27,FOCUS_ENERGY
	db 28,RAGE
	db 36,SEISMIC_TOSS
	db 45,CROSS_CHOP
	db 54,SCREECH
	db 63,THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM,FIRE_STONE,ARCANINE
	db 0 ; no more evolutions
	db 1,BITE
	db 1,ROAR
	db 7,EMBER
	db 14,LEER
	db 20,PURSUIT
	db 26,TAKE_DOWN
	db 34,FLAME_WHEEL
	db 42,AGILITY
	db 50,FLAMETHROWER
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1,ROAR
	db 1,LEER
	db 1,TAKE_DOWN
	db 1,FLAME_WHEEL
	db 50,EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL,25,POLIWHIRL
	db 0 ; no more evolutions
	db 1,BUBBLE
	db 7,HYPNOSIS
	db 13,WATER_GUN
	db 19,DOUBLESLAP
	db 25,RAIN_DANCE
	db 31,BODY_SLAM
	db 37,BELLY_DRUM
	db 43,HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM,WATER_STONE,POLIWRATH
	db EVOLVE_ITEM,SUN_STONE,POLITOED
	db 0 ; no more evolutions
	db 1,BUBBLE
	db 1,HYPNOSIS
	db 1,WATER_GUN
	db 7,HYPNOSIS
	db 13,WATER_GUN
	db 19,DOUBLESLAP
	db 27,RAIN_DANCE
	db 35,BODY_SLAM
	db 43,BELLY_DRUM
	db 51,HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1,WATER_GUN
	db 1,HYPNOSIS
	db 1,DOUBLESLAP
	db 35,SUBMISSION
	db 43,VITAL_THROW
	db 51,MIND_READER
	db 60,CROSS_CHOP
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL,16,KADABRA
	db 0 ; no more evolutions
	db 1,TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_LEVEL,36,ALAKAZAM
	db 0 ; no more evolutions
	db 1,TELEPORT
	db 1,CONFUSION
	db 16,CONFUSION
	db 18,DISABLE
	db 21,PSYBEAM
	db 26,RECOVER
	db 31,FUTURE_SIGHT
	db 38,PSYCHIC_M
	db 45,REFLECT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1,TELEPORT
	db 1,CONFUSION
	db 16,CONFUSION
	db 18,DISABLE
	db 21,PSYBEAM
	db 26,RECOVER
	db 31,FUTURE_SIGHT
	db 38,PSYCHIC_M
	db 45,REFLECT
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL,28,MACHOKE
	db 0 ; no more evolutions
	db 1,LOW_KICK
	db 1,LEER
	db 7,FOCUS_ENERGY
	db 13,KARATE_CHOP
	db 19,SEISMIC_TOSS
	db 25,ICE_PUNCH
	db 31,VITAL_THROW
	db 37,CROSS_CHOP
	db 43,SCARY_FACE
	db 49,SUBMISSION
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_LEVEL,42,MACHAMP
	db 0 ; no more evolutions
	db 1,LOW_KICK
	db 1,LEER
	db 1,FOCUS_ENERGY
	db 8,FOCUS_ENERGY
	db 15,KARATE_CHOP
	db 19,SEISMIC_TOSS
	db 25,FIRE_PUNCH
	db 34,VITAL_THROW
	db 43,CROSS_CHOP
	db 52,SCARY_FACE
	db 61,SUBMISSION
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1,LOW_KICK
	db 1,LEER
	db 1,FOCUS_ENERGY
	db 8,FOCUS_ENERGY
	db 15,KARATE_CHOP
	db 19,SEISMIC_TOSS
	db 25,THUNDERPUNCH
	db 34,VITAL_THROW
	db 43,CROSS_CHOP
	db 52,SCARY_FACE
	db 61,SUBMISSION
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL,21,WEEPINBELL
	db 0 ; no more evolutions
	db 1,VINE_WHIP
	db 6,GROWTH
	db 11,WRAP
	db 15,SLEEP_POWDER
	db 17,POISONPOWDER
	db 19,STUN_SPORE
	db 23,ACID
	db 30,SWEET_SCENT
	db 37,RAZOR_LEAF
	db 45,SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM,LEAF_STONE,VICTREEBEL
	db 0 ; no more evolutions
	db 1,VINE_WHIP
	db 1,GROWTH
	db 1,WRAP
	db 6,GROWTH
	db 11,WRAP
	db 15,SLEEP_POWDER
	db 17,POISONPOWDER
	db 19,STUN_SPORE
	db 24,ACID
	db 33,CRUNCH
	db 42,RAZOR_LEAF
	db 54,BODY_SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1,VINE_WHIP
	db 1,SLEEP_POWDER
	db 1,SWEET_SCENT
	db 1,RAZOR_LEAF
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL,30,TENTACRUEL
	db 0 ; no more evolutions
	db 1,POISON_STING
	db 6,SUPERSONIC
	db 12,CONSTRICT
	db 19,ACID
	db 25,BUBBLEBEAM
	db 30,WRAP
	db 36,BARRIER
	db 43,SCREECH
	db 49,HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1,POISON_STING
	db 1,SUPERSONIC
	db 1,CONSTRICT
	db 6,SUPERSONIC
	db 12,CONSTRICT
	db 19,ACID
	db 25,BUBBLEBEAM
	db 30,WRAP
	db 38,BARRIER
	db 47,SCREECH
	db 55,HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL,26,GRAVELER
	db 0 ; no more evolutions
	db 1,TACKLE
	db 4,DEFENSE_CURL
	db 11,ROCK_THROW
	db 16,MAGNITUDE
	db 21,ROLLOUT
	db 25,SELFDESTRUCT
	db 31,ROCK_SLIDE
	db 36,EARTHQUAKE
	db 41,EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_ITEM,FABLED_STONE,GOLEM
	db 0 ; no more evolutions
	db 1,TACKLE
	db 4,DEFENSE_CURL
	db 11,ROCK_THROW
	db 16,MAGNITUDE
	db 21,ROLLOUT
	db 25,SELFDESTRUCT
	db 35,ROCK_SLIDE
	db 41,EARTHQUAKE
	db 48,EXPLOSION
	db 55,CROSS_CHOP
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1,EXPLOSION
	db 1,EARTHQUAKE
	db 1,ROCK_SLIDE
	db 1,ROLLOUT
	db 50,OUTRAGE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL,40,RAPIDASH
	db EVOLVE_HAPPINESS,TR_ANYTIME,RAPIDASH
	db 0 ; no more evolutions
	db 1,TACKLE
	db 4,GROWL
	db 8,TAIL_WHIP
	db 13,EMBER
	db 19,STOMP
	db 26,FIRE_SPIN
	db 34,TAKE_DOWN
	db 43,AGILITY
	db 53,FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,GROWL
	db 1,TAIL_WHIP
	db 1,EMBER
	db 4,GROWL
	db 8,TAIL_WHIP
	db 13,EMBER
	db 19,STOMP
	db 26,FIRE_SPIN
	db 34,TAKE_DOWN
	db 40,FURY_ATTACK
	db 47,AGILITY
	db 61,FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL,37,SLOWBRO
	db EVOLVE_ITEM,FABLED_STONE,SLOWKING
	db 0 ; no more evolutions
	db 1,CURSE
	db 1,TACKLE
	db 6,GROWL
	db 15,WATER_GUN
	db 20,CONFUSION
	db 29,DISABLE
	db 34,HEADBUTT
	db 43,AMNESIA
	db 48,PSYCHIC_M
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1,CURSE
	db 1,TACKLE
	db 1,GROWL
	db 1,WATER_GUN
	db 6,GROWL
	db 15,WATER_GUN
	db 20,CONFUSION
	db 29,DISABLE
	db 34,HEADBUTT
	db 37,WITHDRAW
	db 46,AMNESIA
	db 54,PSYCHIC_M
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL,30,MAGNETON
	db 0 ; no more evolutions
	db 1,TACKLE
	db 6,THUNDERSHOCK
	db 11,SUPERSONIC
	db 16,SONICBOOM
	db 21,THUNDER_WAVE
	db 27,SPARK
	db 33,LOCK_ON
	db 39,SWIFT
	db 45,ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 6,THUNDERSHOCK
	db 11,SUPERSONIC
	db 16,SONICBOOM
	db 21,THUNDER_WAVE
	db 27,SPARK
	db 30,TRI_ATTACK
	db 36,LOCK_ON
	db 45,SWIFT
	db 52,ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db EVOLVE_HAPPINESS,TR_ANYTIME,SAMURAI
	db 0 ; no more evolutions
	db 1,PECK
	db 7,SAND_ATTACK
	db 13,LEER
	db 19,WING_ATTACK
	db 25,SWORDS_DANCE
	db 31,AGILITY
	db 37,SLASH
	db 44,FALSE_SWIPE
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL,31,DODRIO
	db 0 ; no more evolutions
	db 1,PECK
	db 1,GROWL
	db 9,PURSUIT
	db 13,FURY_ATTACK
	db 21,SCREECH
	db 25,RAGE
	db 32,DRILL_PECK
	db 35,AGILITY
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1,PECK
	db 1,GROWL
	db 1,PURSUIT
	db 1,FURY_ATTACK
	db 9,PURSUIT
	db 13,FURY_ATTACK
	db 21,SCREECH
	db 25,RAGE
	db 31,TRI_ATTACK
	db 38,DRILL_PECK
	db 47,AGILITY
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL,34,DEWGONG
	db 0 ; no more evolutions
	db 1,HEADBUTT
	db 5,GROWL
	db 16,AURORA_BEAM
	db 21,REST
	db 32,TAKE_DOWN
	db 37,ICE_BEAM
	db 48,SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1,HEADBUTT
	db 1,GROWL
	db 1,AURORA_BEAM
	db 5,GROWL
	db 16,AURORA_BEAM
	db 21,REST
	db 32,TAKE_DOWN
	db 43,ICE_BEAM
	db 60,SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL,38,MUK
	db 0 ; no more evolutions
	db 1,POISON_GAS
	db 1,POUND
	db 5,HARDEN
	db 10,DISABLE
	db 16,SLUDGE
	db 23,MINIMIZE
	db 31,SCREECH
	db 40,ACID_ARMOR
	db 50,SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1,POISON_GAS
	db 1,POUND
	db 1,HARDEN
	db 33,HARDEN
	db 37,DISABLE
	db 45,SLUDGE
	db 23,MINIMIZE
	db 31,SCREECH
	db 45,ACID_ARMOR
	db 60,SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_LEVEL,38,CLOYSTER
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,WITHDRAW
	db 9,SUPERSONIC
	db 15,LICK
	db 19,AURORA_BEAM
	db 25,PROTECT
	db 33,LEER
	db 41,CLAMP
	db 45,SHADOW_BALL
	db 49,ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1,WITHDRAW
	db 1,SUPERSONIC
	db 1,AURORA_BEAM
	db 1,PROTECT
if _CRYSTAL
	db 33,SHADOW_BALL
endc
	db 41,SPIKES
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL,25,HAUNTER
	db 0 ; no more evolutions
	db 1,HYPNOSIS
	db 1,LICK
	db 8,SPITE
	db 13,MEAN_LOOK
	db 16,CURSE
	db 21,NIGHT_SHADE
	db 28,CONFUSE_RAY
	db 33,DREAM_EATER
	db 36,DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_LEVEL,40,GENGAR
	db 0 ; no more evolutions
	db 1,HYPNOSIS
	db 1,LICK
	db 1,SPITE
	db 8,SPITE
	db 13,MEAN_LOOK
	db 16,CURSE
	db 21,NIGHT_SHADE
	db 31,CONFUSE_RAY
	db 39,DREAM_EATER
	db 48,DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1,HYPNOSIS
	db 1,LICK
	db 1,SPITE
	db 8,SPITE
	db 13,MEAN_LOOK
	db 16,CURSE
	db 21,NIGHT_SHADE
	db 31,CONFUSE_RAY
	db 39,DREAM_EATER
	db 48,DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_ITEM,ALLOY_STONE,STEELIX
	db 0 ; no more evolutions
	db 1,CONSTRICT
	db 1,SCREECH
	db 1,SHARPEN
	db 10,BIND
	db 14,ROCK_THROW
	db 23,HARDEN
	db 27,RAGE
	db 32,ROCK_SLIDE
	db 36,SANDSTORM
	db 40,SLAM
	db 50,EARTHQUAKE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL,26,HYPNO
	db 0 ; no more evolutions
	db 1,POUND
	db 1,HYPNOSIS
	db 10,DISABLE
	db 18,CONFUSION
	db 25,HEADBUTT
	db 31,DREAM_EATER
	db 36,NIGHTMARE
	db 40,PSYCHIC_M
	db 43,PSYCH_UP
	db 45,FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1,POUND
	db 1,HYPNOSIS
	db 1,DISABLE
	db 1,CONFUSION
	db 10,DISABLE
	db 18,CONFUSION
	db 25,HEADBUTT
	db 33,DREAM_EATER
	db 40,NIGHTMARE
	db 49,PSYCHIC_M
	db 55,PSYCH_UP
	db 60,FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL,28,KINGLER
	db 0 ; no more evolutions
	db 1,BUBBLE
	db 5,LEER
	db 12,VICEGRIP
	db 16,HARDEN
	db 20,METAL_CLAW
	db 23,SLASH
	db 27,GUILLOTINE
	db 27,BUBBLEBEAM
	db 34,PROTECT
	db 41,CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1,BUBBLE
	db 5,LEER
	db 12,VICEGRIP
	db 16,HARDEN
	db 20,METAL_CLAW
	db 23,SLASH
	db 27,GUILLOTINE
	db 27,BUBBLEBEAM
	db 38,PROTECT
	db 49,CRABHAMMER
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL,30,ELECTRODE
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,THUNDERSHOCK
	db 9,SCREECH
	db 17,SONICBOOM
	db 23,SELFDESTRUCT
	db 26,SPARK
	db 29,ROLLOUT
	db 33,LIGHT_SCREEN
	db 37,SWIFT
	db 39,EXPLOSION
	db 41,MIRROR_COAT
	db 47,THUNDER
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,THUNDERSHOCK
	db 9,SCREECH
	db 17,SONICBOOM
	db 23,SELFDESTRUCT
	db 26,SPARK
	db 29,ROLLOUT
	db 34,LIGHT_SCREEN
	db 39,SWIFT
	db 45,EXPLOSION
	db 50,MIRROR_COAT
	db 57,THUNDER
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM,LEAF_STONE,EXEGGUTOR
	db 0 ; no more evolutions
	db 1,BARRAGE
	db 1,HYPNOSIS
	db 7,REFLECT
	db 13,LEECH_SEED
	db 19,CONFUSION
	db 25,STUN_SPORE
	db 31,POISONPOWDER
	db 37,SLEEP_POWDER
	db 43,SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1,BARRAGE
	db 1,HYPNOSIS
	db 1,CONFUSION
	db 19,STOMP
	db 31,EGG_BOMB
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL,28,MAROWAK
	db 0 ; no more evolutions
	db 1,GROWL
	db 5,TAIL_WHIP
	db 9,BONE_CLUB
	db 13,HEADBUTT
	db 17,LEER
	db 21,FOCUS_ENERGY
	db 25,BONEMERANG
	db 29,RAGE
	db 33,FALSE_SWIPE
	db 35,SHADOW_BALL
	db 37,THRASH
	db 41,BONE_RUSH
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1,GROWL
	db 1,TAIL_WHIP
	db 1,BONE_CLUB
	db 1,HEADBUTT
	db 5,TAIL_WHIP
	db 9,BONE_CLUB
	db 13,HEADBUTT
	db 17,LEER
	db 21,FOCUS_ENERGY
	db 25,BONEMERANG
	db 32,RAGE
	db 39,FALSE_SWIPE
	db 43,SHADOW_BALL
	db 46,THRASH
	db 53,BONE_RUSH
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1,DOUBLE_KICK
	db 6,MEDITATE
	db 11,ROLLING_KICK
	db 16,JUMP_KICK
	db 21,FOCUS_ENERGY
	db 26,HI_JUMP_KICK
	db 31,MIND_READER
	db 36,DETECT
	db 41,ENDURE
	db 46,MEGA_KICK
	db 51,REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1,COMET_PUNCH
	db 7,AGILITY
	db 13,PURSUIT
	db 26,THUNDERPUNCH
	db 26,ICE_PUNCH
	db 26,FIRE_PUNCH
	db 32,MACH_PUNCH
	db 38,MEGA_PUNCH
	db 44,DETECT
	db 50,COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1,LICK
	db 1,POISON_GAS
	db 7,SUPERSONIC
	db 13,DEFENSE_CURL
	db 19,STOMP
	db 23,WRAP
	db 27,ACID
	db 31,DISABLE
	db 37,SLAM
	db 43,SCREECH
	db 49,SLUDGE_BOMB
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL,35,WEEZING
	db 0 ; no more evolutions
	db 1,POISON_GAS
	db 1,TACKLE
	db 9,SMOG
	db 17,SELFDESTRUCT
	db 21,SLUDGE
	db 25,SMOKESCREEN
	db 33,HAZE
	db 41,EXPLOSION
	db 45,DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1,POISON_GAS
	db 1,TACKLE
	db 9,SMOG
	db 17,SELFDESTRUCT
	db 21,SLUDGE
	db 25,SMOKESCREEN
	db 33,HAZE
	db 44,EXPLOSION
	db 51,DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL,42,RHYDON
	db 0 ; no more evolutions
	db 1,HORN_ATTACK
	db 1,TAIL_WHIP
	db 13,STOMP
	db 19,FURY_ATTACK
	db 25,SHARPEN
	db 31,TAKE_DOWN
	db 37,HORN_DRILL
	db 49,DOUBLE_EDGE
	db 55,EARTHQUAKE
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1,HORN_ATTACK
	db 1,TAIL_WHIP
	db 13,STOMP
	db 19,FURY_ATTACK
	db 25,SHARPEN
	db 31,TAKE_DOWN
	db 37,HORN_DRILL
	db 50,DOUBLE_EDGE
	db 60,EARTHQUAKE
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS,TR_ANYTIME,BLISSEY
	db 0 ; no more evolutions
	db 1,POUND
	db 5,GROWL
	db 9,TAIL_WHIP
	db 13,SOFTBOILED
	db 17,DOUBLESLAP
	db 23,MINIMIZE
	db 29,SING
	db 35,EGG_BOMB
	db 41,DEFENSE_CURL
	db 49,LIGHT_SCREEN
	db 57,DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1,CONSTRICT
	db 1,WRAP
	db 4,SLEEP_POWDER
	db 10,ABSORB
	db 13,POISONPOWDER
	db 19,VINE_WHIP
	db 25,BIND
	db 31,MEGA_DRAIN
	db 34,STUN_SPORE
	db 40,SLAM
	db 46,GROWTH
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1,COMET_PUNCH
	db 7,LEER
	db 13,BITE
	db 19,TAIL_WHIP
	db 25,MEGA_PUNCH
	db 31,RAGE
	db 37,ENDURE
	db 43,DIZZY_PUNCH
	db 49,REVERSAL
	db 55,VITAL_THROW
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL,32,SEADRA
	db EVOLVE_ITEM,FABLED_STONE,KINGDRA
	db 0 ; no more evolutions
	db 1,BUBBLE
	db 8,SMOKESCREEN
	db 15,LEER
	db 22,WATER_GUN
	db 29,TWISTER
	db 36,AGILITY
	db 43,HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db 0 ; no more evolutions
	db 1,BUBBLE
	db 8,SMOKESCREEN
	db 15,LEER
	db 22,WATER_GUN
	db 32,TOXIC
	db 37,AGILITY
	db 40,OCTAZOOKA
	db 45,SLUDGE_BOMB
	db 51,HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL,33,SEAKING
	db 0 ; no more evolutions
	db 1,PECK
	db 1,TAIL_WHIP
	db 1,TAIL_WHIP
	db 10,SUPERSONIC
	db 15,HORN_ATTACK
	db 24,FLAIL
	db 29,DRILL_PECK
	db 34,WATERFALL
	db 35,HORN_DRILL
	db 36,MEGAHORN
	db 38,AGILITY
	db 40,THUNDER
	db 44,HYDRO_PUMP
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1,PECK
	db 1,TAIL_WHIP
	db 10,SUPERSONIC
	db 15,HORN_ATTACK
	db 24,FLAIL
	db 29,DRILL_PECK
	db 34,WATERFALL
	db 36,HORN_DRILL
	db 38,MEGAHORN
	db 42,AGILITY
	db 46,THUNDER
	db 50,HYDRO_PUMP
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM,WATER_STONE,STARMIE
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,HARDEN
	db 7,WATER_GUN
	db 13,RAPID_SPIN
	db 19,RECOVER
	db 25,SWIFT
	db 31,BUBBLEBEAM
	db 37,MINIMIZE
	db 43,LIGHT_SCREEN
	db 50,HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,RAPID_SPIN
	db 1,RECOVER
	db 1,BUBBLEBEAM
	db 37,CONFUSE_RAY
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1,BARRIER
	db 6,CONFUSION
	db 11,SUBSTITUTE
	db 16,MEDITATE
	db 21,DOUBLESLAP
	db 26,LIGHT_SCREEN
	db 26,REFLECT
	db 31,ENCORE
	db 36,PSYBEAM
	db 41,BATON_PASS
	db 46,SAFEGUARD
	db 51,PSYCHIC_M
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_ITEM,ALLOY_STONE,SCIZOR
	db 0 ; no more evolutions
	db 1,QUICK_ATTACK
	db 1,LEER
	db 6,FOCUS_ENERGY
	db 12,PURSUIT
	db 18,FALSE_SWIPE
	db 24,AGILITY
	db 30,WING_ATTACK
	db 36,SLASH
	db 42,SWORDS_DANCE
	db 48,DOUBLE_TEAM
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1,POUND
	db 1,LICK
	db 9,LOVELY_KISS
	db 13,POWDER_SNOW
	db 21,DOUBLESLAP
	db 25,ICE_PUNCH
	db 35,MEAN_LOOK
	db 41,BODY_SLAM
	db 51,PERISH_SONG
	db 57,BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1,QUICK_ATTACK
	db 1,LEER
	db 9,THUNDERPUNCH
	db 17,LIGHT_SCREEN
	db 21,KARATE_CHOP
	db 25,SWIFT
	db 36,SCREECH
	db 42,CROSS_CHOP
	db 47,THUNDERBOLT
	db 58,THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1,EMBER
	db 1,SMOG
	db 7,LEER
	db 13,KARATE_CHOP
	db 19,FIRE_PUNCH
	db 25,SMOKESCREEN
	db 33,SUNNY_DAY
	db 41,FLAMETHROWER
	db 45,CROSS_CHOP
	db 49,CONFUSE_RAY
	db 57,FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1,VICEGRIP
	db 1,HARDEN
	db 7,FOCUS_ENERGY
	db 13,BIND
	db 19,SEISMIC_TOSS
	db 25,SWARM
	db 31,GUILLOTINE
	db 37,SUBMISSION
	db 43,SWORDS_DANCE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 4,TAIL_WHIP
	db 8,RAGE
	db 13,HORN_ATTACK
	db 20,SCARY_FACE
	db 26,PURSUIT
	db 34,REST
	db 43,THRASH
	db 53,TAKE_DOWN
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL,20,GYARADOS
	db 0 ; no more evolutions
	db 1,SPLASH
	db 15,TACKLE
	db 30,FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1,THRASH
	db 20,THRASH
	db 20,BITE
	db 25,DRAGON_RAGE
	db 30,LEER
	db 35,TWISTER
	db 40,HYDRO_PUMP
	db 45,RAIN_DANCE
	db 50,HYPER_BEAM
	db 55,OUTRAGE
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1,WATER_GUN
	db 1,GROWL
	db 1,SING
	db 8,MIST
	db 15,BODY_SLAM
	db 22,CONFUSE_RAY
	db 29,PERISH_SONG
	db 36,ICE_BEAM
	db 43,RAIN_DANCE
	db 50,SAFEGUARD
	db 57,HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1,TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM,THUNDERSTONE,JOLTEON
	db EVOLVE_ITEM,WATER_STONE,VAPOREON
	db EVOLVE_ITEM,FIRE_STONE,FLAREON
	db EVOLVE_HAPPINESS,TR_MORNDAY,ESPEON
	db EVOLVE_HAPPINESS,TR_NITE,UMBREON
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,TAIL_WHIP
	db 8,SAND_ATTACK
	db 16,GROWL
	db 23,QUICK_ATTACK
	db 30,BITE
if _CRYSTAL
	db 36,BATON_PASS
else
	db 36,FOCUS_ENERGY
endc
	db 42,TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,TAIL_WHIP
	db 8,SAND_ATTACK
	db 16,WATER_GUN
	db 23,QUICK_ATTACK
	db 30,BITE
	db 36,AURORA_BEAM
	db 42,HAZE
	db 47,ACID_ARMOR
	db 52,HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,TAIL_WHIP
	db 8,SAND_ATTACK
	db 16,THUNDERSHOCK
	db 23,QUICK_ATTACK
	db 30,DOUBLE_KICK
	db 36,PIN_MISSILE
	db 42,THUNDER_WAVE
	db 47,AGILITY
	db 52,THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,TAIL_WHIP
	db 8,SAND_ATTACK
	db 16,EMBER
	db 23,QUICK_ATTACK
	db 30,BITE
	db 36,FIRE_SPIN
	db 42,DOUBLE_EDGE
	db 42,DIG
	db 47,SWORDS_DANCE
	db 52,FLAMETHROWER
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_ITEM,UP_GRADE,PORYGON2
	db 0 ; no more evolutions
	db 1,CONVERSION2
	db 1,TACKLE
	db 1,CONVERSION
	db 9,AGILITY
	db 12,PSYBEAM
	db 20,RECOVER
	db 24,SHARPEN
	db 32,LOCK_ON
	db 36,TRI_ATTACK
	db 44,ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL,40,OMASTAR
	db 0 ; no more evolutions
	db 1,CONSTRICT
	db 1,WITHDRAW
	db 13,BITE
	db 19,WATER_GUN
	db 31,LEER
	db 37,PROTECT
	db 49,ANCIENTPOWER
	db 55,HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1,CONSTRICT
	db 1,WITHDRAW
	db 13,BITE
	db 19,WATER_GUN
	db 31,LEER
	db 37,PROTECT
	db 40,SPIKES
	db 54,ANCIENTPOWER
	db 65,HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL,40,KABUTOPS
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,HARDEN
	db 10,ABSORB
	db 19,LEER
	db 28,BUBBLEBEAM
	db 37,ENDURE
	db 46,MEGA_DRAIN
	db 55,ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,HARDEN
	db 10,ABSORB
	db 19,LEER
	db 28,BUBBLEBEAM
	db 37,ENDURE
	db 40,SLASH
	db 51,MEGA_DRAIN
	db 65,ANCIENTPOWER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1,WING_ATTACK
	db 8,AGILITY
	db 15,BITE
	db 22,SUPERSONIC
	db 29,ANCIENTPOWER
	db 36,SCARY_FACE
	db 43,TAKE_DOWN
	db 50,HYPER_BEAM
	db 56,ROCK_SLIDE
	db 63,CRUNCH
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 8,AMNESIA
	db 15,DEFENSE_CURL
	db 22,BELLY_DRUM
	db 29,HEADBUTT
	db 36,SNORE
	db 36,REST
	db 43,BODY_SLAM
	db 50,ROLLOUT
	db 57,HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1,GUST
	db 1,MIND_READER
	db 1,ICE_BEAM
	db 1,MIST
	db 65,BLIZZARD
	db 72,WHIRLWIND
	db 80,RAZOR_WIND
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1,PECK
	db 1,THUNDERBOLT
	db 1,THUNDER_WAVE
	db 1,REFLECT
	db 65,THUNDER
	db 72,AGILITY
	db 80,DRILL_PECK
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1,WING_ATTACK
	db 1,FLAMETHROWER
	db 1,FIRE_SPIN
	db 1,LIGHT_SCREEN
	db 55,FIRE_BLAST
	db 62,SAFEGUARD
	db 70,SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL,30,DRAGONAIR
	db 0 ; no more evolutions
	db 1,WRAP
	db 1,LEER
	db 8,THUNDER_WAVE
	db 15,TWISTER
	db 22,DRAGON_RAGE
	db 29,SLAM
	db 36,AGILITY
	db 39,DRAGONBREATH
	db 43,SAFEGUARD
	db 50,OUTRAGE
	db 55,HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL,55,DRAGONITE
	db 0 ; no more evolutions
	db 1,WRAP
	db 1,LEER
	db 8,THUNDER_WAVE
	db 15,TWISTER
	db 22,DRAGON_RAGE
	db 29,SLAM
	db 38,AGILITY
	db 43,DRAGONBREATH
	db 47,SAFEGUARD
	db 56,OUTRAGE
	db 65,HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1,WRAP
	db 1,LEER
	db 8,THUNDER_WAVE
	db 15,TWISTER
	db 22,DRAGON_RAGE
	db 29,SLAM
	db 38,AGILITY
	db 43,DRAGONBREATH
	db 47,SAFEGUARD
	db 55,WING_ATTACK
	db 61,OUTRAGE
	db 68,SKY_ATTACK
	db 75,HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1,PSYCHIC_M
	db 1,BARRIER
	db 1,SLAM
	db 1,SAFEGUARD
	db 80,TELEPORT
	db 80,SHADOW_BALL
	db 85,LIGHT_SCREEN
	db 85,REFLECT
	db 90,RECOVER
	db 90,DISABLE
	db 100,HYPER_BEAM
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1,ANCIENTPOWER
	db 1,MEGA_PUNCH
	db 1,METRONOME
	db 1,PSYCHIC_M
	db 60,TRANSFORM
	db 70,TELEPORT
	db 80,SAFEGUARD
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL,18,BAYLEEF
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,GROWL
	db 8,RAZOR_LEAF
	db 12,REFLECT
	db 15,POISONPOWDER
	db 18,SYNTHESIS
	db 24,BODY_SLAM
	db 28,SUNNY_DAY
	db 32,LIGHT_SCREEN
	db 38,SAFEGUARD
	db 45,SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL,36,MEGANIUM
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,GROWL
	db 8,RAZOR_LEAF
	db 12,REFLECT
	db 15,POISONPOWDER
	db 20,SYNTHESIS
	db 26,BODY_SLAM
	db 33,SUNNY_DAY
	db 36,LIGHT_SCREEN
	db 42,SAFEGUARD
	db 50,SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,GROWL
	db 1,RAZOR_LEAF
	db 1,REFLECT
	db 8,RAZOR_LEAF
	db 12,REFLECT
	db 15,POISONPOWDER
	db 23,SYNTHESIS
	db 31,BODY_SLAM
	db 35,SUNNY_DAY
	db 41,LIGHT_SCREEN
	db 51,SAFEGUARD
	db 56,HEAL_BELL
	db 61,SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL,18,QUILAVA
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,LEER
	db 6,SMOKESCREEN
	db 12,EMBER
	db 19,QUICK_ATTACK
	db 27,FLAME_WHEEL
	db 36,SWIFT
	db 46,FLAMETHROWER
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL,36,TYPHLOSION
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,LEER
	db 1,SMOKESCREEN
	db 6,SMOKESCREEN
	db 12,EMBER
	db 21,QUICK_ATTACK
	db 31,FLAME_WHEEL
	db 42,SWIFT
	db 54,FLAMETHROWER
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,LEER
	db 1,SMOKESCREEN
	db 1,EMBER
	db 6,SMOKESCREEN
	db 12,EMBER
	db 21,QUICK_ATTACK
	db 31,FLAME_WHEEL
	db 45,SWIFT
	db 60,FLAMETHROWER
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL,18,CROCONAW
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,LEER
	db 7,RAGE
	db 13,WATER_GUN
	db 20,BITE
	db 27,SCARY_FACE
	db 35,SLASH
	db 43,SCREECH
	db 52,HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL,36,FERALIGATR
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,LEER
	db 1,RAGE
	db 7,RAGE
	db 13,WATER_GUN
	db 21,BITE
	db 28,SCARY_FACE
	db 37,SLASH
	db 45,SCREECH
	db 55,HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,LEER
	db 1,RAGE
	db 1,WATER_GUN
	db 7,RAGE
	db 13,WATER_GUN
	db 21,BITE
	db 28,SCARY_FACE
	db 38,SLASH
	db 47,SCREECH
	db 58,HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL,20,FURRET
	db 0 ; no more evolutions
	db 1,TACKLE
	db 5,DEFENSE_CURL
	db 11,QUICK_ATTACK
	db 17,FURY_SWIPES
	db 25,SLAM
	db 33,REST
	db 37,BATON_PASS
	db 41,AMNESIA
	db 48,ROLLOUT
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,DEFENSE_CURL
	db 1,QUICK_ATTACK
	db 5,DEFENSE_CURL
	db 11,QUICK_ATTACK
	db 18,FURY_SWIPES
	db 21,AGILITY
	db 25,SLAM
	db 35,REST
	db 40,AMNESIA
	db 48,BATON_PASS
	db 55,ROLLOUT
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL,22,NOCTOWL
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,GROWL
	db 6,LEER
	db 9,PECK
	db 13,CONFUSION
	db 16,HYPNOSIS
	db 22,REFLECT
	db 25,LIGHT_SCREEN
	db 28,TAKE_DOWN
	db 34,PSYCHIC_M
	db 40,MEAN_LOOK
	db 45,DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,GROWL
	db 6,LEER
	db 9,PECK
	db 13,CONFUSION
	db 16,HYPNOSIS
	db 25,REFLECT
	db 25,LIGHT_SCREEN
	db 33,TAKE_DOWN
	db 41,PSYCHIC_M
	db 49,MEAN_LOOK
	db 55,DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL,22,LEDIAN
	db 0 ; no more evolutions
	db 1,COMET_PUNCH
	db 6,CONFUSION
	db 10,SUPERSONIC
	db 16,LIGHT_SCREEN
	db 16,REFLECT
	db 20,SAFEGUARD
	db 25,AGILITY
	db 29,BATON_PASS
	db 36,PSYCHIC_M
	db 40,ICE_PUNCH
	db 40,FIRE_PUNCH
	db 40,THUNDERPUNCH
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1,COMET_PUNCH
	db 6,CONFUSION
	db 10,SUPERSONIC
	db 16,LIGHT_SCREEN
	db 16,REFLECT
	db 22,SAFEGUARD
	db 26,AGILITY
	db 32,BATON_PASS
	db 39,PSYCHIC_M
	db 44,MOON_DANCE
	db 50,ICE_PUNCH
	db 50,FIRE_PUNCH
	db 50,THUNDERPUNCH
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL,22,ARIADOS
	db 0 ; no more evolutions
	db 1,POISON_STING
	db 1,STRING_SHOT
	db 4,LEECH_LIFE
	db 8,SCARY_FACE
	db 11,CONSTRICT
	db 14,MEAN_LOOK
	db 18,NIGHT_SHADE
	db 23,KINESIS
	db 30,FURY_SWIPES
	db 37,SPIDER_WEB
if _CRYSTAL
	db 45,AGILITY
else
	db 45,SCREECH
endc
	db 53,SLUDGE_BOMB
	db 55,SWARM
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1,POISON_STING
	db 1,STRING_SHOT
	db 4,LEECH_LIFE
	db 8,SCARY_FACE
	db 11,CONSTRICT
	db 14,MEAN_LOOK
	db 18,NIGHT_SHADE
	db 26,KINESIS
	db 34,FURY_SWIPES
	db 40,SPIDER_WEB
if _CRYSTAL
	db 50,AGILITY
else
	db 50,SCREECH
endc
	db 55,SLUDGE_BOMB
	db 60,SWARM
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1,SCREECH
	db 1,LEECH_LIFE
	db 6,SUPERSONIC
	db 12,BITE
	db 19,CONFUSE_RAY
	db 30,WING_ATTACK
	db 36,DOUBLE_TEAM
	db 42,MEAN_LOOK
	db 47,TOXIC
	db 55,SLUDGE_BOMB
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL,35,LANTURN
	db 0 ; no more evolutions
	db 1,BUBBLE
	db 1,THUNDER_WAVE
	db 5,SUPERSONIC
	db 13,FLAIL
	db 17,WATER_GUN
	db 25,SPARK
	db 29,CONFUSE_RAY
	db 37,TAKE_DOWN
	db 41,HYDRO_PUMP
	db 45,THUNDER
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1,BUBBLE
	db 1,THUNDER_WAVE
	db 5,SUPERSONIC
	db 13,FLAIL
	db 17,WATER_GUN
	db 25,SPARK
	db 29,CONFUSE_RAY
	db 39,TAKE_DOWN
	db 47,HYDRO_PUMP
	db 55,THUNDER
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS,TR_ANYTIME,PIKACHU
	db 0 ; no more evolutions
	db 1,THUNDERSHOCK
	db 1,CHARM
	db 6,TAIL_WHIP
	db 8,THUNDER_WAVE
	db 11,SWEET_KISS
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS,TR_ANYTIME,STANTLER
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,TAIL_WHIP
	db 6,LICK
	db 10,CHARM
	db 13,SWEET_KISS
	db 18,HYPNOSIS
	db 22,STOMP
	db 25,TAKE_DOWN
	db 28,SAND_ATTACK
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS,TR_ANYTIME,LAPRAS
	db 0 ; no more evolutions
	db 1,SING
	db 1,BUBBLE
	db 6,CHARM
	db 9,BUBBLEBEAM
	db 14,SWEET_KISS
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS,TR_ANYTIME,TOGETIC
	db 0 ; no more evolutions
	db 1,GROWL
	db 1,CHARM
	db 1,METRONOME
	db 12,SWEET_KISS
	db 20,ENCORE
	db 25,SAFEGUARD
	db 30,EGG_BOMB
	db 35,DOUBLE_EDGE
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1,GROWL
	db 1,CHARM
	db 7,METRONOME
	db 18,SWEET_KISS
	db 25,ENCORE
	db 31,SAFEGUARD
	db 35,WING_ATTACK
	db 38,DOUBLE_EDGE
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL,25,XATU
	db 0 ; no more evolutions
	db 1,PECK
	db 1,LEER
	db 5,CONFUSION
	db 10,NIGHT_SHADE
	db 20,TELEPORT
	db 30,FUTURE_SIGHT
	db 35,CONFUSE_RAY
	db 40,PSYCHIC_M
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1,PECK
	db 1,LEER
	db 5,CONFUSION
	db 10,NIGHT_SHADE
	db 20,TELEPORT
	db 25,WING_ATTACK
	db 35,FUTURE_SIGHT
	db 50,CONFUSE_RAY
	db 60,PSYCHIC_M
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL,15,FLAAFFY
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,GROWL
	db 5,THUNDERSHOCK
	db 12,CONFUSE_RAY
	db 16,THUNDER_WAVE
	db 23,COTTON_SPORE
	db 30,LIGHT_SCREEN
	db 37,THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL,30,AMPHAROS
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,GROWL
	db 6,THUNDERSHOCK
	db 13,CONFUSE_RAY
	db 18,THUNDER_WAVE
	db 27,COTTON_SPORE
	db 36,LIGHT_SCREEN
	db 45,THUNDER
	db 100,DYNAMICPUNCH
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,GROWL
	db 9,THUNDERSHOCK
	db 18,THUNDER_WAVE
	db 30,THUNDERPUNCH
	db 42,LIGHT_SCREEN
	db 57,THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1,MOON_DANCE
	db 1,SWEET_SCENT
	db 1,STUN_SPORE
	db 1,PETAL_DANCE
	db 40,MOON_DANCE
	db 45,RAIN_DANCE
	db 50,MOONLIGHT
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL,18,AZUMARILL
	db 0 ; no more evolutions
	db 1,TACKLE
	db 3,DEFENSE_CURL
	db 6,TAIL_WHIP
	db 10,WATER_GUN
	db 15,ROLLOUT
	db 21,BUBBLEBEAM
	db 28,DOUBLE_EDGE
	db 36,RAIN_DANCE
	db 45,MOONLIGHT
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 3,DEFENSE_CURL
	db 6,TAIL_WHIP
	db 10,WATER_GUN
	db 15,ROLLOUT
	db 25,BUBBLEBEAM
	db 36,DOUBLE_EDGE
	db 48,RAIN_DANCE
	db 60,MOONLIGHT
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1,ROCK_THROW
	db 1,MIMIC
	db 10,FLAIL
	db 19,LOW_KICK
	db 24,ROCK_SLIDE
	db 31,MIRROR_MOVE
	db 37,FAINT_ATTACK
	db 46,SLAM
	db 50,THIEF
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1,WATER_GUN
	db 1,HYPNOSIS
	db 1,DOUBLESLAP
	db 1,PERISH_SONG
	db 25,CONFUSION
	db 35,PERISH_SONG
	db 40,PSYCHIC_M
	db 51,SWAGGER
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL,18,SKIPLOOM
	db 0 ; no more evolutions
	db 1,ABSORB
	db 1,SPLASH
if _CRYSTAL
	db 5,SYNTHESIS
else
	db 1,SYNTHESIS
endc
	db 5,TAIL_WHIP
	db 10,RAZOR_LEAF
	db 13,POISONPOWDER
	db 15,STUN_SPORE
	db 17,SLEEP_POWDER
	db 20,LEECH_SEED
	db 25,COTTON_SPORE
	db 30,MEGA_DRAIN
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL,27,JUMPLUFF
	db 0 ; no more evolutions
	db 1,SPLASH
	db 1,SYNTHESIS
	db 1,TAIL_WHIP
	db 1,TACKLE
if _CRYSTAL
	db 5,SYNTHESIS
endc
	db 5,TAIL_WHIP
	db 10,TACKLE
	db 13,POISONPOWDER
	db 15,STUN_SPORE
	db 17,SLEEP_POWDER
	db 22,LEECH_SEED
	db 29,MEGA_DRAIN
	db 36,GUST
	db 48,GIGA_DRAIN
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1,SPLASH
	db 1,SYNTHESIS
	db 1,TAIL_WHIP
	db 1,TACKLE
if _CRYSTAL
	db 5,SYNTHESIS
endc
	db 5,TAIL_WHIP
	db 10,TACKLE
	db 13,POISONPOWDER
	db 15,STUN_SPORE
	db 17,SLEEP_POWDER
	db 22,LEECH_SEED
	db 33,COTTON_SPORE
	db 44,MEGA_DRAIN
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1,DOUBLESLAP
	db 1,SAND_ATTACK
	db 5,WRAP
	db 9,SWAGGER
	db 15,DOUBLE_TEAM
	db 18,LOW_KICK
	db 22,GLARE
	db 27,ATTRACT
	db 35,ENCORE
	db 42,HEADBUTT
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM,SUN_STONE,SUNFLORA
	db 0 ; no more evolutions
	db 1,ABSORB
	db 4,GROWTH
	db 10,MEGA_DRAIN
	db 15,SUNNY_DAY
	db 20,SYNTHESIS
	db 26,GIGA_DRAIN
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1,ABSORB
	db 1,POUND
	db 4,GROWTH
	db 10,RAZOR_LEAF
	db 19,SUNNY_DAY
	db 24,EMBER
	db 31,PETAL_DANCE
	db 35,FIRE_SPIN
	db 40,SOLARBEAM
	db 48,FIRE_BLAST
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,SCREECH
	db 6,QUICK_ATTACK
	db 10,THUNDERSHOCK
	db 14,DOUBLE_TEAM
	db 19,SONICBOOM
	db 22,SWARM
	db 25,DETECT
	db 29,SUPERSONIC
	db 33,THUNDERBOLT
if _CRYSTAL
	db 37,WING_ATTACK
else
	db 37,SWIFT
endc
	db 43,SCREECH
	db 51,ZAP_CANNON
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL,20,QUAGSIRE
	db 0 ; no more evolutions
	db 1,WATER_GUN
	db 1,TAIL_WHIP
	db 8,POUND
	db 16,AMNESIA
	db 24,SLAM
	db 31,EARTHQUAKE
	db 41,RAIN_DANCE
	db 51,MIST
	db 51,HAZE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1,WATER_GUN
	db 1,TAIL_WHIP
	db 11,SLAM
	db 23,AMNESIA
	db 35,EARTHQUAKE
	db 47,RAIN_DANCE
	db 59,MIST
	db 59,HAZE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,TAIL_WHIP
	db 8,SAND_ATTACK
	db 16,CONFUSION
	db 23,QUICK_ATTACK
	db 30,SWIFT
	db 36,PSYBEAM
	db 42,PSYCH_UP
	db 47,PSYCHIC_M
	db 52,MORNING_SUN
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,TAIL_WHIP
	db 8,SAND_ATTACK
	db 16,PURSUIT
	db 23,QUICK_ATTACK
	db 30,CONFUSE_RAY
	db 36,FAINT_ATTACK
	db 42,MEAN_LOOK
	db 47,SCREECH
	db 52,MOONLIGHT
	db 60,RAIN_DANCE
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1,PECK
	db 11,PURSUIT
	db 16,HAZE
	db 21,WING_ATTACK
	db 26,NIGHT_SHADE
	db 31,FAINT_ATTACK
	db 36,PERISH_SONG
	db 41,MEAN_LOOK
	db 48,DRILL_PECK
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1,CURSE
	db 1,TACKLE
	db 6,GROWL
	db 15,TWISTER
	db 20,CONFUSION
	db 29,DISABLE
	db 34,HEADBUTT
	db 40,DRAGONBREATH
	db 43,SWAGGER
	db 48,PSYCHIC_M
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1,GROWL
	db 1,PSYWAVE
	db 6,SPITE
	db 12,CONFUSE_RAY
	db 19,MEAN_LOOK
	db 27,PSYBEAM
	db 36,PAIN_SPLIT
	db 42,PERISH_SONG
	db 50,PSYCHIC_M
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db EVOLVE_LEVEL,13,UNOWN
	db EVOLVE_LEVEL,20,UNOWN
	db EVOLVE_LEVEL,40,UNOWN
	db EVOLVE_LEVEL,50,UNOWN
	db 0 ; no more evolutions
	db 1,HIDDEN_POWER
	db 20,SHADOW_BALL
	db 20,FAINT_ATTACK
	db 20,PSYCHIC_M
	db 20,CURSE
	db 20,CURSE
	db 20,CURSE
	db 40,CURSE
	db 40,CURSE
	db 40,CURSE
	db 40,CURSE
	db 50,CURSE
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1,COUNTER
	db 1,MIRROR_COAT
	db 10,MEAN_LOOK
	db 20,SAFEGUARD
	db 30,BIDE
	db 40,DESTINY_BOND
	db 50,PERISH_SONG
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,GROWL
	db 7,CONFUSION
	db 7,BITE
	db 15,STOMP
	db 15,AGILITY
	db 25,BATON_PASS
	db 25,MEAN_LOOK
	db 37,PSYBEAM
	db 37,FAINT_ATTACK
	db 48,PSYCHIC_M
	db 48,CRUNCH
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_ITEM,ALLOY_STONE,FORRETRESS
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,PROTECT
	db 4,STRING_SHOT
	db 8,SELFDESTRUCT
	db 15,TAKE_DOWN
	db 20,RAPID_SPIN
	db 23,PIN_MISSILE
	db 25,BIDE
	db 31,EXPLOSION
	db 38,SPIKES
	db 45,DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,PROTECT
	db 1,SELFDESTRUCT
	db 40,ZAP_CANNON
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1,RAGE
	db 1,TWISTER
	db 5,DEFENSE_CURL
	db 13,GLARE
	db 18,SPITE
	db 21,DIG
	db 26,PURSUIT
	db 30,SCREECH
	db 35,HORN_DRILL
	db 38,TAKE_DOWN
	db 45,OUTRAGE
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1,POISON_STING
	db 1,MUD_SLAP
	db 6,SAND_ATTACK
	db 13,HARDEN
	db 20,QUICK_ATTACK
	db 28,FAINT_ATTACK
	db 36,SLASH
	db 42,SCREECH
	db 48,MAGNITUDE
	db 52,GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,SCREECH
	db 10,BIND
	db 14,ROCK_THROW
	db 23,HARDEN
	db 27,RAGE
	db 36,SANDSTORM
	db 40,SLAM
	db 45,IRON_TAIL
	db 49,CRUNCH
	db 60,EARTHQUAKE
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL,23,GRANBULL
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,SCARY_FACE
	db 4,TAIL_WHIP
	db 8,CHARM
	db 12,BITE
	db 15,METRONOME
	db 19,LICK
	db 26,ROAR
	db 29,HEAL_BELL
	db 34,RAGE
	db 43,DOUBLE_EDGE
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,SCARY_FACE
	db 4,TAIL_WHIP
	db 8,CHARM
	db 13,BITE
	db 15,METRONOME
	db 19,LICK
	db 28,ROAR
	db 33,HEAL_BELL
	db 40,CRUNCH
	db 48,DOUBLE_EDGE
	db 0 ; no more level-up moves

WiregaustEvosAttacks:
	db 0 ; no more evolutions
	db 1,TELEPORT
	db 20,THUNDERSHOCK
	db 30,SCREECH
	db 35,DOUBLE_TEAM
	db 40,SPARK
	db 45,THUNDER_WAVE
	db 50,SHADOW_BALL
	db 60,PERISH_SONG
	db 65,AGILITY
	db 70,THUNDER
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1,QUICK_ATTACK
	db 1,LEER
	db 1,VICEGRIP
	db 6,FOCUS_ENERGY
	db 12,PURSUIT
	db 18,FALSE_SWIPE
	db 24,AGILITY
	db 30,METAL_CLAW
	db 36,SLASH
	db 42,SWORDS_DANCE
	db 48,DOUBLE_TEAM
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1,CONSTRICT
	db 1,WITHDRAW
	db 5,BIND
	db 9,WRAP
	db 14,ENCORE
	db 19,ROCK_THROW
	db 23,SAFEGUARD
	db 28,BIDE
	db 33,ROCK_SLIDE
	db 37,REST
	db 45,SWARM
	db 55,AMNESIA
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,LEER
	db 6,HORN_ATTACK
	db 12,ENDURE
	db 19,FURY_ATTACK
	db 27,COUNTER
	db 35,TAKE_DOWN
	db 44,REVERSAL
	db 54,MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,LEER
	db 9,QUICK_ATTACK
	db 17,SCREECH
	db 25,FAINT_ATTACK
	db 33,FURY_SWIPES
	db 37,PURSUIT
	db 41,AGILITY
	db 49,SLASH
	db 57,BEAT_UP
if _CRYSTAL
	db 65,METAL_CLAW
endc
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL,35,URSARING
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,LEER
	db 8,LICK
	db 15,FURY_SWIPES
	db 22,REST
	db 29,SLEEP_TALK
	db 36,SLASH
	db 43,SNORE
	db 50,THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1,SCRATCH
	db 1,LEER
	db 8,LICK
	db 15,FURY_SWIPES
	db 22,REST
	db 29,SLEEP_TALK
	db 39,SLASH
	db 49,SNORE
	db 59,THRASH
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL,30,MAGCARGO
	db EVOLVE_HAPPINESS,TR_ANYTIME,MAGCARGO
	db 0 ; no more evolutions
	db 1,SMOG
	db 1,EMBER
	db 8,ROCK_THROW
	db 15,HARDEN
	db 22,FLAME_WHEEL
	db 29,AMNESIA
	db 33,FLAMETHROWER
	db 40,ROCK_SLIDE
	db 50,BODY_SLAM
	db 60,FIRE_BLAST
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1,SMOG
	db 1,EMBER
	db 8,ROCK_THROW
	db 15,HARDEN
	db 22,FLAME_WHEEL
	db 29,AMNESIA
	db 36,FLAMETHROWER
	db 46,ROCK_SLIDE
	db 55,BODY_SLAM
	db 66,FIRE_BLAST
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL,33,PILOSWINE
	db EVOLVE_HAPPINESS,TR_ANYTIME,PILOSWINE
	db 0 ; no more evolutions
	db 1,TACKLE
	db 10,POWDER_SNOW
	db 19,ENDURE
	db 28,TAKE_DOWN
	db 34,MAGNITUDE
	db 39,MIST
	db 45,EARTHQUAKE
	db 51,BLIZZARD
if _CRYSTAL
	db 55,AMNESIA
endc
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1,HORN_ATTACK
	db 1,POWDER_SNOW
	db 1,ENDURE
	db 10,POWDER_SNOW
	db 19,ENDURE
	db 28,TAKE_DOWN
	db 33,FURY_ATTACK
	db 37,MAGNITUDE
	db 42,MIST
	db 48,EARTHQUAKE
	db 56,BLIZZARD
if _CRYSTAL
	db 70,AMNESIA
endc
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,SPIKES
	db 1,BIDE
	db 1,HARDEN
	db 7,SHARPEN
	db 13,BUBBLE
	db 19,RECOVER
	db 25,BUBBLEBEAM
	db 31,SPIKES
	db 37,MIRROR_COAT
	db 43,ANCIENTPOWER
	db 50,HYDRO_PUMP
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL,25,OCTILLERY
	db 0 ; no more evolutions
	db 1,WATER_GUN
	db 11,LOCK_ON
	db 22,PSYBEAM
	db 22,AURORA_BEAM
	db 22,BUBBLEBEAM
	db 33,FOCUS_ENERGY
	db 44,ICE_BEAM
	db 55,HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1,WATER_GUN
	db 11,CONSTRICT
	db 22,PSYBEAM
	db 22,AURORA_BEAM
	db 22,BUBBLEBEAM
	db 25,OCTAZOOKA
	db 38,FOCUS_ENERGY
	db 54,ICE_BEAM
	db 70,HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1,PRESENT
	db 20,METRONOME
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,BUBBLE
	db 10,SUPERSONIC
	db 18,BUBBLEBEAM
	db 25,TAKE_DOWN
	db 32,AGILITY
	db 40,WING_ATTACK
	db 45,HYDRO_PUMP
	db 49,CONFUSE_RAY
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1,LEER
	db 1,PECK
	db 13,SAND_ATTACK
	db 19,SWIFT
	db 25,AGILITY
	db 37,FURY_ATTACK
	db 49,STEEL_WING
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL,24,HOUNDOOM
	db 0 ; no more evolutions
	db 1,LEER
	db 1,EMBER
	db 7,ROAR
	db 13,SMOG
	db 20,BITE
	db 23,FLAME_WHEEL
	db 27,FAINT_ATTACK
	db 35,FLAMETHROWER
	db 43,CRUNCH
	db 50,AGILITY
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1,LEER
	db 1,EMBER
	db 7,ROAR
	db 13,SMOG
	db 20,BITE
	db 25,FLAME_WHEEL
	db 30,FAINT_ATTACK
	db 41,FLAMETHROWER
	db 52,CRUNCH
	db 60,AGILITY
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1,BUBBLE
	db 1,SMOKESCREEN
	db 1,LEER
	db 1,WATER_GUN
	db 8,SMOKESCREEN
	db 15,LEER
	db 22,WATER_GUN
	db 29,TWISTER
	db 40,AGILITY
	db 51,HYDRO_PUMP
	db 60,OUTRAGE
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL,25,DONPHAN
	db 0 ; no more evolutions
	db 1,TACKLE
	db 1,GROWL
	db 9,DEFENSE_CURL
	db 17,FLAIL
	db 25,TAKE_DOWN
	db 33,ROLLOUT
	db 41,ENDURE
	db 49,DOUBLE_EDGE
	db 55,BUBBLEBEAM
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1,HORN_ATTACK
	db 1,GROWL
	db 9,DEFENSE_CURL
	db 17,FLAIL
	db 25,FURY_ATTACK
	db 33,ROLLOUT
	db 41,RAPID_SPIN
	db 49,EARTHQUAKE
	db 55,HYDRO_PUMP
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1,CONVERSION2
	db 1,TACKLE
	db 1,CONVERSION
	db 9,AGILITY
	db 12,PSYBEAM
	db 20,RECOVER
	db 24,DEFENSE_CURL
	db 32,LOCK_ON
	db 36,TRI_ATTACK
	db 44,ZAP_CANNON
	db 50,CONVERSION2
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 8,LEER
	db 15,HYPNOSIS
	db 23,STOMP
	db 27,TAKE_DOWN
	db 31,SAND_ATTACK
	db 40,BODY_SLAM
	db 45,MEGAHORN
	db 49,CONFUSE_RAY
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1,SKETCH
	db 6,SKETCH
	db 11,SKETCH
	db 16,SKETCH
	db 21,SKETCH
	db 26,SKETCH
	db 31,SKETCH
	db 36,SKETCH
	db 41,SKETCH
	db 46,SKETCH
	db 51,SKETCH
	db 56,SKETCH
	db 61,SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT,24,ATK_EQ_DEF,HITMONCHAN
	db EVOLVE_STAT,24,ATK_GT_DEF,HITMONLEE
	db EVOLVE_STAT,24,ATK_LT_DEF,HITMONTOP
	db 0 ; no more evolutions
	db 1,TACKLE
	db 5,MEDITATE
	db 10,KARATE_CHOP
	db 15,REVERSAL
	db 20,COUNTER
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1,ROLLING_KICK
	db 7,FOCUS_ENERGY
	db 13,PURSUIT
	db 19,QUICK_ATTACK
	db 25,RAPID_SPIN
	db 31,COUNTER
	db 37,AGILITY
	db 43,DETECT
	db 49,TRIPLE_KICK
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL,30,JYNX
	db 0 ; no more evolutions
	db 1,POUND
	db 1,LICK
	db 9,SWEET_KISS
	db 13,POWDER_SNOW
	db 21,CONFUSION
	db 25,SING
	db 33,MEAN_LOOK
	db 37,PSYCHIC_M
	db 45,PERISH_SONG
	db 49,BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL,30,ELECTABUZZ
	db 0 ; no more evolutions
	db 1,QUICK_ATTACK
	db 1,LEER
	db 9,THUNDERPUNCH
	db 17,LIGHT_SCREEN
	db 25,SWIFT
	db 33,SCREECH
	db 41,THUNDERBOLT
	db 49,THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL,30,MAGMAR
	db 0 ; no more evolutions
	db 1,EMBER
	db 7,LEER
	db 13,SMOG
	db 19,FIRE_PUNCH
	db 25,SMOKESCREEN
	db 31,SUNNY_DAY
	db 37,FLAMETHROWER
	db 43,CONFUSE_RAY
	db 49,FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1,TACKLE
	db 4,GROWL
	db 8,DEFENSE_CURL
	db 19,MILK_DRINK
	db 26,BIDE
	db 30,STOMP
	db 34,ROLLOUT
	db 43,BODY_SLAM
	db 53,HEAL_BELL
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1,POUND
	db 4,GROWL
	db 7,TAIL_WHIP
	db 10,SOFTBOILED
	db 13,DOUBLESLAP
	db 18,MINIMIZE
	db 23,SING
	db 28,EGG_BOMB
	db 33,DEFENSE_CURL
	db 40,LIGHT_SCREEN
	db 47,DOUBLE_EDGE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1,BITE
	db 1,LEER
	db 11,THUNDERSHOCK
	db 21,ROAR
	db 31,QUICK_ATTACK
	db 41,SPARK
	db 51,REFLECT
	db 61,CRUNCH
	db 71,THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1,BITE
	db 1,LEER
	db 11,EMBER
	db 21,ROAR
	db 31,FIRE_SPIN
	db 41,STOMP
	db 51,FLAMETHROWER
	db 61,SWAGGER
	db 71,FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1,BITE
	db 1,LEER
if _CRYSTAL
	db 11,BUBBLEBEAM
	db 21,RAIN_DANCE
	db 31,GUST
	db 41,AURORA_BEAM
else
	db 11,WATER_GUN
	db 21,ROAR
	db 31,GUST
	db 41,BUBBLEBEAM
endc
	db 51,MIST
	db 61,MIRROR_COAT
	db 71,HYDRO_PUMP
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL,30,PUPITAR
	db 0 ; no more evolutions
	db 1,BITE
	db 1,LEER
	db 8,SANDSTORM
	db 15,SCREECH
	db 22,ROCK_SLIDE
	db 29,THRASH
	db 36,SCARY_FACE
	db 43,CRUNCH
	db 50,EARTHQUAKE
	db 57,HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL,55,TYRANITAR
	db 0 ; no more evolutions
	db 1,BITE
	db 1,LEER
	db 1,SANDSTORM
	db 1,SCREECH
	db 8,SANDSTORM
	db 15,SCREECH
	db 22,ROCK_SLIDE
	db 29,THRASH
	db 38,SCARY_FACE
	db 47,CRUNCH
	db 56,EARTHQUAKE
	db 65,HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1,BITE
	db 1,LEER
	db 1,SANDSTORM
	db 1,SCREECH
	db 8,SANDSTORM
	db 15,SCREECH
	db 22,ROCK_SLIDE
	db 29,THRASH
	db 38,SCARY_FACE
	db 47,CRUNCH
	db 61,EARTHQUAKE
	db 75,HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1,AEROBLAST
	db 11,SAFEGUARD
	db 22,GUST
	db 33,RECOVER
	db 44,HYDRO_PUMP
	db 55,RAIN_DANCE
	db 66,SWIFT
	db 77,WHIRLWIND
	db 88,ANCIENTPOWER
	db 99,FUTURE_SIGHT
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1,SACRED_FIRE
	db 11,SAFEGUARD
	db 22,GUST
	db 33,RECOVER
	db 44,FIRE_BLAST
	db 55,SUNNY_DAY
	db 66,SWIFT
	db 77,WHIRLWIND
	db 88,ANCIENTPOWER
	db 99,FUTURE_SIGHT
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1,LEECH_SEED
	db 1,PSYCHIC_M
	db 1,RECOVER
	db 1,HEAL_BELL
	db 55,SAFEGUARD
	db 60,ANCIENTPOWER
	db 65,FUTURE_SIGHT
	db 70,BATON_PASS
	db 80,PERISH_SONG
	db 0 ; no more level-up moves

SamuraiEvosAttacks:
	db 0 ; no more evolutions
	db 1,PECK
	db 7,SAND_ATTACK
	db 13,LEER
	db 19,STEEL_WING
	db 25,SWORDS_DANCE
	db 31,AGILITY
	db 37,SLASH
	db 40,COUNTER
	db 44,FALSE_SWIPE
	db 48,STEEL_WING
	db 52,SPIKE_CANNON
	db 0 ; no more level-up moves

EggEvosAttacks:
	db 0 ; no more evolutions
	db 1,POUND
	db 0 ; no more level-up moves

Dummy254EvosAttacks:
	db 0 ; no more evolutions
	db 1,BIGGLYTUFF
	db 1,MOON_DANCE
	db 1,SPIKE_CANNON
	db 1,SWARM
	db 0 ; no more level-up moves

Dummy255EvosAttacks:
	db 0 ; no more evolutions
	db 1,SPIKE_CANNON
	db 1,MOON_DANCE
	db 1,BIGGLYTUFF
	db 1,SWARM
	db 0 ; no more level-up moves
