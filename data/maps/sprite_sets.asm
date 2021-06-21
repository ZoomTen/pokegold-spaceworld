; Usable sprite IDs for outdoor map groups

; Sprites outside of whatever is defined in its map group will be rendered
; as the player sprite.

INCLUDE "constants.asm"

SECTION "data/maps/sprite_sets.asm", ROMX

MapGroupSpriteSets:
	db $01 ; MAPGROUP_SILENT
	db $02 ; MAPGROUP_OLD
	db $03 ; MAPGROUP_WEST
	db $04 ; MAPGROUP_HAITEKU
	db $05 ; MAPGROUP_FONTO
	db $06 ; MAPGROUP_BAADON
	db $07 ; MAPGROUP_NEWTYPE
	db $08 ; MAPGROUP_SUGAR
	db $0e ; MAPGROUP_BULL
	db $09 ; MAPGROUP_STAND
	db $0a ; MAPGROUP_KANTO
	db $0b ; MAPGROUP_PRINCE
	db $0d ; MAPGROUP_MT_FUJI
	db $0c ; MAPGROUP_SOUTH
	db $0e ; MAPGROUP_NORTH
	db $01 ; MAPGROUP_MISC
	db $01 ; MAPGROUP_EMPTY
	db $01
	db $01
	db $01
	db $01
	db $01
	db $01
	db $01
	db $01
	db $01
	db $01
	db $01

SpriteSets:
; Each sprite set is 10 entries long, instead of 11 entries like in Gen I / II.

; sprite set $01
	db SPRITE_BLUE
	db SPRITE_SILVER
	db SPRITE_OFFICER
	db SPRITE_TEACHER
	db SPRITE_SUPER_NERD
	db SPRITE_YOUNGSTER
	db SPRITE_FISHER
	db SPRITE_RHYDON
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

; sprite set $02
	db SPRITE_GRAMPS
	db SPRITE_TWIN
	db SPRITE_BUG_CATCHER_BOY
	db SPRITE_YOUNGSTER
	db SPRITE_TEACHER
	db SPRITE_SUPER_NERD
	db SPRITE_GRANNY
	db SPRITE_RHYDON
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

; sprite set $03
	db SPRITE_LASS
	db SPRITE_COOLTRAINER_F
	db SPRITE_ROCKER
	db SPRITE_SAILOR
	db SPRITE_GENTLEMAN
	db SPRITE_36
	db SPRITE_FISHER
	db SPRITE_CLEFAIRY
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

; sprite set $04
	db SPRITE_SILVER
	db SPRITE_TWIN
	db SPRITE_SAILOR
	db SPRITE_POKEFAN_M
	db SPRITE_SWIMMER_M
	db SPRITE_SWIMMER_F
	db SPRITE_FISHER
	db SPRITE_RHYDON
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

; sprite set $05
	db SPRITE_LASS
	db SPRITE_BUG_CATCHER_BOY
	db SPRITE_YOUNGSTER
	db SPRITE_SAILOR
	db SPRITE_GYM_GUY
	db SPRITE_SWIMMER_M
	db SPRITE_SWIMMER_F
	db SPRITE_RHYDON
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

; sprite set $06
	db SPRITE_36
	db SPRITE_LASS
	db SPRITE_YOUNGSTER
	db SPRITE_24
	db SPRITE_POKEFAN_M
	db SPRITE_ROCKET_F
	db SPRITE_FISHER
	db SPRITE_RHYDON
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

; sprite set $07
	db SPRITE_SILVER
	db SPRITE_YOUNGSTER
	db SPRITE_GIRL
	db SPRITE_ROCKER
	db SPRITE_POKEFAN_M
	db SPRITE_GENTLEMAN
	db SPRITE_FISHER
	db SPRITE_SAILOR
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

; sprite set $08
	db SPRITE_TWIN
	db SPRITE_BUG_CATCHER_BOY
	db SPRITE_GRAMPS
	db SPRITE_GRANNY
	db SPRITE_SWIMMER_M
	db SPRITE_SWIMMER_F
	db SPRITE_FISHER
	db SPRITE_RHYDON
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

; sprite set $09
	db SPRITE_SAKAKI
	db SPRITE_CAPTAIN
	db SPRITE_TWIN
	db SPRITE_TEACHER
	db SPRITE_ROCKER
	db SPRITE_RHYDON
	db SPRITE_CLEFAIRY
	db SPRITE_PIDGEY
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

; sprite set $0a
	db SPRITE_LASS
	db SPRITE_YOUNGSTER
	db SPRITE_COOLTRAINER_F
	db SPRITE_24
	db SPRITE_POKEFAN_M
	db SPRITE_GENTLEMAN
	db SPRITE_FISHER
	db SPRITE_RHYDON
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

; sprite set $0b
	db SPRITE_OKIDO
	db SPRITE_TWIN
	db SPRITE_BUG_CATCHER_BOY
	db SPRITE_SUPER_NERD
	db SPRITE_POKEFAN_F
	db SPRITE_GRAMPS
	db SPRITE_GRANNY
	db SPRITE_CLEFAIRY
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

; sprite set $0c
	db SPRITE_SILVER
	db SPRITE_TWIN
	db SPRITE_TEACHER
	db SPRITE_ROCKER
	db SPRITE_FISHING_GURU
	db SPRITE_SWIMMER_M
	db SPRITE_SWIMMER_F
	db SPRITE_FISHER
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

; sprite set $0d
	db SPRITE_YOUNGSTER
	db SPRITE_GIRL
	db SPRITE_24
	db SPRITE_SCIENTIST
	db SPRITE_CAPTAIN
	db SPRITE_46
	db SPRITE_FISHER
	db SPRITE_RHYDON
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

; sprite set $0e
	db SPRITE_SILVER
	db SPRITE_TWIN
	db SPRITE_YOUNGSTER
	db SPRITE_TEACHER
	db SPRITE_SUPER_NERD
	db SPRITE_LASS
	db SPRITE_SWIMMER_M
	db SPRITE_SWIMMER_F
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX

