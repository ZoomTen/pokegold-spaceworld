INCLUDE "constants.asm"
INCLUDE "script97.asm"

SECTION "scripts/SilentHill.asm", ROMX

; Silent Hill NPC ID's
	const_def
	const SILENTHILL_OBJECT_SILVER
	const SILENTHILL_OBJECT_BLUE

SilentHill_ScriptLoader::
; run main script
	ld hl, SilentHillScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
; run BG events
	ld de, SilentHillBGEventRoutines
	call CallMapTextSubroutine
	ret

SilentHillScriptPointers:
; 0 -------> Story mode?
	dw SilentHill_Script00
	dw SilentHillNPCIDs_
; 1
	dw SilentHill_Script01
	dw SilentHillNPCIDs_
; 2
	dw SilentHill_Script00
	dw SilentHillNPCIDs_
; 3
	dw SilentHill_Script00
	dw SilentHillNPCIDs_
; 4
	dw SilentHill_Script00
	dw SilentHillNPCIDs_
; 5
	dw SilentHill_Script00
	dw SilentHillNPCIDs_

; 6 -----> Field debug
	dw SilentHill_Script00
	dw SilentHillNPCIDs_

; --------------------------------------------------------------------------- ;
; Set of NPC's to display

SilentHillNPCIDs_:
	db SILENTHILL_OBJECT_SILVER
	db SILENTHILL_OBJECT_BLUE
	db -1 ; terminator

; --------------------------------------------------------------------------- ;

SilentHill_Script00:
; player's x = 3?
	ld a, [wXCoord]
	cp 3
	ret nz
; do script
	dialog .Text1
	move_npc 2, .Move
	lock_screen_on 2
	set_scene 1
; done
	ret
.Move
	db JUMP_LEFT, JUMP_LEFT
	db JUMP_RIGHT, JUMP_RIGHT
	db $32

.Text1
	text "１２３"
	done

SilentHill_Script01:
; empty
	unlock_screen
	ret

; --------------------------------------------------------------------------- ;

SilentHillBGEventRoutines:: ; BG events
	dw SilentHill_TheOnlySign
	dw SilentHill_BlankRoutine

SilentHill_TheOnlySign:
	jump_dialog .Text
.Text:
	text "７７７７"
	done

SilentHill_BlankRoutine:
	ret

; --------------------------------------------------------------------------- ;

SilentHill_TextPointers:: ; Object events
	dw SilentHill_Test
	dw SilentHill_Test2

SilentHill_Test:
	dialog .Text
	ret
.Text
	text "８８８８"
	done

SilentHill_Test2:
	jump_dialog .Text
	ret
.Text
	text "９９９９"
	done
