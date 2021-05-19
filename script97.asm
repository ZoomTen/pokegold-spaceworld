; check_location <X>, <Y>
; Check if the player is in some specific map location
check_location: macro
	ld a, [wYCoord]
	cp \2
	ret nz
	ld a, [wXCoord]
	cp \1
	ret nz
endm

lock_controls: macro
	ld hl, wJoypadFlags
	set 7, [hl]
endm

unlock_controls: macro
	ld hl, wJoypadFlags
	res 7, [hl]
endm

; move_npc <npc_id>, <movement data pointer>
;
; Refer to constants/movement_constants.asm.
;
; $32 = end movement
; $33 = end movement and disappear
;
; NPC ID 0 is the player
move_npc: macro
	ld a, \1
	ld hl, \2
	call LoadMovementDataPointer
endm

; lock_screen_on <npc_id>
;
; After assigning an NPC some movement data,
; this locks script advancement until the
; NPC stops moving.
;
; This command does not actually wait inside
; the script, but is defined at the end of a
; script to tell the game to wait first before
; loading the next script.
;
; As a consequence, unlock_screen *MUST* be the
; first thing in the next script, otherwise the
; game will soft lock!
lock_screen_on: macro
	assert \1 > 0, "Player object ($00) cannot be locked"

	ld a, \1
	call Function17f9
	ld hl, wc5ed
	set 7, [hl]
	ld a, 1
	call WriteIntod637
endm

unlock_screen: macro
	call Function1848
endm

; set_scene <script number>
set_scene: macro
	ld a, \1
	ld [wMapScriptNumber], a
endm

; dialog <textbox ptr>
dialog: macro
	ld hl, \1
	call OpenTextbox
endm

; jump_dialog <textbox ptr>
jump_dialog: macro
	ld hl, \1
	jp OpenTextbox
endm
