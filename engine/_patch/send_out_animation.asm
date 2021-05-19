INCLUDE "constants.asm"

SECTION "PATCH - Send out animation", ROMX[$5359], BANK[$0f]

SetSendOutAnimation:
; Fade in animation for everything
	ld a, 2
	jr z, $536f
