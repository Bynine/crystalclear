_DoItemEffect:: ; e722
	ld a, [CurItem]
	ld [wd265], a
	call GetItemName
	call CopyName1
	ld a, 1
	ld [wd0ec], a
	ld a, [CurItem]
	dec a
	ld hl, ItemEffects
	rst JumpTable
	ret
; e73c


ItemEffects: ; e73c
	dw MasterBall
	dw UltraBall
	dw Brightpowder
	dw GreatBall
	dw PokeBall
	dw TownMap
	dw Bicycle
	dw MoonStone
	dw Antidote
	dw BurnHeal
	dw IceHeal
	dw Awakening
	dw ParlyzHeal
	dw FullRestore
	dw MaxPotion
	dw HyperPotion
	dw SuperPotion
	dw Potion
	dw EscapeRope
	dw Repel
	dw MaxElixer
	dw FireStone
	dw Thunderstone
	dw WaterStone
	dw ShinyFeather
	dw HpUp
	dw Protein
	dw Iron
	dw Carbos
	dw LuckyPunch
	dw Calcium
	dw RareCandy
	dw XAccuracy
	dw LeafStone
	dw MetalPowder
	dw Nugget
	dw PokeDoll
	dw FullHeal
	dw Revive
	dw MaxRevive
	dw GuardSpec
	dw SuperRepel
	dw MaxRepel
	dw DireHit
	dw Roe
	dw FreshWater
	dw SodaPop
	dw Lemonade
	dw XAttack
	dw RareGem
	dw XDefend
	dw XSpeed
	dw XSpecial
	dw CoinCase
	dw Itemfinder
	dw PokeFlute
	dw ExpShare
	dw OldRod
	dw GoodRod
	dw SilverLeaf
	dw SuperRod
	dw PpUp
	dw Ether
	dw MaxEther
	dw Elixer
	dw RedScale
	dw Secretpotion
	dw SSTicket
	dw MysteryEgg
	dw ClearBell
	dw SilverWing
	dw MoomooMilk
	dw QuickClaw
	dw Psncureberry
	dw GoldLeaf
	dw SoftSand
	dw SharpBeak
	dw Przcureberry
	dw BurntBerry
	dw IceBerry
	dw PoisonBarb
	dw KingsRock
	dw BitterBerry
	dw MintBerry
	dw RedApricorn
	dw Tinymushroom
	dw BigMushroom
	dw Silverpowder
	dw BluApricorn
	dw Item5A
	dw AmuletCoin
	dw YlwApricorn
	dw GrnApricorn
	dw CleanseTag
	dw MysticWater
	dw Twistedspoon
	dw WhtApricorn
	dw Blackbelt
	dw BlkApricorn
	dw Item64
	dw PnkApricorn
	dw Blackglasses
	dw Slowpoketail
	dw PinkBow
	dw Stick
	dw SmokeBall
	dw Nevermeltice
	dw Magnet
	dw Miracleberry
	dw Pearl
	dw BigPearl
	dw Everstone
	dw SpellTag
	dw Ragecandybar
	dw GsBall
	dw BlueCard
	dw MiracleSeed
	dw ThickClub
	dw FocusBand
	dw Item78
	dw Energypowder
	dw EnergyRoot
	dw HealPowder
	dw RevivalHerb
	dw HardStone
	dw LuckyEgg
	dw CardKey
	dw MachinePart
	dw EggTicket
	dw LostItem
	dw Stardust
	dw StarPiece
	dw BasementKey
	dw Pass
	dw Item87
	dw Item88
	dw Item89
	dw Charcoal
	dw BerryJuice
	dw ScopeLens
	dw Item8D
	dw Item8E
	dw MetalCoat
	dw DragonFang
	dw Item91
	dw Leftovers
	dw Honey
	dw SoftWool
	dw Item95
	dw Mysteryberry
	dw DragonScale
	dw BerserkGene
	dw Item99
	dw Item9A
	dw FabledStone
	dw SacredAsh
	dw HeavyBall
	dw FlowerMail
	dw LevelBall
	dw LureBall
	dw FastBall
	dw AlloyStone
	dw LightBall
	dw FriendBall
	dw MoonBall
	dw LoveBall
	dw NormalBox
	dw GorgeousBox
	dw SunStone
	dw PolkadotBow
	dw ItemAB
	dw UpGrade
	dw Berry
	dw GoldBerry
	dw Squirtbottle
	dw ItemB0
	dw ParkBall
	dw RainbowWing
	dw ItemB3
; e8a2


MasterBall:
UltraBall:
GreatBall:
PokeBall:
HeavyBall:
LevelBall:
LureBall:
FastBall:
FriendBall:
MoonBall:
LoveBall:
ParkBall: ; e8a2
	ld a, [wBattleMode]
	dec a
	jp nz, Functionf7a0

	ld a, [PartyCount]
	cp PARTY_LENGTH
	jr nz, .asm_e8c0

	ld a, BANK(sBoxCount)
	call GetSRAMBank
	ld a, [sBoxCount]
	cp MONS_PER_BOX
	call CloseSRAM
	jp z, Ball_BoxIsFullMessage

.asm_e8c0
	xor a
	ld [wc64e], a
	ld a, [CurItem]
	cp PARK_BALL
	call nz, Functionedfa

	ld hl, Options
	res NO_TEXT_SCROLL, [hl]
	ld hl, UsedItemText
	call PrintText

	ld a, [EnemyMonCatchRate]
	ld b, a
	ld a, [BattleType]
	cp BATTLETYPE_TUTORIAL
	jp z, .asm_e99c
	ld a, [CurItem]
	cp MASTER_BALL
	jp z, .asm_e99c
	ld a, [CurItem]
	ld c, a
	ld hl, BallMultiplierFunctionTable

.asm_e8f2
	ld a, [hli]
	cp $ff
	jr z, .asm_e906
	cp c
	jr z, .asm_e8fe
rept 2
	inc hl
endr
	jr .asm_e8f2

.asm_e8fe
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, .asm_e906
	push de
	jp [hl]

.asm_e906
	ld a, [CurItem]
	cp LEVEL_BALL
	ld a, b
	jp z, .asm_e98e

	ld a, b
	ld [hMultiplicand + 2], a

	ld hl, EnemyMonHP
	ld b, [hl]
	inc hl
	ld c, [hl]
	inc hl
	ld d, [hl]
	inc hl
	ld e, [hl]
	sla c
	rl b

	ld h, d
	ld l, e
rept 2
	add hl, de
endr
	ld d, h
	ld e, l
	ld a, d
	and a
	jr z, .asm_e940

	srl d
	rr e
	srl d
	rr e
	srl b
	rr c
	srl b
	rr c

	ld a, c
	and a
	jr nz, .asm_e940
	ld c, $1
.asm_e940
	ld b, e

	push bc
	ld a, b
	sub c
	ld [hMultiplier], a
	xor a
	ld [hDividend + 0], a
	ld [hMultiplicand + 0], a
	ld [hMultiplicand + 1], a
	call Multiply
	pop bc

	ld a, b
	ld [hDivisor], a
	ld b, $4
	call Divide

	ld a, [hQuotient + 2]
	and a
	jr nz, .statuscheck
	ld a, 1
.statuscheck
; This routine is buggy. It was intended that SLP and FRZ provide a higher
; catch rate than BRN/PSN/PAR, which in turn provide a higher catch rate than
; no status effect at all. But instead, it makes BRN/PSN/PAR provide no
; benefit.
	ld b, a
	ld a, [EnemyMonStatus]
	and 1 << FRZ | SLP | BRN | PSN | PAR
	ld c, 10
	jr nz, .addstatus
	and a
	ld c, 5
	jr nz, .addstatus
	ld c, 0
.addstatus
	ld a, b
	add c
	jr nc, .asm_e977
	ld a, $ff
.asm_e977

	ld d, a
	push de

	; BUG: callba overwrites a,
	; and GetItem takes b anyway.

	; This is probably the reason
	; the HELD_CATCH_CHANCE effect
	; is never used.

	; Uncomment the line below to fix.

	ld a, [BattleMonItem]
;	ld b, a
	callba GetItem
	ld a, b
	cp HELD_CATCH_CHANCE

	pop de
	ld a, d

	jr nz, .asm_e98e
	add c
	jr nc, .asm_e98e
	ld a, $ff
.asm_e98e

	ld b, a
	ld [Buffer1], a
	call Random

	cp b
	ld a, 0
	jr z, .asm_e99c
	jr nc, .asm_e99f

.asm_e99c
	ld a, [EnemyMonSpecies]

.asm_e99f
	ld [wc64e], a
	ld c, 20
	call DelayFrames

	ld a, [CurItem]
	cp POKE_BALL + 1 ; Assumes Master/Ultra/Great come before
	jr c, .asm_e9b0
	ld a, POKE_BALL
.asm_e9b0
	ld [wc689], a

	ld de, ANIM_THROW_POKE_BALL
	ld a, e
	ld [FXAnimIDLo], a
	ld a, d
	ld [FXAnimIDHi], a
	xor a
	ld [hBattleTurn], a
	ld [Buffer2], a
	ld [wcfca], a
	predef PlayBattleAnim

	ld a, [wc64e]
	and a
	jr nz, .asm_e9f5
	ld a, [Buffer2]
	cp $1
	ld hl, UnknownText_0xedb5
	jp z, .asm_ebdc
	cp $2
	ld hl, UnknownText_0xedba
	jp z, .asm_ebdc
	cp $3
	ld hl, UnknownText_0xedbf
	jp z, .asm_ebdc
	cp $4
	ld hl, UnknownText_0xedc4
	jp z, .asm_ebdc
.asm_e9f5

	ld hl, EnemyMonStatus
	ld a, [hli]
	push af
	inc hl
	ld a, [hli]
	push af
	ld a, [hl]
	push af
	push hl
	ld hl, EnemyMonItem
	ld a, [hl]
	push af
	push hl
	ld hl, EnemySubStatus5
	ld a, [hl]
	push af
	set SUBSTATUS_TRANSFORMED, [hl]
	bit SUBSTATUS_TRANSFORMED, a
	jr nz, .asm_ea13
	jr .asm_ea1a

.asm_ea13
	ld a, DITTO
	ld [TempEnemyMonSpecies], a
	jr .asm_ea27

.asm_ea1a
	set 3, [hl]
	ld hl, wc6f2
	ld a, [EnemyMonDVs]
	ld [hli], a
	ld a, [EnemyMonDVs + 1]
	ld [hl], a

.asm_ea27
	ld a, [TempEnemyMonSpecies]
	ld [CurPartySpecies], a
	ld a, [EnemyMonLevel]
	ld [CurPartyLevel], a
	callba LoadEnemyMon

	pop af
	ld [EnemySubStatus5], a

	pop hl
	pop af
	ld [hl], a
	pop hl
	pop af
	ld [hld], a
	pop af
	ld [hld], a
	dec hl
	pop af
	ld [hl], a

	ld hl, EnemySubStatus5
	bit SUBSTATUS_TRANSFORMED, [hl]
	jr nz, .asm_ea67
	ld hl, wc735
	ld de, EnemyMonMoves
	ld bc, NUM_MOVES
	call CopyBytes

	ld hl, wc739
	ld de, EnemyMonPP
	ld bc, NUM_MOVES
	call CopyBytes
.asm_ea67

	ld a, [EnemyMonSpecies]
	ld [wc64e], a
	ld [CurPartySpecies], a
	ld [wd265], a
	ld a, [BattleType]
	cp BATTLETYPE_TUTORIAL
	jp z, .asm_ebd9

	callba MobileFn_10607f

	ld hl, UnknownText_0xedc9
	call PrintText

	call ClearSprites

	ld a, [wd265]
	dec a
	call CheckCaughtMon

	ld a, c
	push af
	ld a, [wd265]
	dec a
	call SetSeenAndCaughtMon
	pop af
	and a
	jr nz, .asm_eab7

	call Function2ead
	jr z, .asm_eab7

	ld hl, UnknownText_0xedf0
	call PrintText

	call ClearSprites

	ld a, [EnemyMonSpecies]
	ld [wd265], a
	predef Functionfb877

.asm_eab7
	ld a, [BattleType]
	cp BATTLETYPE_CONTEST
	jp z, .asm_ebd1
	cp BATTLETYPE_CELEBI
	jr nz, .asm_eac8
	ld hl, wBattleResult
	set 6, [hl]
.asm_eac8

	ld a, [PartyCount]
	cp PARTY_LENGTH
	jr z, .asm_eb3c

	xor a ; PARTYMON
	ld [MonType], a
	call ClearSprites

	predef TryAddMonToParty

	callba Function4db49

	ld a, [CurItem]
	cp FRIEND_BALL
	jr nz, .asm_eaf8

	ld a, [PartyCount]
	dec a
	ld hl, PartyMon1Happiness
	ld bc, PartyMon2 - PartyMon1
	call AddNTimes

	ld a, FRIEND_BALL_HAPPINESS
	ld [hl], a
.asm_eaf8

	ld hl, UnknownText_0xedf5
	call PrintText

	ld a, [CurPartySpecies]
	ld [wd265], a
	call GetPokemonName

	call YesNoBox
	jp c, .asm_ebe2

	ld a, [PartyCount]
	dec a
	ld [CurPartyMon], a
	ld hl, PartyMonNicknames
	ld bc, PKMN_NAME_LENGTH
	call AddNTimes

	ld d, h
	ld e, l
	push de
	xor a ; PARTYMON
	ld [MonType], a
	ld b, 0
	callba Function116c1

	call FadeToWhite

	call Functione51

	pop hl
	ld de, StringBuffer1
	call InitName

	jp .asm_ebe2

.asm_eb3c
	call ClearSprites

	predef SentPkmnIntoBox

	callba Function4db83

	ld a, BANK(sBoxCount)
	call GetSRAMBank

	ld a, [sBoxCount]
	cp MONS_PER_BOX
	jr nz, .asm_eb5b
	ld hl, wBattleResult
	set 7, [hl]
.asm_eb5b
	ld a, [CurItem]
	cp FRIEND_BALL
	jr nz, .asm_eb67
	; Bug: overwrites the happiness of the first mon in the box!
	ld a, FRIEND_BALL_HAPPINESS
	ld [sBoxMon1Happiness], a
.asm_eb67
	call CloseSRAM

	ld hl, UnknownText_0xedf5
	call PrintText

	ld a, [CurPartySpecies]
	ld [wd265], a
	call GetPokemonName

	call YesNoBox
	jr c, .asm_ebaf

	xor a
	ld [CurPartyMon], a
	ld a, BOXMON
	ld [MonType], a
	ld de, wd050
	ld b, $0
	callba Function116c1

	ld a, BANK(sBoxMonNicknames)
	call GetSRAMBank

	ld hl, wd050
	ld de, sBoxMonNicknames
	ld bc, PKMN_NAME_LENGTH
	call CopyBytes

	ld hl, sBoxMonNicknames
	ld de, StringBuffer1
	call InitName

	call CloseSRAM

.asm_ebaf
	ld a, BANK(sBoxMonNicknames)
	call GetSRAMBank

	ld hl, sBoxMonNicknames
	ld de, wd050
	ld bc, PKMN_NAME_LENGTH
	call CopyBytes

	call CloseSRAM

	ld hl, UnknownText_0xedeb
	call PrintText

	call FadeToWhite
	call Functione51
	jr .asm_ebe2

.asm_ebd1
	callba BugContest_SetCaughtContestMon
	jr .asm_ebe2

.asm_ebd9
	ld hl, UnknownText_0xedc9

.asm_ebdc
	call PrintText
	call ClearSprites

.asm_ebe2
	ld a, [BattleType]
	cp BATTLETYPE_TUTORIAL
	ret z
	cp BATTLETYPE_DEBUG
	ret z
	cp BATTLETYPE_CONTEST
	jr z, .used_park_ball

	ld a, [wc64e]
	and a
	jr z, .toss

	call WhiteBGMap
	call ClearTileMap

.toss
	ld hl, NumItems
	inc a
	ld [wItemQuantityChangeBuffer], a
	jp TossItem

.used_park_ball
	ld hl, wdc79
	dec [hl]
	ret
; ec0a


BallMultiplierFunctionTable:
; table of routines that increase or decrease the catch rate based on
; which ball is used in a certain situation.
	dbw ULTRA_BALL, UltraBallMultiplier
	dbw GREAT_BALL, GreatBallMultiplier
	dbw 8,          SafariBallMultiplier ; Safari Ball, leftover from RBY
	dbw HEAVY_BALL, HeavyBallMultiplier
	dbw LEVEL_BALL, LevelBallMultiplier
	dbw LURE_BALL,  LureBallMultiplier
	dbw FAST_BALL,  FastBallMultiplier
	dbw MOON_BALL,  MoonBallMultiplier
	dbw LOVE_BALL,  LoveBallMultiplier
	dbw PARK_BALL,  ParkBallMultiplier
	db $ff

UltraBallMultiplier:
; multiply catch rate by 2
	sla b
	ret nc
	ld b, $ff
	ret

SafariBallMultiplier:
GreatBallMultiplier:
ParkBallMultiplier:
; multiply catch rate by 1.5
	ld a, b
	srl a
	add b
	ld b, a
	ret nc
	ld b, $ff
	ret

GetPokedexEntryBank:
	push hl
	push de
	ld a, [EnemyMonSpecies]
	rlca
	rlca
	and 3
	ld hl, .PokedexEntryBanks
	ld d, 0
	ld e, a
	add hl, de
	ld a, [hl]
	pop de
	pop hl
	ret

.PokedexEntryBanks

GLOBAL PokedexEntries1
GLOBAL PokedexEntries2
GLOBAL PokedexEntries3
GLOBAL PokedexEntries4

	db BANK(PokedexEntries1)
	db BANK(PokedexEntries2)
	db BANK(PokedexEntries3)
	db BANK(PokedexEntries4)

HeavyBallMultiplier:
; subtract 20 from catch rate if weight < 102.4 kg
; else add 0 to catch rate if weight < 204.8 kg
; else add 20 to catch rate if weight < 307.2 kg
; else add 30 to catch rate if weight < 409.6 kg
; else add 40 to catch rate (never happens)
	ld a, [EnemyMonSpecies]
	ld hl, PokedexDataPointerTable
	dec a
	ld e, a
	ld d, 0
rept 2
	add hl, de
endr
	ld a, BANK(PokedexDataPointerTable)
	call GetFarHalfword

.SkipText
	call GetPokedexEntryBank
	call GetFarByte
	inc hl
	cp "@"
	jr nz, .SkipText

	call GetPokedexEntryBank
	push bc
rept 2
	inc hl
endr
	call GetFarHalfword

	srl h
	rr l
	ld b, h
	ld c, l

	rept 4
	srl b
	rr c
	endr
	call .subbc

	srl b
	rr c
	call .subbc

	ld a, h
	pop bc
	jr .compare

.subbc
	; subtract bc from hl
	push bc
	ld a, b
	cpl
	ld b, a
	ld a, c
	cpl
	ld c, a
	inc bc
	add hl, bc
	pop bc
	ret

.compare
	ld c, a
	cp 1024 >> 8 ; 102.4 kg
	jr c, .lightmon

	ld hl, .WeightsTable
.lookup
	ld a, c
	cp [hl]
	jr c, .heavymon
rept 2
	inc hl
endr
	jr .lookup

.heavymon
	inc hl
	ld a, b
	add [hl]
	ld b, a
	ret nc
	ld b, $ff
	ret

.lightmon
	ld a, b
	sub 20
	ld b, a
	ret nc
	ld b, $1
	ret

.WeightsTable
; weight factor, boost
	db 2048 >> 8, 0
	db 3072 >> 8, 20
	db 4096 >> 8, 30
	db 65280 >> 8, 40

LureBallMultiplier:
; multiply catch rate by 3 if this is a fishing rod battle
	ld a, [BattleType]
	cp BATTLETYPE_FISH
	ret nz

	ld a, b
	add a
	jr c, .max

	add b
	jr nc, .done
.max
	ld a, $ff
.done
	ld b, a
	ret

MoonBallMultiplier:
; This function is buggy.
; Intent:  multiply catch rate by 4 if mon evolves with moon stone
; Reality: no boost

GLOBAL EvosAttacks
GLOBAL EvosAttacksPointers

	push bc
	ld a, [TempEnemyMonSpecies]
	dec a
	ld c, a
	ld b, 0
	ld hl, EvosAttacksPointers
rept 2
	add hl, bc
endr
	ld a, BANK(EvosAttacksPointers)
	call GetFarHalfword
	pop bc

	push bc
	ld a, BANK(EvosAttacks)
	call GetFarByte
	cp EVOLVE_ITEM
	pop bc
	ret nz

rept 3
	inc hl
endr

; Moon Stone's constant from Pokémon Red is used.
; No Pokémon evolve with Burn Heal,
; so Moon Balls always have a catch rate of 1×.
	push bc
	ld a, BANK(EvosAttacks)
	call GetFarByte
	cp MOON_STONE ; BURN_HEAL ; now fixed
	pop bc
	ret nz

	sla b
	jr c, .max
	sla b
	jr nc, .done
.max
	ld b, $ff
.done
	ret

LoveBallMultiplier:
; This function is buggy.
; Intent:  multiply catch rate by 8 if mons are of same species, different sex
; Reality: multiply catch rate by 8 if mons are of same species, same sex

	; does species match?
	ld a, [TempEnemyMonSpecies]
	ld c, a
	ld a, [TempBattleMonSpecies]
	cp c
	ret nz

	; check player mon species
	push bc
	ld a, [TempBattleMonSpecies]
	ld [CurPartySpecies], a
	xor a ; PARTYMON
	ld [MonType], a
	ld a, [CurBattleMon]
	ld [CurPartyMon], a
	callba GetGender
	jr c, .done1 ; no effect on genderless

	ld d, 0 ; male
	jr nz, .playermale
	inc d   ; female
.playermale

	; check wild mon species
	push de
	ld a, [TempEnemyMonSpecies]
	ld [CurPartySpecies], a
	ld a, WILDMON
	ld [MonType], a
	callba GetGender
	jr c, .done2 ; no effect on genderless

	ld d, 0 ; male
	jr nz, .wildmale
	inc d   ; female
.wildmale

	ld a, d
	pop de
	cp d
	pop bc
	ret z ; for the intended effect, this should be “ret z” ; edit: fixed

	sla b
	jr c, .max
	sla b
	jr c, .max
	sla b
	ret nc
.max
	ld b, $ff
	ret

.done2
	pop de

.done1
	pop bc
	ret

FastBallMultiplier:
; This function is buggy.
; Intent:  multiply catch rate by 4 if enemy mon is in one of the three
;          FleeMons tables.
; Reality: multiply catch rate by 4 if enemy mon is one of the first three in
;          the first FleeMons table.
	ld a, [TempEnemyMonSpecies]
	ld c, a
	ld hl, FleeMons
	ld d, 3

.loop
	ld a, BANK(FleeMons)
	call GetFarByte

	inc hl
	cp -1
	jr z, .next
	cp c
	jr nz, .loop ; for the intended effect, this should be “jr nz, .loop” ; edit: fixed
	sla b
	jr c, .max

	sla b
	ret nc

.max
	ld b, $ff
	ret

.next
	dec d
	jr nz, .loop
	ret

LevelBallMultiplier:
; multiply catch rate by 8 if player mon level / 4 > enemy mon level
; multiply catch rate by 4 if player mon level / 2 > enemy mon level
; multiply catch rate by 2 if player mon level > enemy mon level
	ld a, [BattleMonLevel]
	ld c, a
	ld a, [EnemyMonLevel]
	cp c
	ret nc ; if player is lower level, we're done here
	sla b
	jr c, .max

	srl c
	cp c
	ret nc ; if player/2 is lower level, we're done here
	sla b
	jr c, .max

	srl c
	cp c
	ret nc ; if player/4 is lower level, we're done here
	sla b
	ret nc

.max
	ld b, $ff
	ret

UnknownText_0xedab: ; 0xedab
	; It dodged the thrown BALL! This #MON can't be caught!
	text_jump UnknownText_0x1c5a5a
	db "@"
; 0xedb0

UnknownText_0xedb0: ; 0xedb0
	; You missed the #MON!
	text_jump UnknownText_0x1c5a90
	db "@"
; 0xedb5

UnknownText_0xedb5: ; 0xedb5
	; Oh no! The #MON broke free!
	text_jump UnknownText_0x1c5aa6
	db "@"
; 0xedba

UnknownText_0xedba: ; 0xedba
	; Aww! It appeared to be caught!
	text_jump UnknownText_0x1c5ac3
	db "@"
; 0xedbf

UnknownText_0xedbf: ; 0xedbf
	; Aargh! Almost had it!
	text_jump UnknownText_0x1c5ae3
	db "@"
; 0xedc4

UnknownText_0xedc4: ; 0xedc4
	; Shoot! It was so close too!
	text_jump UnknownText_0x1c5afa
	db "@"
; 0xedc9

UnknownText_0xedc9: ; 0xedc9
	; Gotcha! @ was caught!@ @
	text_jump UnknownText_0x1c5b17
	start_asm
; 0xedce

Functionedce: ; edce
	call WaitSFX
	push bc
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	ld de, MUSIC_CAPTURE
	call PlayMusic
	pop bc
	ld hl, TextJump_Waitbutton
	ret
; ede6

TextJump_Waitbutton: ; 0xede6
	; @
	text_jump Text_Waitbutton_2
	db "@"
; 0xedeb

UnknownText_0xedeb: ; 0xedeb
	; was sent to BILL's PC.
	text_jump UnknownText_0x1c5b38
	db "@"
; 0xedf0

UnknownText_0xedf0: ; 0xedf0
	; 's data was newly added to the #DEX.@ @
	text_jump UnknownText_0x1c5b53
	db "@"
; 0xedf5

UnknownText_0xedf5: ; 0xedf5
	; Give a nickname to @ ?
	text_jump UnknownText_0x1c5b7f
	db "@"
; 0xedfa

Functionedfa: ; edfa (3:6dfa)
	callba Function2715c
	ret

TownMap: ; ee01
	callba Function91ae1
	ret
; ee08


Bicycle: ; ee08
	callba BikeFunction
	ret
; ee0f


MoonStone:
FireStone:
Thunderstone:
WaterStone:
LeafStone:
AlloyStone:
FabledStone:
UpGrade:
SunStone: ; ee0f
	ld b, $5
	call Functionf1f9

	jp c, .asm_ee38

	ld a, PartyMon1Item - PartyMon1
	call GetPartyParamLocation

	ld a, [hl]
	cp EVERSTONE
	jr z, .asm_ee35

	ld a, $1
	ld [wd1e9], a
	callba Function421d8

	ld a, [wd268]
	and a
	jr z, .asm_ee35

	jp Functionf795

.asm_ee35
	call WontHaveAnyEffectMessage

.asm_ee38
	xor a
	ld [wd0ec], a
	ret
; ee3d


HpUp:
Protein:
Iron:
Carbos:
Calcium: ; ee3d
	ld b, $1
	call Functionf1f9

	jp c, Functionee9f

	call Functioneef5

	call Functioneed9

	ld a, PartyMon1StatExp - PartyMon1
	call GetPartyParamLocation

	add hl, bc
	ld a, [hl]
	cp 100
	jr nc, Functionee83

	add 10
	ld [hl], a
	call Functionee8c

	call Functioneed9

	ld hl, Strings_eeab
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, StringBuffer2
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes

	call Play_SFX_FULL_HEAL

	ld hl, UnknownText_0xeea6
	call PrintText

	ld c, HAPPINESS_USEDITEM
	callba ChangeHappiness

	jp Functionf795


Functionee83: ; ee83
	ld hl, WontHaveAnyEffectText
	call PrintText
	jp ClearPalettes
; ee8c


Functionee8c: ; ee8c
	ld a, PartyMon1MaxHP - PartyMon1
	call GetPartyParamLocation
	ld d, h
	ld e, l
	ld a, PartyMon1HPExp - 1 - PartyMon1
	call GetPartyParamLocation
	ld b, $1
	predef_jump CalcPkmnStats
; ee9f

Functionee9f: ; ee9f
	xor a
	ld [wd0ec], a
	jp ClearPalettes
; eea6


UnknownText_0xeea6: ; 0xeea6
	; 's @  rose.
	text_jump UnknownText_0x1c5b9a
	db "@"
; 0xeeab


Strings_eeab: ; eeab
	dw .health
	dw .attack
	dw .defense
	dw .speed
	dw .special

.health  db "HEALTH@"
.attack  db "ATTACK@"
.defense db "DEFENSE@"
.speed   db "SPEED@"
.special db "SPECIAL@"
; eed9


Functioneed9: ; eed9
	ld a, [CurItem]
	ld hl, Table_eeeb
.next
	cp [hl]
	inc hl
	jr z, .asm_eee6
	inc hl
	jr .next

.asm_eee6
	ld a, [hl]
	ld c, a
	ld b, 0
	ret
; eeeb

Table_eeeb: ; eeeb
	db HP_UP,   PartyMon1HPExp  - PartyMon1StatExp
	db PROTEIN, PartyMon1AtkExp - PartyMon1StatExp
	db IRON,    PartyMon1DefExp - PartyMon1StatExp
	db CARBOS,  PartyMon1SpdExp - PartyMon1StatExp
	db CALCIUM, PartyMon1SpcExp - PartyMon1StatExp
; eef5


Functioneef5: ; eef5
	ld a, [CurPartySpecies]
	ld [CurSpecies], a
	ld [wd265], a
	ld a, PartyMon1Level - PartyMon1
	call GetPartyParamLocation
	ld a, [hl]
	ld [CurPartyLevel], a
	call GetBaseData
	ld a, [CurPartyMon]
	ld hl, PartyMonNicknames
	call GetNick
	ret
; 0xef14


RareCandy: ; ef14
	ld b, $1
	call Functionf1f9

	jp c, Functionee9f

	call Functioneef5

	ld a, PartyMon1Level - PartyMon1
	call GetPartyParamLocation

	ld a, [hl]
	cp MAX_LEVEL
	jp nc, Functionee83

	inc a
	ld [hl], a
	ld [CurPartyLevel], a
	push de
	ld d, a
	callba Function50e47

	pop de
	ld a, PartyMon1Exp - PartyMon1
	call GetPartyParamLocation

	ld a, [hMultiplicand]
	ld [hli], a
	ld a, [$ffb5]
	ld [hli], a
	ld a, [$ffb6]
	ld [hl], a

	ld a, PartyMon1MaxHP - PartyMon1
	call GetPartyParamLocation
	ld a, [hli]
	ld b, a
	ld c, [hl]
	push bc
	call Functionee8c

	ld a, PartyMon1MaxHP + 1 - PartyMon1
	call GetPartyParamLocation

	pop bc
	ld a, [hld]
	sub c
	ld c, a
	ld a, [hl]
	sbc b
	ld b, a
	dec hl
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a
	callba LevelUpHappinessMod

	ld a, $f8
	call Functionf24a

	xor a ; PARTYMON
	ld [MonType], a
	predef CopyPkmnToTempMon

	hlcoord 9, 0
	ld b, 10
	ld c, 9
	call TextBox

	hlcoord 11, 1
	ld bc, $0004
	predef PrintTempMonStats

	call Functiona80

	xor a ; PARTYMON
	ld [MonType], a
	ld a, [CurPartySpecies]
	ld [wd265], a
	predef LearnLevelMoves

	xor a
	ld [wd1e9], a
	callba Function421d8

	jp Functionf795
; efad


HealPowder: ; efad
	ld b, $1
	call Functionf1f9

	jp c, Functionf29e

	call Functionefda

	cp $0
	jr nz, .asm_efc9
	ld c, HAPPINESS_BITTERPOWDER
	callba ChangeHappiness

	call LooksBitterMessage

	ld a, $0

.asm_efc9
	jp Functionf09e
; efcc


Antidote:
BurnHeal:
IceHeal:
Awakening:
ParlyzHeal:
FullHeal:
Psncureberry:
Przcureberry:
BurntBerry:
IceBerry:
MintBerry:
Miracleberry: ; efcc
	ld b, $1
	call Functionf1f9
	jp c, Functionf29e

Functionefd4: ; efd4
	call Functionefda
	jp Functionf09e
; efda


Functionefda: ; efda (3:6fda)
	call Functionf30d
	ld a, $1
	ret z
	call Functionf058
	ld a, PartyMon1Status - PartyMon1
	call GetPartyParamLocation
	ld a, [hl]
	and c
	jr nz, .asm_eff4
	call Functionf009
	ld a, $1
	ret nc
	ld b, $f9
.asm_eff4
	xor a
	ld [hl], a
	ld a, b
	ld [PartyMenuActionText], a
	call Functionf030
	call Play_SFX_FULL_HEAL
	call Functionf279
	call Functionf795
	ld a, $0
	ret

Functionf009: ; f009 (3:7009)
	call Functionf2a6
	jr nc, .asm_f01c
	ld a, [PlayerSubStatus3]
	bit 7, a
	jr z, .asm_f01c
	ld a, c
	cp $ff
	jr nz, .asm_f01c
	scf
	ret
.asm_f01c
	and a
	ret

Functionf01e: ; f01e (3:701e)
	call Functionf2a6
	ret nc
	ld a, PartyMon1HP - PartyMon1
	call GetPartyParamLocation
	ld a, [hli]
	ld [BattleMonHP], a
	ld a, [hld]
	ld [BattleMonHP + 1], a
	ret

Functionf030: ; f030 (3:7030)
	call Functionf2a6
	ret nc
	xor a
	ld [BattleMonStatus], a
	ld hl, PlayerSubStatus5
	res 0, [hl]
	ld hl, PlayerSubStatus1
	res 0, [hl]
	call Functionf058
	ld a, c
	cp $ff
	jr nz, .asm_f04f
	ld hl, PlayerSubStatus3
	res 7, [hl]
.asm_f04f
	push bc
	callba Function365d7
	pop bc
	ret

Functionf058: ; f058 (3:7058)
	push hl
	ld a, [CurItem]
	ld hl, Table_f071
	ld bc, 3
.next
	cp [hl]
	jr z, .asm_f068
	add hl, bc
	jr .next

.asm_f068
	inc hl
	ld b, [hl]
	inc hl
	ld a, [hl]
	ld c, a
	cp %11111111
	pop hl
	ret
; f071 (3:7071)

Table_f071: ; f071
; item, party menu action text, status
	db ANTIDOTE,     $f0, 1 << PSN
	db BURN_HEAL,    $f1, 1 << BRN
	db ICE_HEAL,     $f2, 1 << FRZ
	db AWAKENING,    $f3, SLP
	db PARLYZ_HEAL,  $f4, 1 << PAR
	db FULL_HEAL,    $f6, %11111111
	db FULL_RESTORE, $f6, %11111111
	db HEAL_POWDER,  $f6, %11111111
	db PSNCUREBERRY, $f0, 1 << PSN
	db PRZCUREBERRY, $f4, 1 << PAR
	db BURNT_BERRY,  $f2, 1 << FRZ
	db ICE_BERRY,    $f1, 1 << BRN
	db MINT_BERRY,   $f3, SLP
	db MIRACLEBERRY, $f6, %11111111
	db -1, 0, 0
; f09e

Functionf09e: ; f09e (3:709e)
	ld hl, Jumptable_f0a3
	rst JumpTable
	ret

Jumptable_f0a3: ; f0a3 (3:70a3)
	dw Functionf2a2
	dw Functionf299
	dw Functionf29e


RevivalHerb: ; f0a9
	ld b, $1
	call Functionf1f9
	jp c, Functionf29e

	call Functionf0d6
	cp 0
	jr nz, .asm_f0c5

	ld c, HAPPINESS_REVIVALHERB
	callba ChangeHappiness
	call LooksBitterMessage
	ld a, 0

.asm_f0c5
	jp Functionf09e
; f0c8


Revive:
MaxRevive: ; f0c8
	ld b, $1
	call Functionf1f9
	jp c, Functionf29e

	call Functionf0d6
	jp Functionf09e
; f0d6


Functionf0d6: ; f0d6
	call Functionf30d
	ld a, 1
	ret nz
	ld a, [wBattleMode]
	and a
	jr z, .asm_f104

	ld a, [CurPartyMon]
	ld c, a
	ld d, 0
	ld hl, wc6fc
	ld b, CHECK_FLAG
	predef FlagPredef
	ld a, c
	and a
	jr z, .asm_f104

	ld a, [CurPartyMon]
	ld c, a
	ld hl, wc664
	ld b, SET_FLAG
	predef FlagPredef

.asm_f104
	xor a
	ld [Danger], a
	ld a, [CurItem]
	cp REVIVE
	jr z, .asm_f114

	call Functionf2c3
	jr .asm_f117

.asm_f114
	call Functionf2ba

.asm_f117
	call Functionf1db
	ld a, $f7
	ld [PartyMenuActionText], a
	call Functionf279
	call Functionf795
	ld a, 0
	ret
; f128


FullRestore: ; f128
	ld b, 1
	call Functionf1f9
	jp c, Functionf29e

	call Functionf30d
	jp z, Functionf299

	call Functionf31b
	jr c, .asm_f13e

	jp Functionefd4

.asm_f13e
	call Functionf144
	jp Functionf09e
; f144


Functionf144: ; f144
	xor a
	ld [Danger], a
	call Functionf2c3
	ld a, PartyMon1Status - PartyMon1
	call GetPartyParamLocation
	xor a
	ld [hli], a
	ld [hl], a
	call Functionf030
	call Functionf01e
	call Functionf1db
	ld a, $f5
	ld [PartyMenuActionText], a
	call Functionf279
	call Functionf795
	ld a, 0
	ret
; f16a


BitterBerry: ; f16a
	ld hl, PlayerSubStatus3
	bit SUBSTATUS_CONFUSED, [hl]
	ld a, 1
	jr z, .done

	res SUBSTATUS_CONFUSED, [hl]
	xor a
	ld [hBattleTurn], a
	call Functionf789

	ld hl, ConfusedNoMoreText
	call StdBattleTextBox

	ld a, 0

.done
	jp Functionf09e
; f186


MaxPotion:
HyperPotion:
SuperPotion:
Potion:
FreshWater:
SodaPop:
Lemonade:
MoomooMilk:
Ragecandybar:
Roe:
BerryJuice:
Honey:
Berry:
GoldBerry: ; f186
	call Functionf1a9
	jp Functionf09e
; f18c


Energypowder: ; f18c
	ld c, HAPPINESS_BITTERPOWDER
	jr Functionf192
; f190

EnergyRoot: ; f190
	ld c, HAPPINESS_ENERGYROOT
; f192

Functionf192: ; f192
	push bc
	call Functionf1a9
	pop bc
	cp 0
	jr nz, .asm_f1a6

	callba ChangeHappiness
	call LooksBitterMessage
	ld a, 0

.asm_f1a6
	jp Functionf09e
; f1a9


Functionf1a9: ; f1a9 (3:71a9)
	ld b, 1
	call Functionf1f9
	ld a, 2
	ret c

	call Functionf30d
	ld a, 1
	ret z

	call Functionf31b
	ld a, 1
	ret nc

	xor a
	ld [Danger], a
	call Functionf395
	call Functionf2d1
	call Functionf01e
	call Functionf1db
	ld a, $f5
	ld [PartyMenuActionText], a
	call Functionf279
	call Functionf795
	ld a, 0
	ret

Functionf1db: ; f1db (3:71db)
	push de
	ld de, SFX_POTION
	call WaitPlaySFX
	pop de
	ld a, [CurPartyMon]
	hlcoord 11, 0
	ld bc, SCREEN_WIDTH * 2
	call AddNTimes
	ld a, $2
	ld [wd10a], a
	predef_jump Functionc6e0

Functionf1f9: ; f1f9 (3:71f9)
	call Functionf20b
	ret c

	ld a, [CurPartySpecies]
	cp EGG
	jr nz, .asm_f209

	call CantUseOnEggMessage
	scf
	ret

.asm_f209
	and a
	ret

Functionf20b: ; f20b (3:720b)
	ld a, b
	ld [PartyMenuActionText], a
	push hl
	push de
	push bc
	call WhiteBGMap
	call Functionf21c
	pop bc
	pop de
	pop hl
	ret

Functionf21c: ; f21c (3:721c)
	callba Function5004f
	callba Function50405
	callba Function503e0
	callba WritePartyMenuTilemap
	callba PrintPartyMenuText
	call WaitBGMap
	call SetPalettes
	call DelayFrame
	callba PartyMenuSelect
	ret

Functionf24a: ; f24a (3:724a)
	ld [PartyMenuActionText], a
	ld a, [CurPartySpecies]
	push af
	ld a, [CurPartyMon]
	push af
	push hl
	push de
	push bc
	callba WritePartyMenuTilemap
	callba Function50566
	call WaitBGMap
	call SetPalettes
	call DelayFrame
	pop bc
	pop de
	pop hl
	pop af
	ld [CurPartyMon], a
	pop af
	ld [CurPartySpecies], a
	ret

Functionf279: ; f279 (3:7279)
	xor a
	ld [hBGMapMode], a
	hlcoord 0, 0
	ld bc, TileMapEnd - TileMap
	ld a, " "
	call ByteFill
	ld a, [PartyMenuActionText]
	call Functionf24a
	ld a, $1
	ld [hBGMapMode], a
	ld c, $32
	call DelayFrames
	jp Functiona80

Functionf299: ; f299 (3:7299)
	call WontHaveAnyEffectMessage
	jr Functionf2a2

Functionf29e: ; f29e (3:729e)
	xor a
	ld [wd0ec], a

Functionf2a2: ; f2a2 (3:72a2)
	call ClearPalettes
	ret

Functionf2a6: ; f2a6 (3:72a6)
	ld a, [wBattleMode]
	and a
	ret z
	ld a, [CurPartyMon]
	push hl
	ld hl, CurBattleMon
	cp [hl]
	pop hl
	jr nz, .asm_f2b8
	scf
	ret
.asm_f2b8
	xor a
	ret

Functionf2ba: ; f2ba (3:72ba)
	call Functionf36f
	srl d
	rr e
	jr asm_f2c6

Functionf2c3: ; f2c3 (3:72c3)
	call Functionf36f
asm_f2c6: ; f2c6 (3:72c6)
	ld a, PartyMon1HP - PartyMon1
	call GetPartyParamLocation
	ld [hl], d
	inc hl
	ld [hl], e
	jp Functionf328

Functionf2d1: ; f2d1 (3:72d1)
	ld a, PartyMon1HP + 1 - PartyMon1
	call GetPartyParamLocation
	ld a, [hl]
	add e
	ld [hld], a
	ld a, [hl]
	adc d
	ld [hl], a
	jr c, .asm_f2f5
	call Functionf328
	ld a, PartyMon1HP + 1 - PartyMon1
	call GetPartyParamLocation
	ld d, h
	ld e, l
	ld a, PartyMon1MaxHP + 1 - PartyMon1
	call GetPartyParamLocation
	ld a, [de]
	sub [hl]
	dec de
	dec hl
	ld a, [de]
	sbc [hl]
	jr c, .asm_f2f8
.asm_f2f5
	call Functionf2c3
.asm_f2f8
	ret

Functionf2f9: ; f2f9 (3:72f9)
	ld a, PartyMon1HP + 1 - PartyMon1
	call GetPartyParamLocation
	ld a, [hl]
	sub e
	ld [hld], a
	ld a, [hl]
	sbc d
	ld [hl], a
	jr nc, .asm_f309
	xor a
	ld [hld], a
	ld [hl], a
.asm_f309
	call Functionf328
	ret

Functionf30d: ; f30d (3:730d)
	push de
	call Functionf35f
	call Functionf348
	call Functionf356
	ld a, d
	or e
	pop de
	ret

Functionf31b: ; f31b (3:731b)
	call Functionf356
	ld h, d
	ld l, e
	call Functionf36f
	ld a, l
	sub e
	ld a, h
	sbc d
	ret

Functionf328: ; f328 (3:7328)
	ld a, PartyMon1HP - PartyMon1
	call GetPartyParamLocation
	ld a, [hli]
	ld [wd1ef], a
	ld a, [hl]
	ld [wd1ee], a
	ret
; f336 (3:7336)

Functionf336: ; f336
	ld a, d
	ld [wd1ef], a
	ld a, e
	ld [wd1ee], a
	ret
; f33f

Functionf33f: ; f33f
	ld a, [wd1ef]
	ld d, a
	ld a, [wd1ee]
	ld e, a
	ret
; f348

Functionf348: ; f348 (3:7348)
	ld a, PartyMon1HP - PartyMon1
	call GetPartyParamLocation
	ld a, [hli]
	ld [wd1ed], a
	ld a, [hl]
	ld [wd1ec], a
	ret

Functionf356: ; f356 (3:7356)
	ld a, [wd1ed]
	ld d, a
	ld a, [wd1ec]
	ld e, a
	ret

Functionf35f: ; f35f (3:735f)
	push hl
	ld a, PartyMon1MaxHP - PartyMon1
	call GetPartyParamLocation
	ld a, [hli]
	ld [Buffer2], a
	ld a, [hl]
	ld [Buffer1], a
	pop hl
	ret

Functionf36f: ; f36f (3:736f)
	ld a, [Buffer2]
	ld d, a
	ld a, [Buffer1]
	ld e, a
	ret

Functionf378: ; f378 (3:7378)
	push bc
	ld a, PartyMon1MaxHP - PartyMon1
	call GetPartyParamLocation
	ld a, [hli]
	ld [hDividend + 0], a
	ld a, [hl]
	ld [hDividend + 1], a
	ld a, 5
	ld [hDivisor], a
	ld b, 2
	call Divide
	ld a, [hQuotient + 1]
	ld d, a
	ld a, [hQuotient + 2]
	ld e, a
	pop bc
	ret

Functionf395: ; f395 (3:7395)
	push hl
	ld a, [CurItem]
	ld hl, Tablef3af
	ld d, a
.next
	ld a, [hli]
	cp -1
	jr z, .asm_f3a9
	cp d
	jr z, .done
rept 2
	inc hl
endr
	jr .next

.asm_f3a9
	scf
.done
	ld e, [hl]
	inc hl
	ld d, [hl]
	pop hl
	ret
; f3af (3:73af)

Tablef3af: ; f3af
	dbw FRESH_WATER,   50
	dbw SODA_POP,      60
	dbw LEMONADE,      80
	dbw HYPER_POTION, 200
	dbw SUPER_POTION,  50
	dbw POTION,        20
	dbw ROE,           50
	dbw MAX_POTION,   999
	dbw FULL_RESTORE, 999
	dbw MOOMOO_MILK,  100
	dbw BERRY,         10
	dbw GOLD_BERRY,    30
	dbw ENERGYPOWDER,  50
	dbw ENERGY_ROOT,  200
	dbw RAGECANDYBAR,  20
	dbw BERRY_JUICE,   20
	dbw -1,             0
; f3df

Functionf3df: ; f3df (3:73df)
; Softboiled/Milk Drink in the field
	ld a, [wd0d8]
	dec a
	ld b, a
	call Functionf419
	jr c, .asm_f413
	ld a, b
	ld [CurPartyMon], a
	call Functionf30d
	call Functionf378
	call Functionf2f9
	push bc
	call Functionf1db
	pop bc
	call Functionf378
	ld a, c
	ld [CurPartyMon], a
	call Functionf30d
	call Functionf2d1
	call Functionf1db
	ld a, $f5
	call Functionf24a
	call JoyWaitAorB
.asm_f413
	ld a, b
	inc a
	ld [wd0d8], a
	ret

Functionf419: ; f419 (3:7419)
	push bc
	ld a, $1
	ld [PartyMenuActionText], a
	call Functionf21c
	pop bc
	jr c, .asm_f43e
	ld a, [wd0d8]
	dec a
	ld c, a
	ld a, b
	cp c
	jr z, .asm_f440
	ld a, c
	ld [CurPartyMon], a
	call Functionf30d
	jr z, .asm_f440
	call Functionf31b
	jr nc, .asm_f440
	xor a
	ret
.asm_f43e
	scf
	ret
.asm_f440
	push bc
	ld hl, UnknownText_0xf44a
	call MenuTextBoxBackup
	pop bc
	jr Functionf419
; f44a (3:744a)

UnknownText_0xf44a: ; 0xf44a
	; That can't be used on this #MON.
	text_jump UnknownText_0x1c5bac
	db "@"
; 0xf44f


EscapeRope: ; f44f
	xor a
	ld [wd0ec], a
	callba EscapeRopeFunction

	ld a, [wd0ec]
	cp 1
	call z, Functionf795
	ret
; f462


SuperRepel: ; f462
	ld b, 200
	jr Function_0xf46c
; f466

MaxRepel: ; f466
	ld b, 250
	jr Function_0xf46c
; f466

Repel: ; f46a
	ld b, 100
; f46c

Function_0xf46c: ; f46c
	ld a, [wRepelEffect]
	and a
	ld hl, TextJump_RepelUsedEarlierIsStillInEffect
	jp nz, PrintText

	ld a, b
	ld [wRepelEffect], a
	jp Functionf789


TextJump_RepelUsedEarlierIsStillInEffect: ; 0xf47d
	; The REPEL used earlier is still in effect.
	text_jump Text_RepelUsedEarlierIsStillInEffect
	db "@"
; 0xf482


XAccuracy: ; f482
	ld hl, PlayerSubStatus4
	bit SUBSTATUS_X_ACCURACY, [hl]
	jp nz, WontHaveAnyEffect_NotUsedMessage
	set SUBSTATUS_X_ACCURACY, [hl]
	jp Functionf789
; f48f


PokeDoll: ; f48f
	ld a, [wBattleMode]
	dec a
	jr nz, .asm_f4a6
	inc a
	ld [wd232], a
	ld a, [wBattleResult]
	and 3 << 6
	or $2
	ld [wBattleResult], a
	jp Functionf789

.asm_f4a6
	xor a
	ld [wd0ec], a
	ret
; f4ab


GuardSpec: ; f4ab
	ld hl, PlayerSubStatus4
	bit 1, [hl]
	jp nz, WontHaveAnyEffect_NotUsedMessage
	set 1, [hl]
	jp Functionf789
; f4b8


DireHit: ; f4b8
	ld hl, PlayerSubStatus4
	bit 2, [hl]
	jp nz, WontHaveAnyEffect_NotUsedMessage
	set 2, [hl]
	jp Functionf789
; f4c5


XAttack:
XDefend:
XSpeed:
XSpecial: ; f4c5
	call Functionf789

	ld a, [CurItem]
	ld hl, Tablef504

.asm_f4ce
	cp [hl]
	jr z, .asm_f4d5
rept 2
	inc hl
endr
	jr .asm_f4ce

.asm_f4d5
	inc hl
	ld b, [hl]
	xor a
	ld [hBattleTurn], a
	ld [AttackMissed], a
	ld [EffectFailed], a
	callba CheckIfStatCanBeRaised
	call WaitSFX

	callba BattleCommand8c
	callba BattleCommand8e

	ld a, [CurBattleMon]
	ld [CurPartyMon], a
	ld c, HAPPINESS_USEDXITEM
	callba ChangeHappiness
	ret
; f504

Tablef504: ; f504
	db X_ATTACK,  ATTACK
	db X_DEFEND,  DEFENSE
	db X_SPEED,   SPEED
	db X_SPECIAL, SP_ATTACK
; f50c


PokeFlute: ; f50c
	ld a, [wBattleMode]
	and a
	jr nz, .asm_f512
.asm_f512

	xor a
	ld [MiscBuffer2], a

	ld b, $ff ^ SLP

	ld hl, PartyMon1Status
	call .Functionf554

	ld a, [wBattleMode]
	cp WILD_BATTLE
	jr z, .asm_f52b
	ld hl, OTPartyMon1Status
	call .Functionf554
.asm_f52b

	ld hl, BattleMonStatus
	ld a, [hl]
	and b
	ld [hl], a
	ld hl, EnemyMonStatus
	ld a, [hl]
	and b
	ld [hl], a

	ld a, [MiscBuffer2]
	and a
	ld hl, UnknownText_0xf56c
	jp z, PrintText
	ld hl, UnknownText_0xf576
	call PrintText

	ld a, [Danger]
	and $80
	jr nz, .asm_f54e
.asm_f54e
	ld hl, UnknownText_0xf571
	jp PrintText


.Functionf554
	ld de, PartyMon2 - PartyMon1
	ld c, PARTY_LENGTH

.loop
	ld a, [hl]
	push af
	and SLP
	jr z, .asm_f564
	ld a, 1
	ld [MiscBuffer2], a
.asm_f564
	pop af
	and b
	ld [hl], a
	add hl, de
	dec c
	jr nz, .loop
	ret
; f56c


UnknownText_0xf56c: ; 0xf56c
	; Played the # FLUTE. Now, that's a catchy tune!
	text_jump UnknownText_0x1c5bf9
	db "@"
; 0xf571

UnknownText_0xf571: ; 0xf571
	; All sleeping #MON woke up.
	text_jump UnknownText_0x1c5c28
	db "@"
; 0xf576

UnknownText_0xf576: ; 0xf576
	; played the # FLUTE.@ @
	text_jump UnknownText_0x1c5c44
	start_asm
; 0xf57b


Function_0xf57b: ; f57b
	ld a, [wBattleMode]
	and a
	jr nz, .asm_f58c

	push de
	ld de, SFX_POKEFLUTE
	call WaitPlaySFX
	call WaitSFX
	pop de

.asm_f58c
	jp Function13e0
; f58f


BlueCard: ; f58f
	ld hl, .bluecardtext
	jp Function2012

.bluecardtext
	text_jump UnknownText_0x1c5c5e
	db "@"
; f59a


CoinCase: ; f59a
	ld hl, .coincasetext
	jp Function2012

.coincasetext
	text_jump UnknownText_0x1c5c7b
	db "@"
; f5a5


OldRod: ; f5a5
	ld e, $0
	jr Function_0xf5b1
; f5a9

GoodRod: ; f5a9
	ld e, $1
	jr Function_0xf5b1
; f5ad

SuperRod: ; f5ad
	ld e, $2
	jr Function_0xf5b1
; f5b1

Function_0xf5b1: ; f5b1
	callba FishFunction
	ret
; f5b8


Itemfinder: ; f5b8
	callba ItemFinder
	ret
; f5bf


MaxElixer:
PpUp:
Ether:
MaxEther:
Elixer:
Mysteryberry: ; f5bf
	ld a, [CurItem]
	ld [MiscBuffer2], a

.loop
    ; Party Screen opens to choose on which Pkmn to use the Item
	ld b, $1
	call Functionf1f9
	jp c, Functionf6e0

.loop2
	ld a, [MiscBuffer2]
	cp MAX_ELIXER
	jp z, Elixer_RestorePPofAllMoves
	cp ELIXER
	jp z, Elixer_RestorePPofAllMoves

	ld hl, TextJump_RaiseThePPOfWhichMove
	ld a, [MiscBuffer2]
	cp PP_UP
	jr z, .ppup
	ld hl, TextJump_RestoreThePPOfWhichMove

.ppup
	call PrintText

	ld a, [CurMoveNum]
	push af
	xor a
	ld [CurMoveNum], a
	ld a, $2
	ld [wd235], a
	callba MoveSelectionScreen
	pop bc

	ld a, b
	ld [CurMoveNum], a
	jr nz, .loop
	ld hl, PartyMon1Moves
	ld bc, PartyMon2 - PartyMon1
	call GetMthMoveOfNthPartymon

	push hl
	ld a, [hl]
	ld [wd265], a
	call GetMoveName
	call CopyName1
	pop hl

	ld a, [MiscBuffer2]
	cp PP_UP
	jp nz, Functionf6a7

	ld a, [hl]
	cp SKETCH
	jr z, .CantUsePPUpOnSketch

	ld bc, $0015
	add hl, bc
	ld a, [hl]
	cp 3 << 6 ; have 3 PP Ups already been used?
	jr c, .do_ppup

.CantUsePPUpOnSketch
.pp_is_maxed_out
	ld hl, TextJump_PPIsMaxedOut
	call PrintText
	jr .loop2

.do_ppup
	ld a, [hl]
	add 1 << 6 ; increase PP Up count by 1
	ld [hl], a
	ld a, $1
	ld [wd265], a
	call Functionf84c
	call Play_SFX_FULL_HEAL

	ld hl, TextJump_PPsIncreased
	call PrintText

Functionf64c: ; f64c
	call ClearPalettes
	jp Functionf795
; f652

Functionf652: ; f652
	ld a, [wBattleMode]
	and a
	jr z, .asm_f66c
	ld a, [CurPartyMon]
	ld b, a
	ld a, [CurBattleMon]
	cp b
	jr nz, .asm_f66c
	ld a, [PlayerSubStatus5]
	bit 3, a
	jr nz, .asm_f66c
	call .asm_f677

.asm_f66c
	call Play_SFX_FULL_HEAL
	ld hl, UnknownText_0xf739
	call PrintText
	jr Functionf64c

.asm_f677
	ld a, [CurPartyMon]
	ld hl, PartyMon1Moves
	ld bc, PartyMon2 - PartyMon1
	call AddNTimes
	ld de, BattleMonMoves
	ld b, NUM_MOVES
.asm_f688
	ld a, [de]
	and a
	jr z, .asm_f6a6
	cp [hl]
	jr nz, .asm_f6a1
	push hl
	push de
	push bc
	rept NUM_MOVES + 2 ; BattleMonPP - BattleMonMoves
	inc de
	endr
	ld bc, PartyMon1PP - PartyMon1Moves
	add hl, bc
	ld a, [hl]
	ld [de], a
	pop bc
	pop de
	pop hl

.asm_f6a1
	inc hl
	inc de
	dec b
	jr nz, .asm_f688

.asm_f6a6
	ret
; f6a7

Functionf6a7: ; f6a7
	call RestorePP
	jr nz, Functionf652
	jp Functionf6dd
; f6af

Elixer_RestorePPofAllMoves: ; f6af
	xor a
	ld hl, wcfa9
	ld [hli], a
	ld [hl], a
	ld b, NUM_MOVES
.moveLoop
	push bc
	ld hl, PartyMon1Moves
	ld bc, PartyMon2 - PartyMon1
	call GetMthMoveOfNthPartymon
	ld a, [hl]
	and a
	jr z, .cant_restore_pp

	call RestorePP
	jr z, .cant_restore_pp
	ld hl, wcfaa
	inc [hl]

.cant_restore_pp
	ld hl, wcfa9
	inc [hl]
	pop bc
	dec b
	jr nz, .moveLoop
	ld a, [wcfaa]
	and a
	jp nz, Functionf652

Functionf6dd: ; f6dd
	call WontHaveAnyEffectMessage

Functionf6e0: ; f6e0
	call ClearPalettes
	xor a
	ld [wd0ec], a
	ret
; f6e8

RestorePP: ; f6e8
	xor a ; PARTYMON
	ld [MonType], a
	call Functionf8ec
	ld hl, PartyMon1PP
	ld bc, PartyMon2 - PartyMon1
	call GetMthMoveOfNthPartymon
	ld a, [wd265]
	ld b, a
	ld a, [hl]
	and (1 << 6) - 1
	cp b
	jr nc, .dont_restore

	ld a, [MiscBuffer2]
	cp MAX_ELIXER
	jr z, .restore_all
	cp MAX_ETHER
	jr z, .restore_all

	ld c, 5
	cp MYSTERYBERRY
	jr z, .restore_some

	ld c, 10

.restore_some
	ld a, [hl]
	and (1 << 6) - 1
	add c
	cp b
	jr nc, .restore_all
	ld b, a

.restore_all
	ld a, [hl]
	and 3 << 6
	or b
	ld [hl], a
	ret

.dont_restore
	xor a
	ret
; f725

TextJump_RaiseThePPOfWhichMove: ; 0xf725
	; Raise the PP of which move?
	text_jump Text_RaiseThePPOfWhichMove
	db "@"
; 0xf72a

TextJump_RestoreThePPOfWhichMove: ; 0xf72a
	; Restore the PP of which move?
	text_jump Text_RestoreThePPOfWhichMove
	db "@"
; 0xf72f

TextJump_PPIsMaxedOut: ; 0xf72f
	; 's PP is maxed out.
	text_jump Text_PPIsMaxedOut
	db "@"
; 0xf734

TextJump_PPsIncreased: ; 0xf734
	; 's PP increased.
	text_jump Text_PPsIncreased
	db "@"
; 0xf739

UnknownText_0xf739: ; 0xf739
	; PP was restored.
	text_jump UnknownText_0x1c5cf1
	db "@"
; 0xf73e


Squirtbottle: ; f73e
	callba _Squirtbottle
	ret
; f745


CardKey: ; f745
	callba _CardKey
	ret
; f74c


BasementKey: ; f74c
	callba _BasementKey
	ret
; f753


SacredAsh: ; f753
	callba _SacredAsh
	ld a, [wd0ec]
	cp $1
	ret nz
	call Functionf795
	ret
; f763


NormalBox: ; f763
	ld c, $2c
	jr Function_0xf769
; f767

GorgeousBox: ; f767
	ld c, $2b
; f769

Function_0xf769: ; f769
	callba SetSpecificDecorationFlag

	ld hl, UnknownText_0xf778
	call PrintText

	jp Functionf795
; f778

UnknownText_0xf778: ; 0xf778
	text_jump UnknownText_0x1c5d03
	db "@"
; 0xf77d


Brightpowder:
ShinyFeather:
LuckyPunch:
MetalPowder:
Nugget:
RareGem:
ExpShare:
SilverLeaf:
RedScale:
Secretpotion:
SSTicket:
MysteryEgg:
ClearBell:
SilverWing:
QuickClaw:
GoldLeaf:
SoftSand:
SharpBeak:
PoisonBarb:
KingsRock:
RedApricorn:
Tinymushroom:
BigMushroom:
Silverpowder:
BluApricorn:
Item5A:
AmuletCoin:
YlwApricorn:
GrnApricorn:
CleanseTag:
MysticWater:
Twistedspoon:
WhtApricorn:
Blackbelt:
BlkApricorn:
Item64:
PnkApricorn:
Blackglasses:
Slowpoketail:
PinkBow:
Stick:
SmokeBall:
Nevermeltice:
Magnet:
Pearl:
BigPearl:
Everstone:
SpellTag:
GsBall:
MiracleSeed:
ThickClub:
FocusBand:
Item78:
HardStone:
LuckyEgg:
MachinePart:
EggTicket:
LostItem:
Stardust:
StarPiece:
Pass:
Item87:
Item88:
Item89:
Charcoal:
ScopeLens:
Item8D:
Item8E:
MetalCoat:
DragonFang:
Item91:
Leftovers:
SoftWool:
Item95:
DragonScale:
BerserkGene:
Item99:
Item9A:
Item9B:
FlowerMail:
LightBall:
PolkadotBow:
ItemAB:
ItemB0:
RainbowWing:
ItemB3: ; f77d
	jp IsntTheTimeMessage
; f780


Play_SFX_FULL_HEAL: ; f780
	push de
	ld de, SFX_FULL_HEAL
	call WaitPlaySFX
	pop de
	ret
; f789

Functionf789: ; f789
	ld hl, UsedItemText
	call PrintText
	call Play_SFX_FULL_HEAL
	call Functiona80
	; fallthrough
; f795

Functionf795: ; f795
	ld hl, NumItems
	ld a, 1
	ld [wItemQuantityChangeBuffer], a
	jp TossItem
; f7a0

Functionf7a0: ; f7a0
	call Functionedfa
	ld de, ANIM_THROW_POKE_BALL
	ld a, e
	ld [FXAnimIDLo], a
	ld a, d
	ld [FXAnimIDHi], a
	xor a
	ld [wc689], a
	ld [hBattleTurn], a
	ld [wcfca], a
	predef PlayBattleAnim
	ld hl, BlockedTheBallText
	call PrintText
	ld hl, DontBeAThiefText
	call PrintText
	jr Functionf795
; f7ca

WontHaveAnyEffect_NotUsedMessage: ; f7ca
	ld hl, WontHaveAnyEffectText
	call PrintText

	; Item wasn't used.
	ld a, $2
	ld [wd0ec], a
	ret
; f7d6

LooksBitterMessage: ; f7d6
	ld hl, LooksBitterText
	jp PrintText
; f7dc

Ball_BoxIsFullMessage: ; f7dc
	ld hl, Ball_BoxIsFullText
	call PrintText

	; Item wasn't used.
	ld a, $2
	ld [wd0ec], a
	ret
; f7e8

CantUseOnEggMessage: ; f7e8
	ld hl, CantUseOnEggText
	jr CantUseItemMessage

IsntTheTimeMessage: ; f7ed
	ld hl, IsntTheTimeText
	jr CantUseItemMessage

WontHaveAnyEffectMessage: ; f7f2
	ld hl, WontHaveAnyEffectText
	jr CantUseItemMessage

BelongsToSomeoneElseMessage: ; f7f7
	ld hl, BelongsToSomeoneElseText
	jr CantUseItemMessage

CyclingIsntAllowedMessage: ; f7fc
	ld hl, CyclingIsntAllowedText
	jr CantUseItemMessage

CantGetOnYourBikeMessage: ; f801
	ld hl, CantGetOnYourBikeText

CantUseItemMessage: ; f804
; Item couldn't be used.
	xor a
	ld [wd0ec], a
	jp PrintText
; f80b

LooksBitterText: ; 0xf80b
	; It looks bitter…
	text_jump UnknownText_0x1c5d3e
	db "@"
; 0xf810

CantUseOnEggText: ; 0xf810
	; That can't be used on an EGG.
	text_jump UnknownText_0x1c5d50
	db "@"
; 0xf815

IsntTheTimeText: ; 0xf815
	; OAK:  ! This isn't the time to use that!
	text_jump UnknownText_0x1c5d6e
	db "@"
; 0xf81a

BelongsToSomeoneElseText: ; 0xf81a
	; That belongs to someone else!
	text_jump UnknownText_0x1c5d97
	db "@"
; 0xf81f

WontHaveAnyEffectText: ; 0xf81f
	; It won't have any effect.
	text_jump UnknownText_0x1c5db6
	db "@"
; 0xf824

BlockedTheBallText: ; 0xf824
	; The trainer blocked the BALL!
	text_jump UnknownText_0x1c5dd0
	db "@"
; 0xf829

DontBeAThiefText: ; 0xf829
	; Don't be a thief!
	text_jump UnknownText_0x1c5def
	db "@"
; 0xf82e

CyclingIsntAllowedText: ; 0xf82e
	; Cycling isn't allowed here.
	text_jump UnknownText_0x1c5e01
	db "@"
; 0xf833

CantGetOnYourBikeText: ; 0xf833
	; Can't get on your @  now.
	text_jump UnknownText_0x1c5e1d
	db "@"
; 0xf838

Ball_BoxIsFullText: ; 0xf838
	; The #MON BOX is full. That can't be used now.
	text_jump UnknownText_0x1c5e3a
	db "@"
; 0xf83d

UsedItemText: ; 0xf83d
	; used the@ .
	text_jump UnknownText_0x1c5e68
	db "@"
; 0xf842

GotOnTheItemText: ; 0xf842
	; got on the@ .
	text_jump UnknownText_0x1c5e7b
	db "@"
; 0xf847

GotOffTheItemText: ; 0xf847
	; got off@ the @ .
	text_jump UnknownText_0x1c5e90
	db "@"
; 0xf84c


Functionf84c: ; f84c
	ld a, PartyMon1Moves - PartyMon1
	call GetPartyParamLocation
	push hl
	ld de, Buffer1
	predef FillPP
	pop hl
	ld bc, PartyMon1PP - PartyMon1Moves
	add hl, bc
	ld de, Buffer1
	ld b, 0
.asm_f864
	inc b
	ld a, b
	cp NUM_MOVES + 1
	ret z
	ld a, [wd265]
	dec a
	jr nz, .asm_f876
	ld a, [wcfa9]
	inc a
	cp b
	jr nz, .asm_f87d

.asm_f876
	ld a, [hl]
	and 3 << 6
	ld a, [de] ; wasted cycle
	call nz, ComputeMaxPP

.asm_f87d
	inc hl
	inc de
	jr .asm_f864
; f881



ComputeMaxPP: ; f881
	push bc
	; Divide the base PP by 5.
	ld a, [de]
	ld [hDividend + 3], a
	xor a
	ld [hDividend], a
	ld [hDividend + 1], a
	ld [hDividend + 2], a
	ld a, 5
	ld [hDivisor], a
	ld b, 4
	call Divide
	; Get the number of PP, which are bits 6 and 7 of the PP value stored in RAM.
	ld a, [hl]
	ld b, a
	swap a
	and $f
	srl a
	srl a
	ld c, a
	; If this value is 0, we are done
	and a
	jr z, .NoPPUp

.loop
	; Normally, a move with 40 PP would have 64 PP with three PP Ups.
	; Since this would overflow into bit 6, we prevent that from happening
	; by decreasing the extra amount of PP each PP Up provides, resulting
	; in a maximum of 61.
	ld a, [hQuotient + 2]
	cp $8
	jr c, .okay
	ld a, $7

.okay
	add b
	ld b, a
	ld a, [wd265]
	dec a
	jr z, .NoPPUp
	dec c
	jr nz, .loop

.NoPPUp
	ld [hl], b
	pop bc
	ret
; f8b9

Functionf8b9: ; f8b9
	ld a, PartyMon1PP - PartyMon1
	call GetPartyParamLocation
	push hl
	ld a, PartyMon1Moves - PartyMon1
	call GetPartyParamLocation
	pop de
	xor a ; PARTYMON
	ld [wcfa9], a
	ld [MonType], a
	ld c, NUM_MOVES
.loop
	ld a, [hli]
	and a
	ret z
	push hl
	push de
	push bc
	call Functionf8ec
	pop bc
	pop de
	ld a, [de]
	and 3 << 6
	ld b, a
	ld a, [wd265]
	add b
	ld [de], a
	inc de
	ld hl, wcfa9
	inc [hl]
	pop hl
	dec c
	jr nz, .loop
	ret
; f8ec


Functionf8ec: ; f8ec
	ld a, [StringBuffer1 + 0]
	push af
	ld a, [StringBuffer1 + 1]
	push af

	ld a, [MonType]
	and a

	ld hl, PartyMon1Moves
	ld bc, PartyMon2 - PartyMon1
	jr z, .got_partymon ; PARTYMON

	ld hl, OTPartyMon1Moves
	dec a
	jr z, .got_partymon ; OTPARTYMON

	ld hl, TempMonMoves
	dec a
	jr z, .got_nonpartymon ; BOXMON

	ld hl, TempMonMoves ; Wasted cycles
	dec a
	jr z, .got_nonpartymon ; BREEDMON

	ld hl, BattleMonMoves ; WILDMON

.got_nonpartymon ; BOXMON, BREEDMON, WILDMON
	call GetMthMoveOfCurrentMon
	jr .gotdatmove

.got_partymon ; PARTYMON, OTPARTYMON
	call GetMthMoveOfNthPartymon

.gotdatmove
	ld a, [hl]
	dec a

	push hl
	ld hl, Moves + MOVE_PP
	ld bc, MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	ld b, a
	ld de, StringBuffer1
	ld [de], a
	pop hl

	push bc
	ld bc, PartyMon1PP - PartyMon1Moves
	ld a, [MonType]
	cp WILDMON
	jr nz, .notwild
	ld bc, EnemyMonPP - EnemyMonMoves
.notwild
	add hl, bc
	ld a, [hl]
	and 3 << 6
	pop bc

	or b
	ld hl, StringBuffer1 + 1
	ld [hl], a
	xor a
	ld [wd265], a
	ld a, b ; this gets lost anyway
	call ComputeMaxPP
	ld a, [hl]
	and (1 << 6) - 1
	ld [wd265], a

	pop af
	ld [StringBuffer1 + 1], a
	pop af
	ld [StringBuffer1 + 0], a
	ret
; f963

GetMthMoveOfNthPartymon: ; f963
	ld a, [CurPartyMon]
	call AddNTimes

GetMthMoveOfCurrentMon: ; f969
	ld a, [wcfa9]
	ld c, a
	ld b, 0
	add hl, bc
	ret
; f971
