; More overworld event handling.


WarpToSpawnPoint:: ; 97c28
	ld hl, StatusFlags2
	res 1, [hl]
	res 2, [hl]
	ret
; 97c30

RunMemScript:: ; 97c30
; If there is no script here, we don't need to be here.
	ld a, [wMapReentryScriptQueueFlag]
	and a
	ret z
; Execute the script at (wMapReentryScriptBank):(wMapReentryScriptAddress).
	ld hl, wMapReentryScriptAddress
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wMapReentryScriptBank]
	call CallScript
	scf
; Clear the buffer for the next script.
	push af
	xor a
	ld hl, wMapReentryScriptQueueFlag
	ld bc, 8
	call ByteFill
	pop af
	ret
; 97c4f

LoadScriptBDE:: ; 97c4f
; If there's already a script here, don't overwrite.
	ld hl, wMapReentryScriptQueueFlag
	ld a, [hl]
	and a
	ret nz
; Set the flag
	ld [hl], 1
	inc hl
; Load the script pointer b:de into (wMapReentryScriptBank):(wMapReentryScriptAddress)
	ld [hl], b
	inc hl
	ld [hl], e
	inc hl
	ld [hl], d
	scf
	ret
; 97c5f

CheckFacingTileEvent:: ; 97c5f
	call GetFacingTileCoord
	ld [EngineBuffer1], a
	ld c, a
	callba CheckFacingTileForStd
	jr c, .done

	call CheckCutTreeTile
	jr nz, .whirlpool
	callba TryCutOW
	jr .done

.whirlpool
	ld a, [EngineBuffer1]
	call CheckWhirlpoolTile
	jr nz, .waterfall
	callba TryWhirlpoolOW
	jr .done

.waterfall
	ld a, [EngineBuffer1]
	call CheckWaterfallTile
	jr nz, .headbutt
	callba TryWaterfallOW
	jr .done

.headbutt
	ld a, [EngineBuffer1]
	call CheckHeadbuttTreeTile
	jr nz, .surf
	callba TryHeadbuttOW
	jr c, .done
	jr .noevent

.surf
	callba TrySurfOW
	jr nc, .noevent
	jr .done

.noevent
	xor a
	ret

.done
	call PlayClickSFX
	ld a, $ff
	scf
	ret
; 97cc0


RandomEncounter:: ; 97cc0
; Random encounter

	call CheckWildEncounterCooldown
	jr c, .nope
	call CanUseSweetScent
	jr nc, .nope
	ld hl, StatusFlags2
	bit 2, [hl] ; bug contest
	jr nz, .bug_contest
	callba TryWildEncounter
	jr nz, .nope
	jr .ok

.bug_contest
	call _TryWildEncounter_BugContest
	jr nc, .nope
	jr .ok_bug_contest

.nope
	ld a, 1
	and a
	ret

.ok
	ld a, BANK(WildBattleScript)
	ld hl, WildBattleScript
	jr .done

.ok_bug_contest
	ld a, BANK(BugCatchingContestBattleScript)
	ld hl, BugCatchingContestBattleScript
	jr .done

.done
	call CallScript
	scf
	ret
; 97cf9

WildBattleScript: ; 97cf9
	battlecheck
	startbattle
	returnafterbattle
	end
; 97cfd

CanUseSweetScent:: ; 97cfd
	ld hl, StatusFlags
	bit 5, [hl]
	jr nz, .no
	ld a, [wPermission]
	cp CAVE
	jr z, .ice_check
	cp DUNGEON
	jr z, .ice_check
	callba CheckGrassCollision
	jr nc, .no

.ice_check
	ld a, [PlayerStandingTile]
	call CheckIceTile
	jr z, .no
	scf
	ret

.no
	and a
	ret
; 97d23

_TryWildEncounter_BugContest: ; 97d23
	call TryWildEncounter_BugContest
	ret nc
	call ChooseWildEncounter_BugContest
	callba CheckRepelEffect
	ret
; 97d31

ChooseWildEncounter_BugContest:: ; 97d31
; Pick a random mon out of ContestMons.

.loop
	call Random
	cp 100 << 1
	jr nc, .loop
	srl a

	ld hl, ContestMons
	ld de, 4
.CheckMon
	sub [hl]
	jr c, .GotMon
	add hl, de
	jr .CheckMon

.GotMon
	inc hl

; Species
	ld a, [hli]
	ld [TempWildMonSpecies], a

; Min level
	ld a, [hli]
	ld d, a

; Max level
	ld a, [hl]

	sub d
	jr nz, .RandomLevel

; If min and max are the same.
	ld a, d
	jr .GotLevel

.RandomLevel
; Get a random level between the min and max.
	ld c, a
	inc c
	call Random
	ld a, [hRandomAdd]
	call SimpleDivide
	add d

.GotLevel
	ld [CurPartyLevel], a

	xor a
	ret
; 97d64

TryWildEncounter_BugContest: ; 97d64
	ld a, [PlayerStandingTile]
	call CheckSuperTallGrassTile
	ld b, 40 percent
	jr z, .ok
	ld b, 20 percent

.ok
	callba ApplyMusicEffectOnEncounterRate
	callba ApplyCleanseTagEffectOnEncounterRate
	call Random
	ld a, [hRandomAdd]
	cp b
	ret c
	ld a, 1
	and a
	ret
; 97d87

ContestMons: ; 97d87
	;   %, species,   min, max
	db 20, CATERPIE,    7, 18
	db 20, WEEDLE,      7, 18
	db 10, METAPOD,     9, 18
	db 10, KAKUNA,      9, 18
	db  5, BUTTERFREE, 12, 15
	db  5, BEEDRILL,   12, 15
	db 10, VENONAT,    10, 16
	db 10, PARAS,      10, 17
	db  5, SCYTHER,    13, 14
	db  5, PINSIR,     13, 14
	db -1, VENOMOTH,   30, 40
; 97db3

DoBikeStep:: ; 97db3
	nop
	nop
	; If the bike shop owner doesn't have our number, or
	; if we've already gotten the call, we don't have to
	; be here.
	ld hl, StatusFlags2
	bit 4, [hl]
	jr z, .NoCall

	; If we're not on the bike, we don't have to be here.
	ld a, [PlayerState]
	cp PLAYER_BIKE
	jr nz, .NoCall

	; If we're not in an area of phone service, we don't
	; have to be here.
	call GetMapHeaderPhoneServiceNybble
	and a
	jr nz, .NoCall

	; Check the bike step count and check whether we've
	; taken 65536 of them yet.
	ld hl, wBikeStep
	ld a, [hli]
	ld d, a
	ld e, [hl]
	cp 255
	jr nz, .increment
	ld a, e
	cp 255
	jr z, .dont_increment

.increment
	inc de
	ld [hl], e
	dec hl
	ld [hl], d

.dont_increment
	; If we've taken at least 1024 steps, have the bike
	;  shop owner try to call us.
	ld a, d
	cp 1024 >> 8
	jr c, .NoCall

	; If a call has already been queued, don't overwrite
	; that call.
	ld a, [wSpecialPhoneCallID]
	and a
	jr nz, .NoCall

	; Queue the call.
	ld a, SPECIALCALL_BIKESHOP
	ld [wSpecialPhoneCallID], a
	xor a
	ld [wSpecialPhoneCallID + 1], a
	ld hl, StatusFlags2
	res 4, [hl]
	scf
	ret

.NoCall
	xor a
	ret
; 97df9

Function97df9:: ; 97df9
	ld hl, wd6de
	ld de, 6
	ld c, 4
	xor a
.loop
	ld [hl], a
	add hl, de
	dec c
	jr nz, .loop
	ret
; 97e08

Function97e08:: ; 97e08
	ld hl, wd6de
	xor a
.loop
	ld [hMapObjectIndexBuffer], a
	ld a, [hl]
	and a
	jr z, .skip
	push hl
	ld b, h
	ld c, l
	call Function97e79
	pop hl

.skip
	ld de, $0006
	add hl, de
	ld a, [hMapObjectIndexBuffer]
	inc a
	cp $4
	jr nz, .loop
	ret
; 97e25

Function97e25: ; 97e25
	ld hl, wd6de
	ld bc, 6
	call AddNTimes
	ld b, h
	ld c, l
	ret
; 97e31

Function97e31:: ; 97e31
	push bc
	push de
	call Function97e45
	ld d, h
	ld e, l
	pop hl
	pop bc
	ret c
	ld a, b
	ld bc, $0005
	call FarCopyBytes
	xor a
	ld [hl], a
	ret
; 97e45

Function97e45: ; 97e45
	ld hl, wd6de
	ld de, $0006
	ld c, $4
.asm_97e4d
	ld a, [hl]
	and a
	jr z, .asm_97e57
	add hl, de
	dec c
	jr nz, .asm_97e4d
	scf
	ret

.asm_97e57
	ld a, $4
	sub c
	and a
	ret
; 97e5c

Function97e5c:: ; 97e5c
	ld hl, wd6de
	ld de, $0006
	ld c, $4
.asm_97e64
	ld a, [hl]
	cp b
	jr z, .asm_97e6e
	add hl, de
	dec c
	jr nz, .asm_97e64
	and a
	ret

.asm_97e6e
	xor a
	ld [hl], a
	scf
	ret
; 97e72

Function97e72: ; 97e72
	ld hl, 0
	add hl, bc
	ld [hl], 0
	ret
; 97e79

Function97e79: ; 97e79
	ld hl, 0
	add hl, bc
	ld a, [hl]
	cp 5
	jr c, .asm_97e83
	xor a

.asm_97e83
	ld e, a
	ld d, 0
	ld hl, Table97e94
rept 3
	add hl, de
endr
	ld a, [hli]
	push af
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	rst FarCall
	ret
; 97e94

Table97e94: ; 97e94
	dba Function97eb7
	dba Function97eb8
	dba Function97f42
	dba Function97ef9
	dba Function97ebc
; 97ea3

Function97ea3: ; 97ea3
	ld hl, $0005
	add hl, bc
	ld a, [hl]
	pop hl
	rst JumpTable
	ret
; 97eab

Function97eab: ; 97eab
	ld hl, $0005
	add hl, bc
	inc [hl]
	ret
; 97eb1

Function97eb1: ; 97eb1
	ld hl, $0005
	add hl, bc
	dec [hl]
	ret
; 97eb7

Function97eb7: ; 97eb7
	ret
; 97eb8

Function97eb8: ; 97eb8
	call ret_2f3e
	ret
; 97ebc

Function97ebc: ; 97ebc
	call Function97ea3
	dw Function97ec3
	dw Function97ecd
; 97ec3

Function97ec3: ; 97ec3
	ld a, [hSCY]
	ld hl, $0004
	add hl, bc
	ld [hl], a
	call Function97eab
; 97ecd

Function97ecd: ; 97ecd
	ld hl, $0001
	add hl, bc
	ld a, [hl]
	dec a
	ld [hl], a
	jr z, .asm_97eee
	and $1
	jr z, .asm_97ee4
	ld hl, $0002
	add hl, bc
	ld a, [hSCY]
	sub [hl]
	ld [hSCY], a
	ret

.asm_97ee4
	ld hl, $0002
	add hl, bc
	ld a, [hSCY]
	add [hl]
	ld [hSCY], a
	ret

.asm_97eee
	ld hl, $0004
	add hl, bc
	ld a, [hl]
	ld [hSCY], a
	call Function97e72
	ret
; 97ef9

Function97ef9: ; 97ef9
	call Function97ea3
	dw Function97f02
	dw Function97f0a
	dw Function97f1b
; 97f02

Function97f02: ; 97f02
	call Function97f38
	jr z, Function97f2c
	call Function97eab
; 97f0a

Function97f0a: ; 97f0a
	call Function97f38
	jr z, Function97f2c
	call Function97eab

	ld hl, $0002
	add hl, bc
	ld a, [hl]
	ld [wd173], a
	ret
; 97f1b

Function97f1b: ; 97f1b
	call Function97f38
	jr z, Function97f2c
	call Function97eb1

	ld hl, $0003
	add hl, bc
	ld a, [hl]
	ld [wd173], a
	ret
; 97f2c

Function97f2c: ; 97f2c
	ld a, $7f
	ld [wd173], a
	ld hl, $0005
	add hl, bc
	ld [hl], 0
	ret
; 97f38

Function97f38: ; 97f38
	push bc
	ld bc, PlayerStruct
	call GetSpriteDirection
	and a
	pop bc
	ret
; 97f42

Function97f42: ; 97f42
	ld de, PlayerStruct
	ld a, $d
.asm_97f47
	push af

	ld hl, 0
	add hl, de
	ld a, [hl]
	and a
	jr z, .asm_97f71

	ld hl, $0003
	add hl, de
	ld a, [hl]
	cp $19
	jr nz, .asm_97f71

	ld hl, $000e
	add hl, de
	ld a, [hl]
	call CheckPitTile
	jr nz, .asm_97f71

	ld hl, $0007
	add hl, de
	ld a, [hl]
	cp $ff
	jr nz, .asm_97f71
	call Function3567
	jr c, .asm_97f7c

.asm_97f71
	ld hl, $0028
	add hl, de
	ld d, h
	ld e, l

	pop af
	dec a
	jr nz, .asm_97f47
	ret

.asm_97f7c
	pop af
	ret
; 97f7e
