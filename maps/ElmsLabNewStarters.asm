ElmsLab_MapScriptHeader:
.MapTriggers:
	db 6

	; triggers
	dw UnknownScript_0x78b7a, 0
	dw UnknownScript_0x78b7e, 0
	dw UnknownScript_0x78b7f, 0
	dw UnknownScript_0x78b80, 0
	dw UnknownScript_0x78b81, 0
	dw UnknownScript_0x78b82, 0

.MapCallbacks:
	db 1

	; callbacks

	dbw 2, ElmsLab_PutElmAtLaptop

UnknownScript_0x78b7a:
	priorityjump ElmsLab_AutowalkUpToElm
	end

UnknownScript_0x78b7e:
	end

UnknownScript_0x78b7f:
	end

UnknownScript_0x78b80:
	end

UnknownScript_0x78b81:
	end

UnknownScript_0x78b82:
	end

ElmsLab_PutElmAtLaptop:
	checktriggers
	iftrue .Skip
	moveperson $2, $3, $4
.Skip:
	return

ElmsLab_AutowalkUpToElm:
	applymovement PLAYER, ElmsLab_WalkUpToElmMovement
	showemote EMOTE_SHOCK, $2, 15
	spriteface $2, RIGHT
	loadfont
	writetext ElmText_Intro
ElmsLab_RefuseLoop:
	yesorno
	iftrue ElmsLab_ElmGetsEmail
	writetext ElmText_Refused
	jump ElmsLab_RefuseLoop

ElmsLab_ElmGetsEmail:
	writetext ElmText_Accepted
	keeptextopen
	writetext ElmText_ResearchAmbitions
	closetext
	loadmovesprites
	playsound SFX_GLASS_TING
	pause 30
	showemote EMOTE_SHOCK, $2, 10
	spriteface $2, DOWN
	loadfont
	writetext ElmText_GotAnEmail
	closetext
	loadmovesprites
	loadfont
	spriteface $2, RIGHT
	writetext ElmText_MissionFromMrPokemon
	closetext
	loadmovesprites
	applymovement $2, ElmsLab_ElmToDefaultPositionMovement1
	spriteface PLAYER, UP
	applymovement $2, ElmsLab_ElmToDefaultPositionMovement2
	spriteface PLAYER, RIGHT
	loadfont
	writetext ElmText_ChooseAPokemon
	closetext
	dotrigger $1
	loadmovesprites
	end

ProfElmScript:
	faceplayer
	loadfont
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue ElmCheckMasterBall
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue ElmGiveTicketScript
ElmCheckMasterBall:
	checkevent EVENT_GOT_MASTER_BALL_FROM_ELM
	iftrue ElmCheckEverstone
	checkflag ENGINE_RISINGBADGE
	iftrue ElmGiveMasterBallScript
ElmCheckEverstone:
	checkevent EVENT_GOT_EVERSTONE_FROM_ELM
	iftrue ElmScript_CallYou
	checkevent EVENT_SHOWED_TOGEPI_TO_ELM
	iftrue ElmGiveEverstoneScript
	checkevent EVENT_TOLD_ELM_ABOUT_TOGEPI_OVER_THE_PHONE
	iffalse ElmCheckTogepiEgg
	writebyte TOGEPI
	special Special_FindThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	writebyte TOGETIC
	special Special_FindThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	writetext UnknownText_0x79a40
	closetext
	loadmovesprites
	end

ElmEggHatchedScript:
	writebyte TOGEPI
	special Special_FindThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	writebyte TOGETIC
	special Special_FindThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	jump ElmCheckGotEggAgain

ElmCheckTogepiEgg:
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iffalse ElmCheckGotEggAgain
	checkevent EVENT_TOGEPI_HATCHED
	iftrue ElmEggHatchedScript
ElmCheckGotEggAgain:
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE ; why are we checking it again?
	iftrue ElmWaitingEggHatchScript
	checkflag ENGINE_ZEPHYRBADGE
	iftrue ElmAideHasEggScript
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue ElmStudyingEggScript
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue ElmAfterTheftScript
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue ElmDescribesMrPokemonScript
	writetext ElmText_LetYourMonBattleIt
	closetext
	loadmovesprites
	end

LabTryToLeaveScript:
	spriteface $2, DOWN
	loadfont
	writetext LabWhereGoingText
	closetext
	loadmovesprites
	applymovement PLAYER, MovementData_0x78f70
	end

CyndaquilPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	spriteface $2, DOWN
	refreshscreen $0
	pokepic CYNDAQUIL
	cry CYNDAQUIL
	closetext
	pokepicyesorno
	loadfont
	writetext TakeCyndaquilText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $4
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	keeptextopen
	waitbutton
	pokenamemem CYNDAQUIL, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitbutton
	keeptextopen
	givepoke CYNDAQUIL, 5, BERRY
	loadmovesprites
	checkcode VAR_FACING
	if_equal $3, ElmDirectionsScript
	applymovement PLAYER, AfterCyndaquilMovement
	jump ElmDirectionsScript

TotodilePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	spriteface $2, DOWN
	refreshscreen $0
	pokepic TOTODILE
	cry TOTODILE
	closetext
	pokepicyesorno
	loadfont
	writetext TakeTotodileText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $5
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	keeptextopen
	waitbutton
	pokenamemem TOTODILE, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitbutton
	keeptextopen
	givepoke TOTODILE, 5, BERRY
	loadmovesprites
	applymovement PLAYER, AfterTotodileMovement
	jump ElmDirectionsScript

ChikoritaPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	spriteface $2, DOWN
	refreshscreen $0
	pokepic CHIKORITA
	cry CHIKORITA
	closetext
	pokepicyesorno
	loadfont
	writetext TakeChikoritaText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $6
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText
	keeptextopen
	waitbutton
	pokenamemem CHIKORITA, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitbutton
	keeptextopen
	givepoke CHIKORITA, 5, BERRY
	loadmovesprites
	applymovement PLAYER, AfterChikoritaMovement
	jump ElmDirectionsScript

CharmanderPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	spriteface $2, DOWN
	refreshscreen $0
	pokepic CHARMANDER
	cry CHARMANDER
	closetext
	pokepicyesorno
	loadfont
	writetext TakeCharmanderText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $4
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	keeptextopen
	waitbutton
	pokenamemem CHARMANDER, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitbutton
	keeptextopen
	givepoke CHARMANDER, 5, BERRY
	loadmovesprites
	checkcode VAR_FACING
	if_equal $3, ElmDirectionsScript
	applymovement PLAYER, AfterCharmanderMovement
	jump ElmDirectionsScript

SquirtlePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	spriteface $2, DOWN
	refreshscreen $0
	pokepic SQUIRTLE
	cry SQUIRTLE
	closetext
	pokepicyesorno
	loadfont
	writetext TakeSquirtleText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $4
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	keeptextopen
	waitbutton
	pokenamemem SQUIRTLE, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitbutton
	keeptextopen
	givepoke SQUIRTLE, 5, BERRY
	loadmovesprites
	checkcode VAR_FACING
	if_equal $3, ElmDirectionsScript
	applymovement PLAYER, AfterSquirtleMovement
	jump ElmDirectionsScript

BulbasaurPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	spriteface $2, DOWN
	refreshscreen $0
	pokepic BULBASAUR
	cry BULBASAUR
	closetext
	pokepicyesorno
	loadfont
	writetext TakeBulbasaurText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $4
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText
	keeptextopen
	waitbutton
	pokenamemem BULBASAUR, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitbutton
	keeptextopen
	givepoke BULBASAUR, 5, BERRY
	loadmovesprites
	checkcode VAR_FACING
	if_equal $3, ElmDirectionsScript
	applymovement PLAYER, AfterBulbasaurMovement
	jump ElmDirectionsScript

TyroguePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	spriteface $2, DOWN
	refreshscreen $0
	pokepic TYROGUE
	cry TYROGUE
	closetext
	pokepicyesorno
	loadfont
	writetext TakeTyrogueText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $4
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	keeptextopen
	waitbutton
	pokenamemem TYROGUE, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitbutton
	keeptextopen
	givepoke TYROGUE, 5, BERRY
	loadmovesprites
	checkcode VAR_FACING
	if_equal $3, ElmDirectionsScript
	applymovement PLAYER, AfterTyrogueMovement
	jump ElmDirectionsScript

EeveePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	spriteface $2, DOWN
	refreshscreen $0
	pokepic EEVEE
	cry EEVEE
	closetext
	pokepicyesorno
	loadfont
	writetext TakeEeveeText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $4
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	keeptextopen
	waitbutton
	pokenamemem EEVEE, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitbutton
	keeptextopen
	givepoke EEVEE, 5, BERRY
	loadmovesprites
	checkcode VAR_FACING
	if_equal $3, ElmDirectionsScript
	applymovement PLAYER, AfterEeveeMovement
	jump ElmDirectionsScript

PichuPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	spriteface $2, DOWN
	refreshscreen $0
	pokepic PICHU
	cry PICHU
	closetext
	pokepicyesorno
	loadfont
	writetext TakePichuText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $4
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText
	keeptextopen
	waitbutton
	pokenamemem PICHU, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitbutton
	keeptextopen
	givepoke PICHU, 5, BERRY
	loadmovesprites
	checkcode VAR_FACING
	if_equal $3, ElmDirectionsScript
	applymovement PLAYER, AfterPichuMovement
	jump ElmDirectionsScript

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	closetext
	loadmovesprites
	end

ElmDirectionsScript:
	spriteface PLAYER, UP
	loadfont
	writetext ElmDirectionsText1
	closetext
	loadmovesprites
	addcellnum PHONE_ELM
	loadfont
	writetext GotElmsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitbutton
	closetext
	loadmovesprites
	spriteface $2, LEFT
	loadfont
	writetext ElmDirectionsText2
	closetext
	loadmovesprites
	spriteface $2, DOWN
	loadfont
	writetext ElmDirectionsText3
	closetext
	loadmovesprites
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	setevent EVENT_RIVAL_CHERRYGROVE_CITY
	dotrigger $5
	domaptrigger NEW_BARK_TOWN, $1
	end

ElmDescribesMrPokemonScript:
	writetext ElmDescribesMrPokemonText
	closetext
	loadmovesprites
	end

LookAtElmPokeBallScript:
	loadfont
	writetext ElmPokeBallText
	closetext
	loadmovesprites
	end

ElmsLabHealingMachine:
	loadfont
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .CanHeal
	writetext ElmsLabHealingMachineText1
	closetext
	loadmovesprites
	end

.CanHeal
	writetext ElmsLabHealingMachineText2
	yesorno
	iftrue ElmsLabHealingMachine_HealParty
	loadmovesprites
	end

ElmsLabHealingMachine_HealParty:
	special Mobile_HealParty
	special HealParty
	playmusic MUSIC_NONE
	writebyte 1 ; Machine is in Elm's Lab
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	loadmovesprites
	end

ElmAfterTheftDoneScript:
	closetext
	loadmovesprites
	end

ElmAfterTheftScript:
	writetext ElmAfterTheftText1
	checkitem MYSTERY_EGG
	iffalse ElmAfterTheftDoneScript
	keeptextopen
	writetext ElmAfterTheftText2
	closetext
	takeitem MYSTERY_EGG, 1
	scall ElmJumpBackScript1
	writetext ElmAfterTheftText3
	closetext
	scall ElmJumpBackScript2
	writetext ElmAfterTheftText4
	keeptextopen
	writetext ElmAfterTheftText5
	keeptextopen
	setevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	setflag ENGINE_BUG_CONTEST_ON
	domaptrigger ROUTE_29, $1
	clearevent EVENT_ROUTE_30_YOUNGSTER_JOEY
	setevent EVENT_ROUTE_30_BATTLE
	writetext ElmAfterTheftText6
	closetext
	loadmovesprites
	dotrigger $6
	end

ElmStudyingEggScript:
	writetext ElmStudyingEggText
	closetext
	loadmovesprites
	end

ElmAideHasEggScript:
	writetext ElmAideHasEggText
	closetext
	loadmovesprites
	end

ElmWaitingEggHatchScript:
	writetext ElmWaitingEggHatchText
	closetext
	loadmovesprites
	end

ShowElmTogepiScript:
	writetext ShowElmTogepiText1
	closetext
	loadmovesprites
	showemote EMOTE_SHOCK, $2, 15
	setevent EVENT_SHOWED_TOGEPI_TO_ELM
	loadfont
	writetext ShowElmTogepiText2
	keeptextopen
	writetext ShowElmTogepiText3
	keeptextopen
ElmGiveEverstoneScript:
	writetext ElmGiveEverstoneText1
	keeptextopen
	verbosegiveitem EVERSTONE, 1
	iffalse ElmScript_NoRoomForEverstone
	writetext ElmGiveEverstoneText2
	closetext
	loadmovesprites
	setevent EVENT_GOT_EVERSTONE_FROM_ELM
	end

ElmScript_CallYou:
	writetext ElmText_CallYou
	closetext
ElmScript_NoRoomForEverstone:
	loadmovesprites
	end

ElmGiveMasterBallScript:
	writetext ElmGiveMasterBallText1
	keeptextopen
	verbosegiveitem MASTER_BALL, 1
	iffalse .notdone
	setevent EVENT_GOT_MASTER_BALL_FROM_ELM
	writetext ElmGiveMasterBallText2
	closetext
.notdone
	loadmovesprites
	end

ElmGiveTicketScript:
	writetext ElmGiveTicketText1
	keeptextopen
	verbosegiveitem S_S_TICKET, 1
	setevent EVENT_GOT_SS_TICKET_FROM_ELM
	writetext ElmGiveTicketText2
	closetext
	loadmovesprites
	end

ElmJumpBackScript1:
	loadmovesprites
	checkcode VAR_FACING
	if_equal DOWN, ElmJumpDownScript
	if_equal UP, ElmJumpUpScript
	if_equal LEFT, ElmJumpLeftScript
	if_equal RIGHT, ElmJumpRightScript
	end

ElmJumpBackScript2:
	loadmovesprites
	checkcode VAR_FACING
	if_equal DOWN, ElmJumpUpScript
	if_equal UP, ElmJumpDownScript
	if_equal LEFT, ElmJumpRightScript
	if_equal RIGHT, ElmJumpLeftScript
	end

ElmJumpUpScript:
	applymovement $2, ElmJumpUpMovement
	loadfont
	end

ElmJumpDownScript:
	applymovement $2, ElmJumpDownMovement
	loadfont
	end

ElmJumpLeftScript:
	applymovement $2, ElmJumpLeftMovement
	loadfont
	end

ElmJumpRightScript:
	applymovement $2, ElmJumpRightMovement
	loadfont
	end

AideScript_WalkPotions1:
	applymovement $3, AideWalksRight1
	spriteface PLAYER, DOWN
	scall AideScript_GivePotions
	applymovement $3, AideWalksLeft1
	end

AideScript_WalkPotions2:
	applymovement $3, AideWalksRight2
	spriteface PLAYER, DOWN
	scall AideScript_GivePotions
	applymovement $3, AideWalksLeft2
	end

AideScript_GivePotions:
	loadfont
	writetext AideText_GiveYouPotions
	keeptextopen
	verbosegiveitem POTION, 1
	writetext AideText_AlwaysBusy
	closetext
	loadmovesprites
	dotrigger $2
	end

AideScript_WalkBalls1:
	applymovement $3, AideWalksRight1
	spriteface PLAYER, DOWN
	scall AideScript_GiveYouBalls
	applymovement $3, AideWalksLeft1
	end

AideScript_WalkBalls2:
	applymovement $3, AideWalksRight2
	spriteface PLAYER, DOWN
	scall AideScript_GiveYouBalls
	applymovement $3, AideWalksLeft2
	end

AideScript_GiveYouBalls:
	loadfont
	writetext AideText_GiveYouBalls
	keeptextopen
	itemtotext POKE_BALL, $1
	scall AideScript_ReceiveTheBalls
	giveitem POKE_BALL, $5
	writetext AideText_ExplainBalls
	keeptextopen
	itemnotify
	loadmovesprites
	dotrigger $2
	end

AideScript_ReceiveTheBalls:
	jumpstd receiveitem
	end

ElmsAideScript:
	faceplayer
	loadfont
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iftrue AideScript_AfterTheft
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue AideScript_ExplainBalls
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue AideScript_TheftTestimony
	writetext AideText_AlwaysBusy
	closetext
	loadmovesprites
	end

AideScript_TheftTestimony:
	writetext AideText_TheftTestimony
	closetext
	loadmovesprites
	end

AideScript_ExplainBalls:
	writetext AideText_ExplainBalls
	closetext
	loadmovesprites
	end

AideScript_AfterTheft:
	writetext AideText_AfterTheft
	closetext
	loadmovesprites
	end

MeetCopScript2:
	applymovement PLAYER, MeetCopScript2_StepLeft

MeetCopScript:
	applymovement PLAYER, MeetCopScript_WalkUp
CopScript:
	spriteface $7, LEFT
	loadfont
	writetext ElmsLabOfficerText1
	keeptextopen
	special SpecialNameRival
	writetext ElmsLabOfficerText2
	closetext
	loadmovesprites
	applymovement $7, OfficerLeavesMovement
	disappear $7
	dotrigger $2
	end

ElmsLabWindow:
	loadfont
	checkflag ENGINE_FLYPOINT_VIOLET
	iftrue .Normal
	checkevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	iftrue .BreakIn
	jump .Normal

.BreakIn
	writetext ElmsLabWindowText2
	closetext
	loadmovesprites
	end

.Normal
	writetext ElmsLabWindowText1
	closetext
	loadmovesprites
	end

ElmsLabTravelTip1:
	jumptext ElmsLabTravelTip1Text

ElmsLabTravelTip2:
	jumptext ElmsLabTravelTip2Text

ElmsLabTravelTip3:
	jumptext ElmsLabTravelTip3Text

ElmsLabTravelTip4:
	jumptext ElmsLabTravelTip4Text

ElmsLabTrashcan:
	jumptext ElmsLabTrashcanText

ElmsLabPC:
	jumptext ElmsLabPCText

ElmsLabTrashcan2:
; unused
	jumpstd trashcan

ElmsLabBookshelf:
	jumpstd difficultbookshelf

ElmsLab_WalkUpToElmMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	turn_head_left
	step_end

MovementData_0x78f70:
	step_up
	step_end

MeetCopScript2_StepLeft:
	step_left
	step_end

MeetCopScript_WalkUp:
	step_up
	step_up
	turn_head_right
	step_end

OfficerLeavesMovement:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

AideWalksRight1:
	step_right
	step_right
	turn_head_up
	step_end

AideWalksRight2:
	step_right
	step_right
	step_right
	turn_head_up
	step_end

AideWalksLeft1:
	step_left
	step_left
	turn_head_down
	step_end

AideWalksLeft2:
	step_left
	step_left
	step_left
	turn_head_down
	step_end

ElmJumpUpMovement:
	fix_facing
	big_step_up
	remove_fixed_facing
	step_end

ElmJumpDownMovement:
	fix_facing
	big_step_down
	remove_fixed_facing
	step_end

ElmJumpLeftMovement:
	fix_facing
	big_step_left
	remove_fixed_facing
	step_end

ElmJumpRightMovement:
	fix_facing
	big_step_right
	remove_fixed_facing
	step_end

ElmsLab_ElmToDefaultPositionMovement1:
	step_up
	step_end

ElmsLab_ElmToDefaultPositionMovement2:
	step_right
	step_right
	step_up
	turn_head_down
	step_end

AfterCyndaquilMovement:
	step_left
	turn_head_up
	step_end

AfterTotodileMovement:
	step_left
	step_left
	turn_head_up
	step_end

AfterChikoritaMovement:
	step_left
	step_left
	step_left
	turn_head_up
	step_end

AfterCharmanderMovement:
	step_left
	step_up
	step_up
	step_up
	turn_head_up
	step_end

AfterSquirtleMovement:
	step_left
	step_left
	step_up
	step_up
	step_up
	turn_head_up
	step_end

AfterBulbasaurMovement:
	step_left
	step_left
	step_left
	step_up
	step_up
	step_up
	turn_head_up
	step_end

AfterTyrogueMovement:
	step_right
	step_right
	step_right
	step_right
	turn_head_up
	step_end

AfterEeveeMovement:
	step_right
	step_right
	step_right
	step_right
	step_up
	turn_head_up
	step_end

AfterPichuMovement:
	step_up
	step_right
	step_right
	step_right
	step_right
	step_up
	turn_head_up
	step_end

ElmText_Intro:
	text "ELM: <PLAY_G>!"
	line "There you are!"

	para "I needed to ask"
	line "you a favor."

	para "I'm conducting new"
	line "#MON research"

	para "right now. I was"
	line "wondering if you"

	para "could help me with"
	line "it, <PLAY_G>."

	para "You see…"

	para "I'm writing a"
	line "paper that I want"

	para "to present at a"
	line "conference."

	para "But there are some"
	line "things I don't"

	para "quite understand"
	line "yet."

	para "So!"

	para "I'd like you to"
	line "raise a #MON"

	para "that I recently"
	line "caught."
	done

ElmText_Accepted:
	text "Thanks, <PLAY_G>!"

	para "You're a great"
	line "help!"
	done

ElmText_Refused:
	text "But… Please, I"
	line "need your help!"
	done

ElmText_ResearchAmbitions:
	text "When I announce my"
	line "findings, I'm sure"

	para "we'll delve a bit"
	line "deeper into the"

	para "many mysteries of"
	line "#MON."

	para "You can count on"
	line "it!"
	done

ElmText_GotAnEmail:
	text "Oh, hey! I got an"
	line "e-mail!"

	para $56, $56, $56
	line "Hm… Uh-huh…"

	para "Okay…"
	done

ElmText_MissionFromMrPokemon:
	text "Hey, listen."

	para "I have an acquain-"
	line "tance called MR."
	cont "#MON."

	para "He keeps finding"
	line "weird things and"

	para "raving about his"
	line "discoveries."

	para "Anyway, I just got"
	line "an e-mail from him"

	para "saying that this"
	line "time it's real."

	para "It is intriguing,"
	line "but we're busy"

	para "with our #MON"
	line "research…"

	para "Wait!"

	para "I know!"

	para "<PLAY_G>, can you"
	line "go in our place?"
	done

ElmText_ChooseAPokemon:
	text "I want you to"
	line "raise one of the"

	para "#MON contained"
	line "in these BALLS."

	para "You'll be that"
	line "#MON's first"
	cont "partner, <PLAY_G>!"

	para "Go on. Pick one!"
	done

ElmText_LetYourMonBattleIt:
	text "If a wild #MON"
	line "appears, let your"
	cont "#MON battle it!"
	done

LabWhereGoingText:
	text "ELM: Wait! Where"
	line "are you going?"
	done

TakeCyndaquilText:
	text "ELM: You'll take"
	line "CYNDAQUIL, the"
	cont "fire #MON?"
	done

TakeTotodileText:
	text "ELM: Do you want"
	line "TOTODILE, the"
	cont "water #MON?"
	done

TakeChikoritaText:
	text "ELM: So, you like"
	line "CHIKORITA, the"
	cont "grass #MON?"
	done

TakeCharmanderText:
	text "ELM: You'll take"
	line "CHARMANDER, the"
	cont "fire #MON?"
	done

TakeSquirtleText:
	text "ELM: Do you want"
	line "SQUIRTLE, the"
	cont "water #MON?"
	done

TakeBulbasaurText:
	text "ELM: So, you like"
	line "BULBASAUR, the"
	cont "grass #MON?"
	done

TakeTyrogueText:
	text "ELM: You'll take"
	line "TYROGUE, the"
	cont "brawl #MON?"
	done

TakeEeveeText:
	text "ELM: Do you want"
	line "EEVEE, the "
	cont "change #MON?"
	done

TakePichuText:
	text "ELM: So, you want"
	line "PICHU? It's for"
	cont "expert TRAINERS!"
	done

DidntChooseStarterText:
	text "ELM: Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

ChoseStarterText:
	text "ELM: I think"
	line "that's a great"
	cont "#MON too!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done

ElmDirectionsText1:
	text "MR.#MON lives a"
	line "little bit beyond"

	para "CHERRYGROVE, the"
	line "next city over."

	para "It's almost a"
	line "direct route"

	para "there, so you"
	line "can't miss it."

	para "But just in case,"
	line "here's my phone"

	para "number. Call me if"
	line "anything comes up!"
	done

ElmDirectionsText2:
	text "If your #MON is"
	line "hurt, you should"

	para "heal it with this"
	line "machine."

	para "Feel free to use"
	line "it anytime."
	done

ElmDirectionsText3:
	text "<PLAY_G>, I'm"
	line "counting on you!"
	done

GotElmsNumberText:
	text "<PLAYER> got ELM's"
	line "phone number."
	done

ElmDescribesMrPokemonText:
	text "MR.#MON goes"
	line "everywhere and"
	cont "finds rarities."

	para "Too bad they're"
	line "just rare and"
	cont "not very useful…"
	done

ElmPokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.ELM."
	done

ElmsLabHealingMachineText1:
	text "I wonder what this"
	line "does?"
	done

ElmsLabHealingMachineText2:
	text "Would you like to"
	line "heal your #MON?"
	done

ElmAfterTheftText1:
	text "ELM: <PLAY_G>, this"
	line "is terrible…"

	para "Oh, yes, what was"
	line "MR.#MON's big"
	cont "discovery?"
	done

ElmAfterTheftText2:
	text "<PLAYER> handed"
	line "the MYSTERY EGG to"
	cont "PROF.ELM."
	done

ElmAfterTheftText3:
	text "ELM: This?"
	done

ElmAfterTheftText4:
	text "But… Is it a"
	line "#MON EGG?"

	para "If it is, it is a"
	line "great discovery!"
	done

ElmAfterTheftText5:
	text "ELM: What?!?"

	para "PROF.OAK gave you"
	line "a #DEX?"

	para "<PLAY_G>, is that"
	line "true? Th-that's"
	cont "incredible!"

	para "He is superb at"
	line "seeing the poten-"
	cont "tial of people as"
	cont "trainers."

	para "Wow, <PLAY_G>. You"
	line "may have what it"

	para "takes to become"
	line "the CHAMPION."

	para "You seem to be"
	line "getting on great"
	cont "with #MON too."

	para "You should take"
	line "the #MON GYM"
	cont "challenge."

	para "The closest GYM"
	line "would be the one"
	cont "in VIOLET CITY."
	done

ElmAfterTheftText6:
	text "…<PLAY_G>. The"
	line "road to the"

	para "championship will"
	line "be a long one."

	para "Before you leave,"
	line "make sure that you"
	cont "talk to your mom."
	done

ElmStudyingEggText:
	text "ELM: Don't give"
	line "up! I'll call if"

	para "I learn anything"
	line "about that EGG!"
	done

ElmAideHasEggText:
	text "ELM: <PLAY_G>?"
	line "Didn't you meet my"
	cont "assistant?"

	para "He should have met"
	line "you with the EGG"

	para "at VIOLET CITY's"
	line "#MON CENTER."

	para "You must have just"
	line "missed him. Try to"
	cont "catch him there."
	done

ElmWaitingEggHatchText:
	text "ELM: Hey, has that"
	line "EGG changed any?"
	done

UnknownText_0x79a40:
	text "<PLAY_G>? I thought"
	line "the EGG hatched."

	para "Where is the"
	line "#MON?"
	done

ShowElmTogepiText1:
	text "ELM: <PLAY_G>, you"
	line "look great!"
	done

ShowElmTogepiText2:
	text "What?"
	line "That #MON!?!"
	done

ShowElmTogepiText3:
	text "The EGG hatched!"
	line "So, #MON are"
	cont "born from EGGS…"

	para "No, perhaps not"
	line "all #MON are."

	para "Wow, there's still"
	line "a lot of research"
	cont "to be done."
	done

ElmGiveEverstoneText1:
	text "Thanks, <PLAY_G>!"
	line "You're helping"

	para "unravel #MON"
	line "mysteries for us!"

	para "I want you to have"
	line "this as a token of"
	cont "our appreciation."
	done

ElmGiveEverstoneText2:
	text "That's an"
	line "EVERSTONE."

	para "Some species of"
	line "#MON evolve"

	para "when they grow to"
	line "certain levels."

	para "A #MON holding"
	line "the EVERSTONE"
	cont "won't evolve."

	para "Give it to a #-"
	line "MON you don't want"
	cont "to evolve."
	done

ElmText_CallYou:
	text "ELM: <PLAY_G>, I'll"
	line "call you if any-"
	cont "thing comes up."
	done

AideText_AfterTheft:
	text "…sigh… That"
	line "stolen #MON."

	para "I wonder how it's"
	line "doing."

	para "They say a #MON"
	line "raised by a bad"

	para "person turns bad"
	line "itself."
	done

ElmGiveMasterBallText1:
	text "ELM: Hi, <PLAY_G>!"
	line "Thanks to you, my"

	para "research is going"
	line "great!"

	para "Take this as a"
	line "token of my"
	cont "appreciation."
	done

ElmGiveMasterBallText2:
	text "The MASTER BALL is"
	line "the best!"

	para "It's the ultimate"
	line "BALL! It'll catch"

	para "any #MON with-"
	line "out fail."

	para "It's given only to"
	line "recognized #MON"
	cont "researchers."

	para "I think you can"
	line "make much better"

	para "use of it than I"
	line "can, <PLAY_G>!"
	done

ElmGiveTicketText1:
	text "ELM: <PLAY_G>!"
	line "There you are!"

	para "I called because I"
	line "have something for"
	cont "you."

	para "See? It's an"
	line "S.S.TICKET."

	para "Now you can catch"
	line "#MON in KANTO."
	done

ElmGiveTicketText2:
	text "The ship departs"
	line "from OLIVINE CITY."

	para "But you knew that"
	line "already, <PLAY_G>."

	para "After all, you've"
	line "traveled all over"
	cont "with your #MON."

	para "Give my regards to"
	line "PROF.OAK in KANTO!"
	done

ElmsLabSignpostText_Egg:
	text "It's the #MON"
	line "EGG being studied"
	cont "by PROF.ELM."
	done

AideText_GiveYouPotions:
	text "<PLAY_G>, I want"
	line "you to have this"
	cont "for your errand."
	done

AideText_AlwaysBusy:
	text "There are only two"
	line "of us, so we're"
	cont "always busy."
	done

AideText_TheftTestimony:
	text "There was a loud"
	line "noise outside…"

	para "When we went to"
	line "look, someone"
	cont "stole a #MON."

	para "It's unbelievable"
	line "that anyone would"
	cont "do that!"

	para "…sigh… That"
	line "stolen #MON."

	para "I wonder how it's"
	line "doing."

	para "They say a #MON"
	line "raised by a bad"

	para "person turns bad"
	line "itself."
	done

AideText_GiveYouBalls:
	text "<PLAY_G>!"

	para "Use these on your"
	line "#DEX quest!"
	done

AideText_ExplainBalls:
	text "To add to your"
	line "#DEX, you have"
	cont "to catch #MON."

	para "Throw # BALLS"
	line "at wild #MON"
	cont "to get them."
	done

ElmsLabOfficerText1:
	text "I heard a #MON"
	line "was stolen here…"

	para "I was just getting"
	line "some information"
	cont "from PROF.ELM."

	para "Apparently, it was"
	line "a young male with"
	cont "long, red hair…"

	para "What?"

	para "You battled a"
	line "trainer like that?"

	para "Did you happen to"
	line "get his name?"
	done

ElmsLabOfficerText2:
	text "OK! So <RIVAL>"
	line "was his name."

	para "Thanks for helping"
	line "my investigation!"
	done

ElmsLabWindowText1:
	text "The window's open."

	para "A pleasant breeze"
	line "is blowing in."
	done

ElmsLabWindowText2:
	text "He broke in"
	line "through here!"
	done

ElmsLabTravelTip1Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 1:"

	para "Press START to"
	line "open the MENU."
	done

ElmsLabTravelTip2Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 2:"

	para "Record your trip"
	line "with SAVE!"
	done

ElmsLabTravelTip3Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 3:"

	para "Open your PACK and"
	line "press SELECT to"
	cont "move items."
	done

ElmsLabTravelTip4Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 4:"

	para "Check your #MON"
	line "moves. Press the"

	para "A Button to switch"
	line "moves."
	done

ElmsLabTrashcanText:
	text "The wrapper from"
	line "the snack PROF.ELM"
	cont "ate is in there…"
	done

ElmsLabPCText:
	text "OBSERVATIONS ON"
	line "#MON EVOLUTION"

	para "…It says on the"
	line "screen…"
	done

ElmsLab_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $b, $4, 1, NEW_BARK_TOWN
	warp_def $b, $5, 1, NEW_BARK_TOWN

.XYTriggers:
	db 8
	xy_trigger 1, $6, $4, $0, LabTryToLeaveScript, $0, $0
	xy_trigger 1, $6, $5, $0, LabTryToLeaveScript, $0, $0
	xy_trigger 3, $5, $4, $0, MeetCopScript, $0, $0
	xy_trigger 3, $5, $5, $0, MeetCopScript2, $0, $0
	xy_trigger 5, $8, $4, $0, AideScript_WalkPotions1, $0, $0
	xy_trigger 5, $8, $5, $0, AideScript_WalkPotions2, $0, $0
	xy_trigger 6, $8, $4, $0, AideScript_WalkBalls1, $0, $0
	xy_trigger 6, $8, $5, $0, AideScript_WalkBalls2, $0, $0

.Signposts:
	db 16
	signpost 1, 2, SIGNPOST_READ, ElmsLabHealingMachine
	signpost 1, 6, SIGNPOST_READ, ElmsLabBookshelf
	signpost 1, 7, SIGNPOST_READ, ElmsLabBookshelf
	signpost 1, 8, SIGNPOST_READ, ElmsLabBookshelf
	signpost 1, 9, SIGNPOST_READ, ElmsLabBookshelf
	signpost 7, 0, SIGNPOST_READ, ElmsLabTravelTip1
	signpost 7, 1, SIGNPOST_READ, ElmsLabTravelTip2
	signpost 7, 2, SIGNPOST_READ, ElmsLabTravelTip3
	signpost 7, 3, SIGNPOST_READ, ElmsLabTravelTip4
	signpost 7, 6, SIGNPOST_READ, ElmsLabBookshelf
	signpost 7, 7, SIGNPOST_READ, ElmsLabBookshelf
	signpost 7, 8, SIGNPOST_READ, ElmsLabBookshelf
	signpost 7, 9, SIGNPOST_READ, ElmsLabBookshelf
	signpost 3, 9, SIGNPOST_READ, ElmsLabTrashcan
	signpost 0, 5, SIGNPOST_READ, ElmsLabWindow
	signpost 5, 3, SIGNPOST_DOWN, ElmsLabPC

.PersonEvents:
	db 12
	person_event SPRITE_ELM, 2, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, 0, 0, ProfElmScript, -1
	person_event SPRITE_SCIENTIST, 9, 2, SPRITEMOVEDATA_03, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, 0, 0, ElmsAideScript, EVENT_ELMS_AIDE_IN_LAB
	person_event SPRITE_POKE_BALL, 2, 6, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 0, 0, CyndaquilPokeBallScript, EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	person_event SPRITE_POKE_BALL, 2, 7, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 0, 0, TotodilePokeBallScript, EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	person_event SPRITE_POKE_BALL, 2, 8, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 0, 0, ChikoritaPokeBallScript, EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
	person_event SPRITE_POKE_BALL, 4, 6, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 0, 0, CharmanderPokeBallScript, EVENT_CHARMANDER_POKEBALL_IN_ELMS_LAB
	person_event SPRITE_POKE_BALL, 4, 7, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 0, 0, SquirtlePokeBallScript, EVENT_SQUIRTLE_POKEBALL_IN_ELMS_LAB
	person_event SPRITE_POKE_BALL, 4, 8, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 0, 0, BulbasaurPokeBallScript, EVENT_BULBASAUR_POKEBALL_IN_ELMS_LAB
	person_event SPRITE_POKE_BALL, 3, 0, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 0, 0, TyroguePokeBallScript, EVENT_TYROGUE_POKEBALL_IN_ELMS_LAB
	person_event SPRITE_POKE_BALL, 4, 0, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 0, 0, EeveePokeBallScript, EVENT_EEVEE_POKEBALL_IN_ELMS_LAB
	person_event SPRITE_POKE_BALL, 5, 0, SPRITEMOVEDATA_01, 0, 0, -1, -1, 0, 0, 0, PichuPokeBallScript, EVENT_PICHU_POKEBALL_IN_ELMS_LAB
	person_event SPRITE_OFFICER, 3, 5, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, 0, 0, CopScript, EVENT_COP_IN_ELMS_LAB
