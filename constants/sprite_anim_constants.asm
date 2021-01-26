; sprite_anim_struct members (see macros/wram.asm)
	const_def
	const SPRITEANIMSTRUCT_INDEX           ; 0
	const SPRITEANIMSTRUCT_FRAMESET_ID     ; 1
	const SPRITEANIMSTRUCT_ANIM_SEQ_ID     ; 2
	const SPRITEANIMSTRUCT_TILE_ID         ; 3
	const SPRITEANIMSTRUCT_XCOORD          ; 4
	const SPRITEANIMSTRUCT_YCOORD          ; 5
	const SPRITEANIMSTRUCT_XOFFSET         ; 6
	const SPRITEANIMSTRUCT_YOFFSET         ; 7
	const SPRITEANIMSTRUCT_DURATION        ; 8
	const SPRITEANIMSTRUCT_DURATIONOFFSET  ; 9
	const SPRITEANIMSTRUCT_FRAME           ; a
	const SPRITEANIMSTRUCT_JUMPTABLE_INDEX ; b
	const SPRITEANIMSTRUCT_0C              ; c
	const SPRITEANIMSTRUCT_0D              ; d
	const SPRITEANIMSTRUCT_0E              ; e
	const SPRITEANIMSTRUCT_0F              ; f
SPRITEANIMSTRUCT_LENGTH EQU const_value
NUM_SPRITE_ANIM_STRUCTS EQU 10 ; see wSpriteAnimationStructs

; wSpriteAnimDict keys
SPRITE_ANIM_DICT_DEFAULT   EQU $00
SPRITE_ANIM_DICT_GS_SPLASH EQU $27
SPRITE_ANIM_DICT_29        EQU $29

; wSpriteAnimDict size (see ram/wram.asm)
NUM_SPRITEANIMDICT_ENTRIES EQU 10

; SpriteAnimSeqData indexes
SPRITE_ANIM_INDEX_08                            EQU $08

SPRITE_ANIM_INDEX_20                            EQU $20

SPRITE_ANIM_INDEX_GS_INTRO_BUBBLE               EQU $21
SPRITE_ANIM_INDEX_GS_INTRO_OMANYTE              EQU $22
SPRITE_ANIM_INDEX_GS_INTRO_MAGIKARP             EQU $23
SPRITE_ANIM_INDEX_UNUSED_INTRO_AERODACTYL       EQU $24
SPRITE_ANIM_INDEX_GS_INTRO_LAPRAS               EQU $25
SPRITE_ANIM_INDEX_GS_INTRO_NOTE                 EQU $26
SPRITE_ANIM_INDEX_GS_INTRO_SMALLER_NOTE         EQU $27
SPRITE_ANIM_INDEX_GS_INTRO_JIGGLYPUFF           EQU $28
SPRITE_ANIM_INDEX_28                            EQU $28
SPRITE_ANIM_INDEX_GS_INTRO_PIKACHU              EQU $29
SPRITE_ANIM_INDEX_GS_INTRO_PIKACHU_TAIL         EQU $2a
SPRITE_ANIM_INDEX_GS_INTRO_FIREBALL             EQU $2b
SPRITE_ANIM_INDEX_GS_INTRO_BLASTOISE            EQU $2c
SPRITE_ANIM_INDEX_GS_INTRO_VENUSAUR             EQU $2d

SPRITE_ANIM_INDEX_GS_TITLE_FLAME_NOTE           EQU $2e

SPRITE_ANIM_INDEX_MINIGAME_PIKACHU              EQU $2f
SPRITE_ANIM_INDEX_MINIGAME_PIKACHU_TAIL         EQU $30
SPRITE_ANIM_INDEX_MINIGAME_NOTE                 EQU $31
SPRITE_ANIM_INDEX_MINIGAME_JIGGLYPUFF           EQU $32

SPRITE_ANIM_INDEX_39                            EQU $39
SPRITE_ANIM_INDEX_GAMEFREAK_LOGO                EQU $3a
SPRITE_ANIM_INDEX_GS_INTRO_STAR                 EQU $3b
SPRITE_ANIM_INDEX_GS_INTRO_SPARKLE              EQU $3c
SPRITE_ANIM_INDEX_SLOTS_GOLEM                   EQU $3d
SPRITE_ANIM_INDEX_SLOTS_CHANSEY                 EQU $3e
SPRITE_ANIM_INDEX_SLOTS_EGG                     EQU $3f

SPRITE_ANIM_INDEX_40                            EQU $40
SPRITE_ANIM_INDEX_41                            EQU $41

SPRITE_ANIM_INDEX_TRAINERGEAR_POINTER           EQU $44
SPRITE_ANIM_INDEX_RADIO_TUNING_KNOB             EQU $4b
