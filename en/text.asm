INCLUDE "constants.asm"

SECTION "English text", ROMX

_OakSpeechDemo::
	text "Welcome to the"
	line "world of #MON!"
	cont "As you may know,"
	cont "I am PROF. OAK!"

	para "The reason I have"
	line "brought you here"
	cont "today… is that"
	cont "I need your help"
	cont "putting together"
	cont "a new #DEX!"

	para "Naturally, I have"
	line "prepared a #MON"
	cont "and a PACK."

	para "In the PACK, you"
	line "will find POTIONS"
	cont "and # BALLS, so"
	cont "there is no need"
	cont "for worry!"

	para "Your RIVAL has al-"
	line "ready gone ahead."

	para "Hang in there!"

	para "I will be counting"
	line "on you!"

	prompt

_OakSpeech1::
	text "Oh! Sorry for the"
	line "wait."

	para "Welcome to the"
	line "world of #MON!"

	para "My name is OAK!"

	para "People call me"
	line "the #MON PROF.!"
	prompt

_OakSpeech2::
	text "As you might"
	line "already know…"

	para "This world is"
	line "inhabited by"
	cont "creatures called"
	cont "#MON!"
	prompt

_OakSpeech3::
	text "For some people,"
	line "#MON are pets."

	para "Others use them"
	line "for fights."

	para "Myself…"

	para "I study #MON"
	line "as a profession."
	prompt

_OakSpeech4::
	text "First, what is"
	line "your name?"
	prompt

_OakSpeech5::
	text "Then there's this"
	line "boy. He's been"
	cont "your rival since"
	cont "you were a baby."

	para "…Erm, what is"
	line "his name again?"
	prompt

_OakSpeech6::
	text "While we're at it,"
	line "let's mark the"
	cont "start of your"
	cont "adventure by"
	cont "setting the day!"

	para "Be as exact as"
	line "possible when"
	cont "setting the time"
	cont "too, won't you?"
	prompt

_OakSpeech7::
	text "<PLAYER>!"

	para "Your very own"
	line "#MON legend is"
	cont "about to unfold!"

	para "A world of dreams"
	line "and adventures"
	cont "with #MON"
	cont "awaits! Let's go!"
	prompt

_DemoEndText::
	text "I'll try harder"
	line "next time!"
	done

_PlayerHouse2FTextString1::
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

_PlayerHouse2FTextString2::
	text "Oh yeah, I saw you"
	line "got a new e-mail"
	cont "in your PC."

	para "At least check"
	line "that before you"
	cont "leave, huh?"
	done

_PlayerHouse2FTextString3::
	text "It's a doll you got"
	line "as a Christmas"
	cont "present from a"
	cont "relative in KANTO."
	done

_PlayerHouse2FTextString4::
	text "<PLAYER> is playing"
	line "the NINTENDO 64!"
	para "…Alright! Time to"
	line "get going!"
	done

_PlayerHouse2FTextString6::
	text "I hope you'll"
	line "excuse the sudden"
	cont "e-mail, but there"
	cont "is something that"
	cont "I would like to"
	cont "entrust you with."

	para "Won't you come by"
	line "and collect it?"

	para "#MON researcher"
	line "OAK"
	done

_PlayerHouse2FTextString7::
	text "Maybe I'll read"
	line "it later."
	done

_PlayerHouse2FTextString8::
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

_PlayerHouse2FTextString9::
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

_PC_NotConnectedText:
	text "Looks like the"
	line "PC failed to"
	cont "connect…"
	prompt

_PC_ConnectedText:
	text "<PLAYER> booted"
	line "up the PC."

	para "Connected to the"
	line "network."
	prompt

_PC_NoMonsText:
	text "Beep!"

	para "You can't use the"
	line "PC if you have"
	cont "no #MON!"
	prompt

_PC_SkarmoryText:
	text "#MON JOURNAL"
	line "HOMEPAGE"

	para "… … …"
	para "A new #MON has"
	line "been discovered!"

	para "Dubbed SKARMORY,"
	line "this #MON"
	cont "has steel-hard"
	cont "wings."

	para "It has been"
	line "classified as the"
	cont "FLYING type, as"
	cont "well as the newly-"
	cont "formulated METAL"
	cont "type."

	para "Further research"
	line "is being conduc-"
	cont "ted."
	done

_PC_OaksPCText:
	text "Too many people"
	line "are trying to"
	cont "connect!"
	prompt

_PC_ClosedPCText:
	text "<PLAYER> stopped"
	line "connecting to the"
	cont "network."
	prompt

_PC_OpenMyPCText:
	text "Accessed my PC."

	para "Opened the Item"
	line "Storage System."
	prompt

_PC_ClosedMyPCText:
	text "<PLAYER> logged"
	line "off."
	prompt

_PC_HowManyWithdrawText:
	text "How many items to"
	line "withdraw?"
	done

_PC_NoRoomWithdrawText:
	text "No more room in"
	line "the PACK!"
	done

_PC_NoItemsText:
	text "There are no items"
	line "to deposit!"
	prompt

_PC_CantDepositText:
	text "You can't deposit"
	line "this item!"
	prompt

_PC_CantDepositBallPocketText:
	text "You can't deposit"
	line "the BALL POCKET!"
	prompt

_PC_HowManyDepositText:
	text "How many items to"
	line "deposit?"
	done

