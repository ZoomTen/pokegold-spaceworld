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
