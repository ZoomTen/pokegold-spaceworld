INCLUDE "constants.asm"

SECTION "scripts/PlayerHouse2F.asm", ROMX

PlayerHouse2F_ScriptLoader::
	ld hl, PlayerHouse2FScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

PlayerHouse2FScriptPointers:
	dw PlayerHouse2FScript1
	dw PlayerHouse2FNPCIDs1
	dw PlayerHouse2FScript2
	dw PlayerHouse2FNPCIDs2

PlayerHouse2F_TextPointers::
	dw PlayerHouse2FText1
	dw PlayerHouse2FDollText

PlayerHouse2FNPCIDs1:
	db 0
	db 1
	db $FF

PlayerHouse2FNPCIDs2:
	db 1
	db $FF

PlayerHouse2FSignPointers:
	dw Function3899
	dw PlayerHouse2FRadioText
	dw PlayerHouse2FComputerText
	dw Function3899
	dw PlayerHouse2FN64Text

PlayerHouse2FScript1:
	call PlayerHouse2PositionCheck
	ret z
	ld hl, PlayerHouse2FNPCIDs1
	ld de, PlayerHouse2FSignPointers
	call CallMapTextSubroutine
	ret nz
	ret

PlayerHouse2PositionCheck:
	ld hl, wd41a
	bit 0, [hl]
	ret nz
	ld a, [wYCoord]
	cp 1
	ret nz
	ld a, [wXCoord]
	cp 9
	ret nz
	ld hl, wJoypadFlags
	set 6, [hl]
	ld a, LEFT
	ld d, 0
	call SetObjectFacing
	ld hl, PlayerHouse2FTextString2
	call OpenTextbox
	call PlayerHouse2FMovePlayer
	call ClearAccumulator
	ret

PlayerHouse2FMovePlayer:
	ld a, 0
	ld hl, Movement
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, 1
	call WriteIntod637
	ret

Movement:
	db $08
	db $04
	db $32

PlayerHouse2FScript2:
	ld hl, PlayerHouse2FNPCIDs2
	ld de, PlayerHouse2FSignPointers
	call CallMapTextSubroutine
	ret

PlayerHouse2FText1:
	ld hl, wd41a
	bit 3, [hl]
	jr nz, .jump
	ld hl, PlayerHouse2FTextString1
	call OpenTextbox
	ld hl, wd41a
	set 3, [hl]
	ld c, 3
	call DelayFrames
.jump
	ld hl, PlayerHouse2FTextString2
	call OpenTextbox
	ret

PlayerHouse2FDollText:
	ld hl, PlayerHouse2FTextString3
	call OpenTextbox
	ret

PlayerHouse2FRadioText:
	ld hl, PlayerHouse2FTextString9
	call OpenTextbox
	ret

PlayerHouse2FComputerText:
	ld hl, wd41a
	bit 0, [hl]
	jr nz, .jump
	ld hl, PlayerHouse2FTextString5
	call OpenTextbox
	ret

.jump
	call RefreshScreen
	callab Function1477D
	call Function1fea
	ret

PlayerHouse2FCheckEmail:
	call YesNoBox
	jr c, .jump2
	ld hl, wd41a
	set 0, [hl]
	ld hl, PlayerHouse2FTextString6
	call PrintText
	ret

.jump2
	ld hl, PlayerHouse2FTextString7
	call PrintText
	ret

PlayerHouse2FN64Text:
	ld hl, PlayerHouse2FTextString4
	call OpenTextbox
	ret

PlayerHouse2FTextString1:
	text "KEN: Oh! That"
	line "shiny thing on"
	cont "your wrist…"

	para "You finally bought"
	line "a TRAINER GEAR!"

	para "Sweet! But since"
	line "it's new and all,"
	cont "you can't do much"
	cont "more than check"
	cont "the time, can you?"

	para "I'll enable the"
	line "map for ya later!"

	para "You're going out"
	line "anyway, right?"

	para "MOM's out shopping,"
	line "so if you were"
	cont "hoping to ask for"
	cont "some spending"
	cont "money, that's"
	cont "too bad!"
	done

PlayerHouse2FTextString2:
	text "Oh yeah, I saw you"
	line "got a new e-mail"
	cont "in your PC."

	para "At least check"
	line "that before you"
	cont "leave, huh?"
	done

PlayerHouse2FTextString3:
	text "It's a doll you got"
	line "as a Christmas"
	cont "present from a"
	cont "relative in KANTO."
	done

PlayerHouse2FTextString4:
	text "<PLAYER> is playing"
	line "the NINTENDO 64!"
	para "…Alright! Time to"
	line "get going!"
	done

PlayerHouse2FTextString5:
	text "<PLAYER> turned on"
	line "the PC."

	para "…What's this?"
	line "There seems to be a"
	cont "new e-mail."

	para "Read it?@"

	start_asm
	call PlayerHouse2FCheckEmail
	call Function3036
	ret

PlayerHouse2FTextString6:
	text "I hope you'll excuse"
	line "the sudden e-mail,"
	cont "but there's"
	cont "something that I"
	cont "would like to"
	cont "entrust you with."

	para "Won't you come by"
	line "and collect it?"

	para "#MON researcher"
	line "OAK"
	done

PlayerHouse2FTextString7:
	text "Maybe I'll read"
	line "this later."
	done

PlayerHouse2FTextString8: ; (unused?)
	text "Introducing: the"
	line "TRAINER GEAR! The"
	cont "cutting-edge watch"
	cont "for #MON"
	cont "trainers!"

	para "Of course you can"
	line "use it to tell the"
	cont "time, but, with a"
	cont "certain cartridge,"
	cont "you can even tell"
	cont "where you are on a"
	cont "map! You can also"
	cont "call people!"

	para "And that's not all!"
	line "It even lets you"
	cont "listen to the radio!"

	para "Order your TRAINER"
	line "GEAR today! Go to…"

	para "… … …"

	para "…It's SILPH CO.'s"
	line "home page."
	done

PlayerHouse2FTextString9:
	text "<PLAYER> turned on"
	line "the radio."

	para "… … …"

	para "You're listening"
	line "to JOPM, the"
	cont "#MON broadcast"
	cont "station!"

	para "Now, in #MON"
	line "news…"

	para "World-famous"
	line "#MON researcher"
	cont "PROF. OAK has"
	cont "disappeared from"
	cont "KANTO."

	para "Some say he may"
	line "have moved in"
	cont "search of a new"
	cont "place of study,"
	cont "however others"
	cont "fear he was"
	cont "involved in some"
	cont "kind of incident."

	para "Concerned parties"
	line "are very worried."

	para "… … And that"
	line "was #MON News."

	para "We now return you"
	line "to our regular"
	cont "program."
	done
