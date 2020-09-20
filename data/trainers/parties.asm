INCLUDE "constants.asm"

; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;	* for TRAINERTYPE_NORMAL:	 db level, species
;	* for TRAINERTYPE_ITEM:	   db level, species, item
;	* for TRAINERTYPE_MOVES:	  db level, species, 4 moves
;	* for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - db -1 ; end

SECTION "data/trainers/parties.asm@Trainer Parties", ROMX

INCLUDE "data/trainers/party_pointers.inc"

; TODO: decode all data

if DEF(GOLD)

HayatoGroup::
; Leftover Youngster data from Red/Blue
	db 11, MON_KORATTA, MON_ARBO, 0
	db 14, MON_ONISUZUME, 0
	db 10, MON_KORATTA, MON_KORATTA, MON_ZUBAT, 0
	db 14, MON_KORATTA, MON_ARBO, MON_ZUBAT, 0
	db 15, MON_KORATTA, MON_ONISUZUME, 0
	db 17, MON_YADON, 0
	db 14, MON_ARBO, MON_SAND, 0
	db 21, MON_NIDORAN_M, 0
	db 21, MON_ARBO, 0
	db 19, MON_SAND, MON_ZUBAT, 0
	db 17, MON_KORATTA, MON_KORATTA, MON_RATTA, 0
	db 18, MON_NIDORAN_M, MON_NIDORINO, 0
	db 17, MON_ONISUZUME, MON_KORATTA, MON_KORATTA, MON_ONISUZUME, 0

AkaneGroup::
BugCatcherBoyGroup::
	; BUG_CATCHER_BOY_JUNICHI
	db "じゅんいち@", TRAINERTYPE_ITEM_MOVES
	db  7, DEX_PARAS, ITEM_NONE, MOVE_STUN_SPORE, MOVE_LEECH_LIFE, MOVE_NONE, MOVE_NONE
	db -1 ; end

	; BUG_CATCHER_BOY_SOUSUKE
	db "そうすけ@", TRAINERTYPE_ITEM_MOVES
	db  9, DEX_REDIBA, ITEM_NONE, MOVE_SCRATCH, MOVE_QUICK_ATTACK, MOVE_NONE, MOVE_NONE
	db -1 ; end

; Leftover Bug Catcher data from Red/Blue
	db  6, MON_BEEDLE, MON_CATERPIE, 0
	db  7, MON_BEEDLE, MON_COCOON, MON_BEEDLE, 0
	db  9, MON_BEEDLE, 0
	db 10, MON_CATERPIE, MON_BEEDLE, MON_CATERPIE, 0
	db  9, MON_BEEDLE, MON_COCOON, MON_CATERPIE, MON_TRANSEL, 0
	db 11, MON_CATERPIE, MON_TRANSEL, 0
	db 11, MON_BEEDLE, MON_COCOON, 0
	db 10, MON_CATERPIE, MON_TRANSEL, MON_CATERPIE, 0
	db 14, MON_CATERPIE, MON_BEEDLE, 0
	db 16, MON_BEEDLE, MON_CATERPIE, MON_BEEDLE, 0
	db 20, MON_BUTTERFREE, 0
	db 18, MON_TRANSEL, MON_CATERPIE, MON_KONGPANG, 0
	db 19, MON_SPEAR, MON_SPEAR, 0
	db 20, MON_CATERPIE, MON_BEEDLE, MON_KONGPANG, 0

TsukishiGroup::
LassGroup::
	; LASS_ATSUKO
	db "あつこ@", TRAINERTYPE_ITEM_MOVES
	db  8, DEX_NAZONOKUSA, ITEM_NONE
	; No moves?
	db -1 ; end

; Leftover Lass data from Red/Blue
	db  9, MON_POPPO, MON_POPPO, 0
	db 10, MON_KORATTA, MON_NIDORAN_M, 0
	db 14, MON_PURIN, 0
	db 31, MON_PARAS, MON_PARAS, MON_PARASECT, 0
	db 11, MON_NAZONOKUSA, MON_MADATSUBOMI, 0
	db 14, MON_PIPPI, 0
	db 16, MON_POPPO, MON_NIDORAN_F, 0
	db 14, MON_POPPO, MON_NIDORAN_F, 0
	db 15, MON_NIDORAN_M, MON_NIDORAN_F, 0
	db 13, MON_NAZONOKUSA, MON_POPPO, MON_NAZONOKUSA, 0
	db 18, MON_POPPO, MON_NIDORAN_F, 0
	db 18, MON_KORATTA, MON_PIKACHU, 0
	db 23, MON_NIDORAN_F, MON_NIDORINA, 0
	db 24, MON_NYARTH, MON_NYARTH, MON_NYARTH, 0
	db 19, MON_POPPO, MON_KORATTA, MON_NIDORAN_M, MON_NYARTH, MON_PIKACHU, 0
	db 22, MON_PIPPI, MON_PIPPI, 0
	db 23, MON_MADATSUBOMI, MON_UTSUDON, 0
	db 23, MON_NAZONOKUSA, MON_KUSAIHANA, 0

EnokiGroup::
; Leftover Sailor data from Red/Blue
	db 18, MON_WANRIKY, MON_SHELLDER, 0
	db 17, MON_WANRIKY, MON_MENOKURAGE, 0
	db 21, MON_SHELLDER, 0
	db 17, MON_TATTU, MON_SHELLDER, MON_MENOKURAGE, 0
	db 18, MON_MENOKURAGE, MON_HITODEMAN, 0
	db 17, MON_TATTU, MON_TATTU, MON_TATTU, 0
	db 20, MON_WANRIKY, 0
	db 21, MON_PIKACHU, MON_PIKACHU, 0

OkeraGroup::
; Leftover Jr.Trainer♂ data from Red/Blue
	db 11, MON_DIGDA, MON_SAND, 0
	db 14, MON_KORATTA, MON_ARBO, 0
	db 18, MON_MANKEY, 0
	db 20, MON_ZENIGAME, 0
	db 16, MON_ONISUZUME, MON_RATTA, 0
	db 18, MON_DIGDA, MON_DIGDA, MON_SAND, 0
	db 21, MON_GARDIE, MON_HITOKAGE, 0
	db 19, MON_KORATTA, MON_DIGDA, MON_ARBO, MON_SAND, 0
	db 29, MON_NIDORAN_M, MON_NIDORINO, 0

MikanGroup::
; Leftover Jr.Trainer♀ data from Red/Blue
	db 19, MON_TOSAKINTO, 0
	db 16, MON_KORATTA, MON_PIKACHU, 0
	db 16, MON_POPPO, MON_POPPO, MON_POPPO, 0
	db 22, MON_FUSHIGIDANE, 0
	db 18, MON_NAZONOKUSA, MON_MADATSUBOMI, MON_NAZONOKUSA, MON_MADATSUBOMI, 0
	db 23, MON_NYARTH, 0
	db 20, MON_PIKACHU, MON_PIPPI, 0
	db 21, MON_POPPO, MON_PIGEON, 0
	db 21, MON_PURIN, MON_POPPO, MON_NYARTH, 0
	db 22, MON_NAZONOKUSA, MON_FUSHIGIDANE, 0
	db 24, MON_FUSHIGIDANE, MON_FUSHIGISOU, 0
	db 24, MON_POPPO, MON_NYARTH, MON_KORATTA, MON_PIKACHU, MON_NYARTH, 0
	db 30, MON_NYOROMO, MON_NYOROMO, 0
	db 27, MON_POPPO, MON_NYARTH, MON_POPPO, MON_PIGEON, 0
	db 28, MON_TOSAKINTO, MON_NYOROMO, MON_TATTU, 0
	db 31, MON_TOSAKINTO, MON_AZUMAO, 0
	db 22, MON_MADATSUBOMI, MON_PIPPI, 0
	db 20, MON_NYARTH, MON_NAZONOKUSA, MON_POPPO, 0
	db 19, MON_POPPO, MON_KORATTA, MON_KORATTA, MON_MADATSUBOMI, 0
	db 28, MON_KUSAIHANA, MON_NAZONOKUSA, MON_NAZONOKUSA, 0
	db 29, MON_PIKACHU, MON_RAICHU, 0
	db 33, MON_PIPPI, 0
	db 29, MON_MADATSUBOMI, MON_NAZONOKUSA, MON_MONJARA, 0
	db 30, MON_MENOKURAGE, MON_TATTU, MON_PAWOU, 0

BlueGroup::
; Leftover Pokémaniac data from Red/Blue
	db 30, MON_SIHORN, MON_BERORINGA, 0
	db 20, MON_KARAKARA, MON_YADON, 0
	db 20, MON_YADON, MON_YADON, MON_YADON, 0
	db 22, MON_HITOKAGE, MON_KARAKARA, 0
	db 25, MON_YADON, 0
	db 40, MON_LIZARDO, MON_LAPLACE, MON_BERORINGA, 0
	db 23, MON_KARAKARA, MON_YADON, 0

GamaGroup::
; Leftover Super Nerd data from Red/Blue
	db 11, MON_COIL, MON_BIRIRIDAMA, 0
	db 12, MON_BETBETER, MON_BIRIRIDAMA, MON_DOGARS, 0
	db 20, MON_BIRIRIDAMA, MON_DOGARS, MON_BIRIRIDAMA, MON_COIL, 0
	db 22, MON_BETBETER, MON_BETBETON, MON_BETBETER, 0
	db 26, MON_DOGARS, 0
	db 22, MON_DOGARS, MON_COIL, MON_MATADOGAS, 0
	db 20, MON_COIL, MON_COIL, MON_DOGARS, MON_COIL, 0
	db 24, MON_COIL, MON_BIRIRIDAMA, 0
	db 36, MON_ROKON, MON_ROKON, MON_KYUKON, 0
	db 34, MON_PONYTA, MON_HITOKAGE, MON_ROKON, MON_GARDIE, 0
	db 41, MON_GALLOP, 0
	db 37, MON_GARDIE, MON_ROKON, 0

RivalGroup::
	db  5, DEX_KURUSU, 0
	db  5, DEX_HAPPA, 0
	db  5, DEX_HONOGUMA, 0
; Leftover Hiker data from Red/Blue
	db 10, MON_ISITSUBUTE, MON_ISITSUBUTE, MON_IWARK, 0
	db 15, MON_WANRIKY, MON_ISITSUBUTE, 0
	db 13, MON_ISITSUBUTE, MON_ISITSUBUTE, MON_WANRIKY, MON_ISITSUBUTE, 0
	db 17, MON_IWARK, 0
	db 21, MON_ISITSUBUTE, MON_IWARK, 0
	db 20, MON_ISITSUBUTE, MON_WANRIKY, MON_ISITSUBUTE, 0
	db 21, MON_ISITSUBUTE, MON_IWARK, 0
	db 19, MON_IWARK, MON_GOLONE, 0
	db 21, MON_ISITSUBUTE, MON_ISITSUBUTE, MON_GOLONE, 0
	db 25, MON_ISITSUBUTE, 0
	db 20, MON_WANRIKY, MON_IWARK, 0
	db 19, MON_ISITSUBUTE, MON_WANRIKY, MON_ISITSUBUTE, MON_ISITSUBUTE, 0
	db 20, MON_IWARK, MON_IWARK, MON_ISITSUBUTE, 0
	db 21, MON_ISITSUBUTE, MON_GOLONE, 0

OkidoGroup::
; Leftover Biker data from Red/Blue
	db 28, MON_DOGARS, MON_DOGARS, MON_DOGARS, 0
	db 29, MON_DOGARS, MON_BETBETER, 0
	db 25, MON_DOGARS, MON_DOGARS, MON_MATADOGAS, MON_DOGARS, MON_BETBETER, 0
	db 28, MON_DOGARS, MON_BETBETER, MON_MATADOGAS, 0
	db 29, MON_BETBETER, MON_DOGARS, 0
	db 33, MON_MATADOGAS, 0
	db 26, MON_BETBETER, MON_BETBETER, MON_BETBETER, MON_BETBETER, 0
	db 28, MON_MATADOGAS, MON_DOGARS, MON_MATADOGAS, 0
	db 33, MON_BETBETON, 0
	db 29, MON_BIRIRIDAMA, MON_BIRIRIDAMA, 0
	db 29, MON_MATADOGAS, MON_BETBETON, 0
	db 25, MON_DOGARS, MON_MATADOGAS, MON_DOGARS, MON_DOGARS, MON_MATADOGAS, 0
	db 26, MON_DOGARS, MON_DOGARS, MON_BETBETER, MON_DOGARS, 0
	db 28, MON_BETBETER, MON_BETBETER, MON_DOGARS, 0
	db 29, MON_DOGARS, MON_BETBETON, 0

SakakiGroup::
; Leftover Burglar data from Red/Blue
	db 29, MON_GARDIE, MON_ROKON, 0
	db 33, MON_GARDIE, 0
	db 28, MON_ROKON, MON_HITOKAGE, MON_PONYTA, 0
	db 36, MON_GARDIE, MON_ROKON, MON_KYUKON, 0
	db 41, MON_PONYTA, 0
	db 37, MON_ROKON, MON_GARDIE, 0
	db 34, MON_HITOKAGE, MON_LIZARDO, 0
	db 38, MON_KYUKON, 0
	db 34, MON_GARDIE, MON_PONYTA, 0

ProtagonistGroup::
; Leftover Engineer data from Red/Blue
	db 21, MON_BIRIRIDAMA, MON_COIL, 0
	db 21, MON_COIL, 0
	db 18, MON_COIL, MON_COIL, MON_RARECOIL, 0

SibaGroup::
KasumiGroup::
FisherGroup::
	; FISHER_HISASHI
	db "ひさし@", TRAINERTYPE_ITEM_MOVES
	db  8, DEX_PUKU, ITEM_NONE
	; No moves?
	db -1 ; end
; Leftover Fisher data from Red/Blue
	db 17, MON_TOSAKINTO, MON_MENOKURAGE, MON_TOSAKINTO, 0
	db 17, MON_MENOKURAGE, MON_HITODEMAN, MON_SHELLDER, 0
	db 22, MON_TOSAKINTO, MON_NYOROMO, MON_TOSAKINTO, 0
	db 24, MON_MENOKURAGE, MON_TOSAKINTO, 0
	db 27, MON_TOSAKINTO, 0
	db 21, MON_NYOROMO, MON_SHELLDER, MON_TOSAKINTO, MON_TATTU, 0
	db 28, MON_AZUMAO, MON_TOSAKINTO, MON_AZUMAO, MON_AZUMAO, 0
	db 31, MON_SHELLDER, MON_PARSHEN, 0
	db 27, MON_KOIKING, MON_KOIKING, MON_KOIKING, MON_KOIKING, MON_KOIKING, MON_KOIKING, 0
	db 33, MON_AZUMAO, MON_TOSAKINTO, 0
	db 24, MON_KOIKING, MON_KOIKING, 0

KannaGroup::
; Leftover Swimmer data from Red/Blue
	db 16, MON_TATTU, MON_SHELLDER, 0
	db 30, MON_MENOKURAGE, MON_SHELLDER, 0
	db 29, MON_TOSAKINTO, MON_TATTU, MON_HITODEMAN, 0
	db 30, MON_NYOROMO, MON_NYOROZO, 0
	db 27, MON_TATTU, MON_MENOKURAGE, MON_MENOKURAGE, MON_TOSAKINTO, 0
	db 29, MON_TOSAKINTO, MON_SHELLDER, MON_AZUMAO, 0
	db 30, MON_TATTU, MON_TATTU, 0
	db 27, MON_MENOKURAGE, MON_MENOKURAGE, MON_HITODEMAN, MON_TATTU, MON_DOKUKURAGE, 0
	db 31, MON_SHELLDER, MON_PARSHEN, 0
	db 35, MON_HITODEMAN, 0
	db 28, MON_TATTU, MON_TATTU, MON_SEADRA, MON_TATTU, 0
	db 33, MON_SEADRA, MON_DOKUKURAGE, 0
	db 37, MON_STARMIE, 0
	db 33, MON_HITODEMAN, MON_KAMEIL, 0
	db 32, MON_NYOROZO, MON_MENOKURAGE, MON_SEADRA, 0

WataruGroup::
; Leftover Cue Ball data from Red/Blue
	db 28, MON_WANRIKY, MON_MANKEY, MON_WANRIKY, 0
	db 29, MON_MANKEY, MON_WANRIKY, 0
	db 33, MON_WANRIKY, 0
	db 29, MON_MANKEY, MON_OKORIZARU, 0
	db 29, MON_WANRIKY, MON_GORIKY, 0
	db 33, MON_GORIKY, 0
	db 26, MON_MANKEY, MON_MANKEY, MON_GORIKY, MON_WANRIKY, 0
	db 29, MON_OKORIZARU, MON_GORIKY, 0
	db 31, MON_MENOKURAGE, MON_MENOKURAGE, MON_DOKUKURAGE, 0

GerugeMemberMGroup::
; Leftover Gambler data from Red/Blue
	db 18, MON_NYOROMO, MON_TATTU, 0
	db 18, MON_MADATSUBOMI, MON_NAZONOKUSA, 0
	db 18, MON_BIRIRIDAMA, MON_COIL, 0
	db 18, MON_GARDIE, MON_ROKON, 0
	db 22, MON_NYOROMO, MON_NYOROMO, MON_NYOROZO, 0
	db 22, MON_IWARK, MON_ISITSUBUTE, MON_GOLONE, 0
	db 24, MON_GARDIE, MON_ROKON, 0

Trio1Group::
BeautyGroup::
	; BEAUTY_MEGUMI
	db "めぐみ@", TRAINERTYPE_ITEM_MOVES
	db 10, DEX_NYARTH, ITEM_NONE, MOVE_PAY_DAY, MOVE_GROWL, MOVE_NONE, MOVE_NONE
	db -1 ; end
; Leftover Beauty data from Red/Blue
	db 21, MON_NAZONOKUSA, MON_MADATSUBOMI, MON_NAZONOKUSA, MON_MADATSUBOMI, 0
	db 24, MON_MADATSUBOMI, MON_MADATSUBOMI, 0
	db 26, MON_TAMATAMA, 0
	db 27, MON_KORATTA, MON_PIKACHU, MON_KORATTA, 0
	db 29, MON_PIPPI, MON_NYARTH, 0
	db 35, MON_AZUMAO, 0
	db 30, MON_SHELLDER, MON_SHELLDER, MON_PARSHEN, 0
	db 31, MON_NYOROMO, MON_AZUMAO, 0
	db 29, MON_PIGEON, MON_PUKURIN, 0
	db 29, MON_FUSHIGIDANE, MON_FUSHIGISOU, 0
	db 33, MON_UTSUDON, MON_MADATSUBOMI, MON_UTSUDON, 0
	db 27, MON_NYOROMO, MON_TOSAKINTO, MON_AZUMAO, MON_TOSAKINTO, MON_NYOROMO, 0
	db 30, MON_TOSAKINTO, MON_AZUMAO, 0
	db 29, MON_HITODEMAN, MON_HITODEMAN, MON_HITODEMAN, 0
	db 30, MON_SEADRA, MON_TATTU, MON_SEADRA, 0

Trio2Group::
; Leftover Psychic data from Red/Blue
	db 31, MON_YUNGERER, MON_YADON, MON_BARRIERD, MON_YUNGERER, 0
	db 34, MON_BARRIERD, MON_YUNGERER, 0
	db 33, MON_YADON, MON_YADON, MON_YADORAN, 0
	db 38, MON_YADORAN, 0

Trio3Group::
; Leftover Rocker data from Red/Blue
	db 20, MON_BIRIRIDAMA, MON_COIL, MON_BIRIRIDAMA, 0
	db 29, MON_BIRIRIDAMA, MON_MARUMINE, 0

RocketFGroup::
; Leftover Juggler data from Red/Blue
	db 29, MON_YUNGERER, MON_BARRIERD, 0
	db 41, MON_SLEEPE, MON_SLEEPER, MON_YUNGERER, MON_YUNGERER, 0
	db 31, MON_SLEEPE, MON_SLEEPE, MON_YUNGERER, MON_SLEEPE, 0
	db 34, MON_SLEEPE, MON_SLEEPER, 0
	db 48, MON_BARRIERD, 0
	db 33, MON_SLEEPER, 0
	db 38, MON_SLEEPER, 0
	db 34, MON_SLEEPE, MON_YUNGERER, 0

YoungsterGroup::
; Leftover Tamer data from Red/Blue
	db 34, MON_SANDPAN, MON_ARBOK, 0
	db 33, MON_ARBOK, MON_SANDPAN, MON_ARBOK, 0
	db 43, MON_SIHORN, 0
	db 39, MON_ARBOK, MON_KENTAUROS, 0
	db 44, MON_PERSIAN, MON_GOLDUCK, 0
	db 42, MON_SIHORN, MON_OKORIZARU, MON_ARBOK, MON_KENTAUROS, 0
; Leftover Bird Keeper data from Red/Blue
	db 29, MON_POPPO, MON_PIGEON, 0
	db 25, MON_ONISUZUME, MON_POPPO, MON_POPPO, MON_ONISUZUME, MON_ONISUZUME, 0
	db 26, MON_POPPO, MON_PIGEON, MON_ONISUZUME, MON_ONIDRILL, 0
	db 33, MON_KAMONEGI, 0
	db 29, MON_ONISUZUME, MON_ONIDRILL, 0
	db 26, MON_PIGEON, MON_KAMONEGI, MON_DODO, MON_POPPO, 0
	db 28, MON_DODORIO, MON_DODO, MON_DODO, 0
	db 29, MON_ONISUZUME, MON_ONIDRILL, 0
	db 34, MON_DODORIO, 0
	db 26, MON_ONISUZUME, MON_ONISUZUME, MON_ONIDRILL, MON_ONISUZUME, 0
	db 30, MON_ONIDRILL, MON_ONIDRILL, MON_PIGEON, 0
	db 39, MON_PIGEON, MON_PIGEON, MON_POPPO, MON_PIGEON, 0
	db 42, MON_KAMONEGI, MON_ONIDRILL, 0
	db 28, MON_POPPO, MON_DODO, MON_PIGEON, 0
	db 26, MON_POPPO, MON_ONISUZUME, MON_POPPO, MON_ONIDRILL, 0
	db 29, MON_PIGEON, MON_ONIDRILL, 0
	db 28, MON_ONISUZUME, MON_DODO, MON_ONIDRILL, 0

FledglingGroup::
; Leftover Blackbelt data from Red/Blue
	db 37, MON_SAWAMULAR, MON_EBIWALAR, 0
	db 31, MON_MANKEY, MON_MANKEY, MON_OKORIZARU, 0
	db 32, MON_WANRIKY, MON_GORIKY, 0
	db 36, MON_OKORIZARU, 0
	db 31, MON_WANRIKY, MON_MANKEY, MON_OKORIZARU, 0
	db 40, MON_WANRIKY, MON_GORIKY, 0
	db 43, MON_GORIKY, 0
	db 38, MON_GORIKY, MON_WANRIKY, MON_GORIKY, 0
	db 43, MON_GORIKY, MON_WANRIKY, MON_GORIKY, 0
; Unused Green(?) data
	db 50, DEX_TEPPOUO, DEX_LIP, DEX_KIREIHANA, DEX_FUSHIGIDANE, DEX_HITOKAGE, DEX_ZENIGAME, 0
; Leftover Green data from Red/Blue
	db 5, MON_FUSHIGIDANE, 0
	db 5, MON_HITOKAGE, 0
	db -1, 9, MON_POPPO, 8, MON_ZENIGAME, 0
	db -1, 9, MON_POPPO, 8, MON_FUSHIGIDANE, 0
	db -1, 9, MON_POPPO, 8, MON_HITOKAGE, 0
	db -1, 18, MON_PIGEON, 15, MON_CASEY, 15, MON_KORATTA, 17, MON_ZENIGAME, 0
	db -1, 18, MON_PIGEON, 15, MON_CASEY, 15, MON_KORATTA, 17, MON_FUSHIGIDANE, 0
	db -1, 18, MON_PIGEON, 15, MON_CASEY, 15, MON_KORATTA, 17, MON_HITOKAGE, 0

ProdigyGroup::
; Leftover Prof.Oak data from Red/Blue
	db -1, 66, MON_KENTAUROS, 67, MON_NASSY, 68, MON_WINDIE, 69, MON_KAMEX, 70, MON_GYARADOS, 0
	db -1, 66, MON_KENTAUROS, 67, MON_NASSY, 68, MON_WINDIE, 69, MON_FUSHIGIBANA, 70, MON_GYARADOS, 0
	db -1, 66, MON_KENTAUROS, 67, MON_NASSY, 68, MON_WINDIE, 69, MON_LIZARDON, 70, MON_GYARADOS, 0

ProfessionalMGroup::
ProfessionalFGroup::
; Leftover Scientist data from Red/Blue
	db 34, MON_DOGARS, MON_BIRIRIDAMA, 0
	db 26, MON_BETBETER, MON_MATADOGAS, MON_DOGARS, MON_MATADOGAS, 0
	db 28, MON_COIL, MON_BIRIRIDAMA, MON_RARECOIL, 0
	db 29, MON_MARUMINE, MON_MATADOGAS, 0
	db 33, MON_MARUMINE, 0
	db 26, MON_RARECOIL, MON_DOGARS, MON_MATADOGAS, MON_COIL, 0
	db 25, MON_BIRIRIDAMA, MON_DOGARS, MON_RARECOIL, MON_COIL, MON_DOGARS, 0
	db 29, MON_MARUMINE, MON_BETBETON, 0
	db 29, MON_BETBETER, MON_MARUMINE, 0
	db 28, MON_BIRIRIDAMA, MON_DOGARS, MON_RARECOIL, 0
	db 29, MON_COIL, MON_DOGARS, 0
	db 33, MON_COIL, MON_RARECOIL, MON_BIRIRIDAMA, 0
	db 34, MON_COIL, MON_MARUMINE, 0
; Leftover Giovanni data from Red/Blue
	db -1, 25, MON_IWARK, 24, MON_SIHORN, 29, MON_GARURA, 0
	db -1, 37, MON_NIDORINO, 35, MON_GARURA, 37, MON_SIHORN, 41, MON_NIDOQUEEN, 0
	db -1, 45, MON_SIHORN, 42, MON_DUGTRIO, 44, MON_NIDOQUEEN, 45, MON_NIDOKING, 50, MON_SIDON, 0

PokeManiacGroup::
; Leftover Rocket data from Red/Blue
	db 13, MON_KORATTA, MON_ZUBAT, 0
	db 11, MON_SAND, MON_KORATTA, MON_ZUBAT, 0
	db 12, MON_ZUBAT, MON_ARBO, 0
	db 16, MON_RATTA, 0
	db 17, MON_WANRIKY, MON_SLEEPE, 0
	db 15, MON_ARBO, MON_ZUBAT, 0
	db 20, MON_RATTA, MON_ZUBAT, 0
	db 21, MON_SLEEPE, MON_WANRIKY, 0
	db 21, MON_RATTA, MON_RATTA, 0
	db 20, MON_BETBETER, MON_DOGARS, MON_DOGARS, 0
	db 19, MON_KORATTA, MON_RATTA, MON_RATTA, MON_KORATTA, 0
	db 22, MON_BETBETER, MON_DOGARS, 0
	db 17, MON_ZUBAT, MON_DOGARS, MON_BETBETER, MON_ZUBAT, MON_RATTA, 0
	db 20, MON_KORATTA, MON_RATTA, MON_SLEEPE, 0
	db 21, MON_WANRIKY, MON_WANRIKY, 0
	db 23, MON_SAND, MON_ARBO, MON_SANDPAN, 0
	db 23, MON_ARBO, MON_SAND, MON_ARBOK, 0
	db 21, MON_DOGARS, MON_ZUBAT, 0
	db 25, MON_ZUBAT, MON_ZUBAT, MON_GOLBAT, 0
	db 26, MON_DOGARS, MON_SLEEPE, 0
	db 23, MON_ZUBAT, MON_KORATTA, MON_RATTA, MON_ZUBAT, 0
	db 26, MON_SLEEPE, MON_DOGARS, 0
	db 29, MON_KARAKARA, MON_ZUBAT, 0
	db 25, MON_GOLBAT, MON_ZUBAT, MON_ZUBAT, MON_RATTA, MON_ZUBAT, 0
	db 28, MON_RATTA, MON_SLEEPER, MON_RATTA, 0
	db 29, MON_WANRIKY, MON_SLEEPE, 0
	db 28, MON_ARBO, MON_ZUBAT, MON_KARAKARA, 0
	db 33, MON_ARBOK, 0
	db 33, MON_SLEEPER, 0
	db 29, MON_WANRIKY, MON_GORIKY, 0
	db 28, MON_ZUBAT, MON_ZUBAT, MON_GOLBAT, 0
	db 26, MON_RATTA, MON_ARBOK, MON_DOGARS, MON_GOLBAT, 0
	db 29, MON_KARAKARA, MON_KARAKARA, 0
	db 29, MON_SAND, MON_SANDPAN, 0
	db 26, MON_RATTA, MON_ZUBAT, MON_GOLBAT, MON_KORATTA, 0
	db 28, MON_MATADOGAS, MON_GOLBAT, MON_DOGARS, 0
	db 28, MON_SLEEPE, MON_BETBETER, MON_WANRIKY, 0
	db 28, MON_GOLBAT, MON_SLEEPE, MON_SLEEPER, 0
	db 33, MON_GORIKY, 0
	db 25, MON_KORATTA, MON_KORATTA, MON_ZUBAT, MON_KORATTA, MON_ARBO, 0
	db 32, MON_KARAKARA, MON_SLEEPE, MON_GARAGARA, 0

RocketMGroup::
; Unused
	db 13, DEX_KOTORA, DEX_GONGU, DEX_KIREIHANA, 0
; Leftover Cooltrainer♂ data from Red/Blue
	db 39, MON_NIDORINO, MON_NIDOKING, 0
	db 43, MON_NASSY, MON_PARSHEN, MON_WINDIE, 0
	db 43, MON_KINGLER, MON_DOKUKURAGE, MON_KAMEX, 0
	db 45, MON_KINGLER, MON_STARMIE, 0
	db 42, MON_FUSHIGISOU, MON_KAMEIL, MON_LIZARDO, MON_LIZARDON, 0
	db 44, MON_FUSHIGISOU, MON_KAMEIL, MON_LIZARDO, 0
	db 49, MON_NIDOKING, 0
	db 44, MON_KINGLER, MON_PARSHEN, 0
	db 39, MON_SANDPAN, MON_DUGTRIO, 0
	db 43, MON_SIHORN, 0

GentlemanGroup::
; Leftover Cooltrainer♀ data from Red/Blue
	db 24, MON_UTSUDON, MON_KUSAIHANA, MON_FUSHIGISOU, 0
	db 43, MON_MADATSUBOMI, MON_UTSUDON, MON_UTSUBOT, 0
	db 43, MON_PARASECT, MON_JUGON, MON_LUCKY, 0
	db 46, MON_RUFFRESIA, MON_BUTTERFREE, 0
	db 44, MON_PERSIAN, MON_KYUKON, 0
	db 45, MON_FUSHIGISOU, MON_FUSHIGIBANA, 0
	db 45, MON_NIDORINA, MON_NIDOQUEEN, 0
	db 43, MON_PERSIAN, MON_KYUKON, MON_RAICHU, 0

TeacherMGroup::
; Leftover Bruno data from Red/Blue
	db -1, 53, MON_IWARK, 55, MON_EBIWALAR, 55, MON_SAWAMULAR, 56, MON_IWARK, 58, MON_KAIRIKY, 0

TeacherFGroup::
; Leftover Brock data from Red/Blue
	db -1, 12, MON_ISITSUBUTE, 14, MON_IWARK, 0

ManchildGroup::
; Leftover Misty data from Red/Blue
	db -1, 18, MON_HITODEMAN, 21, MON_STARMIE, 0

; Leftover Lt.Surge data from Red/Blue
	db -1, 21, MON_BIRIRIDAMA, 18, MON_PIKACHU, 24, MON_RAICHU, 0

; Leftover Erika data from Red/Blue
	db -1, 29, MON_UTSUBOT, 24, MON_MONJARA, 29, MON_RUFFRESIA, 0

SwimmerFGroup::
; Leftover Koga data from Red/Blue
	db -1, 37, MON_DOGARS, 39, MON_BETBETON, 37, MON_DOGARS, 43, MON_MATADOGAS, 0

SwimmerMGroup::
	db 10, DEX_BARIRINA, DEX_KIRINRIKI, DEX_PUCHICORN, 0

SailorGroup::
; Leftover Sabrina data from Red/Blue
	db -1, 38, MON_YUNGERER, 37, MON_BARRIERD, 38, MON_MORPHON, 43, MON_FOODIN, 0

SuperNerdGroup::
; Leftover Gentleman data from Red/Blue
	db 18, MON_GARDIE, MON_GARDIE, 0
	db 19, MON_NIDORAN_M, MON_NIDORAN_F, 0
	db 23, MON_PIKACHU, 0
	db 48, MON_OKORIZARU, 0
	db 17, MON_GARDIE, MON_PONYTA, 0

EngineerGroup::
; Leftover Green data from Red/Blue
	db -1, 19, MON_PIGEON, 16, MON_RATTA, 18, MON_YUNGERER, 20, MON_KAMEIL, 0
	db -1, 19, MON_PIGEON, 16, MON_RATTA, 18, MON_YUNGERER, 20, MON_FUSHIGISOU, 0
	db -1, 19, MON_PIGEON, 16, MON_RATTA, 18, MON_YUNGERER, 20, MON_LIZARDO, 0
	db -1, 25, MON_PIGEON, 23, MON_GARDIE, 22, MON_TAMATAMA, 20, MON_YUNGERER, 25, MON_KAMEIL, 0
	db -1, 25, MON_PIGEON, 23, MON_GYARADOS, 22, MON_GARDIE, 20, MON_YUNGERER, 25, MON_FUSHIGISOU, 0
	db -1, 25, MON_PIGEON, 23, MON_TAMATAMA, 22, MON_GYARADOS, 20, MON_YUNGERER, 25, MON_LIZARDO, 0
	db -1, 37, MON_PIGEOT, 38, MON_GARDIE, 35, MON_TAMATAMA, 35, MON_FOODIN, 40, MON_KAMEX, 0
	db -1, 37, MON_PIGEOT, 38, MON_GYARADOS, 35, MON_GARDIE, 35, MON_FOODIN, 40, MON_FUSHIGIBANA, 0
	db -1, 37, MON_PIGEOT, 38, MON_TAMATAMA, 35, MON_GYARADOS, 35, MON_FOODIN, 40, MON_LIZARDON, 0
	db -1, 47, MON_PIGEOT, 45, MON_SIHORN, 45, MON_GARDIE, 47, MON_TAMATAMA, 50, MON_FOODIN, 53, MON_KAMEX, 0
	db -1, 47, MON_PIGEOT, 45, MON_SIHORN, 45, MON_GYARADOS, 47, MON_GARDIE, 50, MON_FOODIN, 53, MON_FUSHIGIBANA, 0
	db -1, 47, MON_PIGEOT, 45, MON_SIHORN, 45, MON_TAMATAMA, 47, MON_GYARADOS, 50, MON_FOODIN, 53, MON_LIZARDON, 0

RockerGroup::
; Unused
	db 40, $C6, $C7, $C8, 0
; Leftover Green data from Red/Blue
	db -1, 61, MON_PIGEOT, 59, MON_FOODIN, 61, MON_SIDON, 61, MON_WINDIE, 63, MON_NASSY, 65, MON_KAMEX, 0
	db -1, 61, MON_PIGEOT, 59, MON_FOODIN, 61, MON_SIDON, 61, MON_GYARADOS, 63, MON_WINDIE, 65, MON_FUSHIGIBANA, 0
	db -1, 61, MON_PIGEOT, 59, MON_FOODIN, 61, MON_SIDON, 61, MON_NASSY, 63, MON_GYARADOS, 65, MON_LIZARDON, 0

HikerGroup::
; Leftover Lorelei data from Red/Blue
	db -1, 54, MON_JUGON, 53, MON_PARSHEN, 54, MON_YADORAN, 56, MON_ROUGELA, 56, MON_LAPLACE, 0

BikerGroup::
; Leftover Channeler data from Red/Blue
	db 22, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 23, MON_GHOS, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 23, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 24, MON_GHOST, 0
	db 22, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 23, MON_GHOS, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 22, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 23, MON_GHOST, 0
	db 24, MON_GHOS, 0
	db 22, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 22, MON_GHOST, 0
	db 22, MON_GHOS, MON_GHOS, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 34, MON_GHOS, MON_GHOST, 0
	db 38, MON_GHOST, 0
	db 33, MON_GHOS, MON_GHOS, MON_GHOST, 0

RockClimberGroup::
; Leftover Agatha data from Red/Blue
	db -1, 56, MON_GANGAR, 56, MON_GOLBAT, 55, MON_GHOST, 58, MON_ARBOK, 60, MON_GANGAR, 0

BurglarGroup::
; Leftover Lance data from Red/Blue
	db -1, 58, MON_GYARADOS, 56, MON_HAKURYU, 56, MON_HAKURYU, 60, MON_PTERA, 62, MON_KAIRYU, 0

JugglerGroup::
	db  6, DEX_MARIL, DEX_GYOPIN, 0

BlackbeltGroup::
	db  6, DEX_PY, DEX_GYOPIN, 0

PsychicGroup::
KungFuMasterGroup::
FortuneTellerGroup::
HooliganGroup::
SageGroup::
MediumGroup::
SoldierGroup::
GerugeMemberFGroup::
	db 12, DEX_SHIBIREFUGU, DEX_MADAME, 0

TwinsGroup::
	db 13, DEX_MADAME, DEX_ELEBABY, DEX_MIZUUO, 0

SchoolboyGroup::
	; SCHOOLBOY_TETSUYA
	db "てつや@", TRAINERTYPE_ITEM_MOVES
	db  9, DEX_YADOKING, ITEM_NONE, MOVE_DISABLE, MOVE_CONFUSION, MOVE_NONE, MOVE_NONE
	db -1 ; end

FirebreatherGroup::
	; FIREBREATHER_AKITO
	db "あきと@", TRAINERTYPE_ITEM_MOVES
	db 10, DEX_BOOBY, ITEM_NONE, MOVE_SCRATCH, MOVE_SMOG, MOVE_NONE, MOVE_NONE
	db -1 ; end

SportsmanGroup::
	; SPORTSMAN_SHIGEKI
	db "しげき@", TRAINERTYPE_ITEM
	db  8, DEX_DONPHAN, ITEM_NONE
	db -1 ; end

KimonoGirlGroup::
	; KIMONO_GIRL_TAMAO
	db "たまお@", TRAINERTYPE_ITEM_MOVES
	db 12, DEX_PURIN, ITEM_NONE, MOVE_CHARM, MOVE_ENCORE, MOVE_POUND, MOVE_NONE
	db -1 ; end

	; KIMONO_GIRL_KOUME
	db "こうめ@", TRAINERTYPE_ITEM_MOVES
	db 10, DEX_PIPPI, ITEM_NONE, MOVE_CHARM, MOVE_SWEET_KISS, MOVE_POUND, MOVE_NONE
	db -1 ; end

else

SECTION "data/trainers/parties.asm@Trainer Parties 1 TEMPORARY", ROMX
AkaneGroup::
BugCatcherBoyGroup::
	; BUG_CATCHER_BOY_KENJI
	db "けんじ@", TRAINERTYPE_ITEM_MOVES
	db  9, DEX_REDIBA, ITEM_NONE, MOVE_SCRATCH, MOVE_QUICK_ATTACK, MOVE_NONE, MOVE_NONE
	db -1 ; end

	; BUG_CATCHER_BOY_KEN
	db "けん@", TRAINERTYPE_ITEM_MOVES
	db  7, DEX_KONGPANG, ITEM_NONE, MOVE_STUN_SPORE, MOVE_LEECH_LIFE, MOVE_NONE, MOVE_NONE
	db -1 ; end

SECTION "data/trainers/parties.asm@Trainer Parties 2 TEMPORARY", ROMX
MikanGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 3 TEMPORARY", ROMX
OkidoGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 4 TEMPORARY", ROMX
WataruGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 5 TEMPORARY", ROMX
GerugeMemberMGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 6 TEMPORARY", ROMX
Trio1Group::
BeautyGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 7 TEMPORARY", ROMX
FledglingGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 8 TEMPORARY", ROMX
PokeManiacGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 9 TEMPORARY", ROMX
GentlemanGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 10 TEMPORARY", ROMX
TeacherMGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 11 TEMPORARY", ROMX
TeacherFGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 12 TEMPORARY", ROMX
ManchildGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 13 TEMPORARY", ROMX
RockerGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 14 TEMPORARY", ROMX
HikerGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 15 TEMPORARY", ROMX
KimonoGirlGroup::
	; KIMONO_GIRL_KOUME
	db "こうめ@", TRAINERTYPE_ITEM_MOVES
	db  9, DEX_DONPHAN, ITEM_NONE, MOVE_TACKLE, MOVE_DEFENSE_CURL, MOVE_NONE, MOVE_NONE
	db -1 ; end

	; KIMONO_GIRL_TAMAO
	db "たまお@", TRAINERTYPE_ITEM_MOVES
	db 10, DEX_PURIN, ITEM_NONE, MOVE_CHARM, MOVE_POUND, MOVE_ENCORE, MOVE_NONE
	db -1 ; end

SECTION "data/trainers/parties.asm@Trainer Parties 16 TEMPORARY", ROMX
HayatoGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 17 TEMPORARY", ROMX
TsukishiGroup::
LassGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 18 TEMPORARY", ROMX
EnokiGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 19 TEMPORARY", ROMX
OkeraGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 20 TEMPORARY", ROMX
GamaGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 21 TEMPORARY", ROMX
Trio2Group::

SECTION "data/trainers/parties.asm@Trainer Parties 22 TEMPORARY", ROMX
Trio3Group::

SECTION "data/trainers/parties.asm@Trainer Parties 23 TEMPORARY", ROMX
ProfessionalMGroup::
ProfessionalFGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 24 TEMPORARY", ROMX
SwimmerMGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 25 TEMPORARY", ROMX
SuperNerdGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 26 TEMPORARY", ROMX
EngineerGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 27 TEMPORARY", ROMX
JugglerGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 28 TEMPORARY", ROMX
TwinsGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 29 TEMPORARY", ROMX
SchoolboyGroup::
	; SCHOOLBOY_TETSUYA
	db "てつや@", TRAINERTYPE_ITEM
	db  8, DEX_YADOKING, ITEM_NONE
	db -1 ; end

SECTION "data/trainers/parties.asm@Trainer Parties 30 TEMPORARY", ROMX
FirebreatherGroup::
	; FIREBREATHER_AKITO
	db "あきと@", TRAINERTYPE_ITEM
	db  8, DEX_BOOBY, ITEM_NONE
	db -1 ; end

SECTION "data/trainers/parties.asm@Trainer Parties 31 TEMPORARY", ROMX
BlueGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 32 TEMPORARY", ROMX
RivalGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 33 TEMPORARY", ROMX
SakakiGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 34 TEMPORARY", ROMX
ProtagonistGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 35 TEMPORARY", ROMX
SibaGroup::
KasumiGroup::
FisherGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 36 TEMPORARY", ROMX
KannaGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 37 TEMPORARY", ROMX
RocketFGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 38 TEMPORARY", ROMX
YoungsterGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 39 TEMPORARY", ROMX
ProdigyGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 40 TEMPORARY", ROMX
RocketMGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 41 TEMPORARY", ROMX
SwimmerFGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 42 TEMPORARY", ROMX
SailorGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 43 TEMPORARY", ROMX
BikerGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 44 TEMPORARY", ROMX
RockClimberGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 45 TEMPORARY", ROMX
BurglarGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 46 TEMPORARY", ROMX
BlackbeltGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 47 TEMPORARY", ROMX
PsychicGroup::
KungFuMasterGroup::
FortuneTellerGroup::
HooliganGroup::
SageGroup::
MediumGroup::
SoldierGroup::
GerugeMemberFGroup::

SECTION "data/trainers/parties.asm@Trainer Parties 48 TEMPORARY", ROMX
SportsmanGroup::
	; SPORTSMAN_SHIGEKI
	db "てつじ@", TRAINERTYPE_ITEM_MOVES
	db  9, DEX_DONPHAN, ITEM_NONE, MOVE_TACKLE, MOVE_DEFENSE_CURL, MOVE_NONE, MOVE_NONE
	db -1 ; end

endc
