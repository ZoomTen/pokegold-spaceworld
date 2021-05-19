INCLUDE "constants.asm"

SECTION "PATCH - Player's backsprite", ROMX[$7317], BANK[$0f]

LoadBacksprite:
	ld de, CustomBackSprite
	ld a, BANK(CustomBackSprite)
	call UncompressSpriteFromDE
