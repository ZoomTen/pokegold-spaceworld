SoundTestTextPointers:
;            id?  bank? description
	dbbw $00,  $3A, SoundTest_PalletTownText
 	dbbw $00,  $3A, SoundTest_PokecenterText
 	dbbw $00,  $3A, SoundTest_PokegymText
 	dbbw $07,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $0C,  $3A, SoundTest_PokeEvolutionText
 	dbbw $08,  $3A, SoundTest_HealingText
 	dbbw $02,  $3A, SoundTest_QuestionMarkText
 	dbbw $03,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_HurryAlongText
 	dbbw $00,  $3A, SoundTest_MeetOakText
 	dbbw $00,  $3A, SoundTest_RivalText
 	dbbw $00,  $3A, SoundTest_SSAnneText
 	dbbw $66,  $3A, SoundTest_Fanfare3Text
 	dbbw $68,  $3A, SoundTest_Fanfare5Text
 	dbbw $69,  $3A, SoundTest_Fanfare6Text
 	dbbw $63,  $3A, SoundTest_FanfareText
 	dbbw $21,  $3A, SoundTest_FluteText
 	dbbw $04,  $3B, SoundTest_BattleText
 	dbbw $05,  $3B, SoundTest_BattleText
 	dbbw $00,  $3B, SoundTest_BattleText
 	dbbw $00,  $3B, SoundTest_ChampionBattleText
 	dbbw $0B,  $3B, SoundTest_VictoryText
 	dbbw $00,  $3B, SoundTest_VictoryText
 	dbbw $00,  $3B, SoundTest_VictoryText
 	dbbw $67,  $3B, SoundTest_Fanfare4Text
 	dbbw $68,  $3B, SoundTest_Fanfare5Text_2
 	dbbw $6B,  $3B, SoundTest_Fanfare8Text
 	dbbw $00,  $3C, SoundTest_TitleText
 	dbbw $00,  $3C, SoundTest_EndingText
 	dbbw $00,  $3C, SoundTest_HallOfFameText
 	dbbw $00,  $3C, SoundTest_OaksLabText
 	dbbw $00,  $3C, SoundTest_JigglypuffSongText
 	dbbw $09,  $3C, SoundTest_BikeText
 	dbbw $00,  $3C, SoundTest_SurfText
 	dbbw $00,  $3C, SoundTest_CasinoText
 	dbbw $00,  $3C, SoundTest_IntroBattleText
 	dbbw $00,  $3C, SoundTest_CaveText
 	dbbw $00,  $3C, SoundTest_CaveText
 	dbbw $00,  $3C, SoundTest_CaveText
 	dbbw $00,  $3C, SoundTest_CaveText
 	dbbw $00,  $3C, SoundTest_PokemonTowerText
 	dbbw $00,  $3C, SoundTest_PokemonTowerText
 	dbbw $0A,  $3C, SoundTest_DealerText
 	dbbw $00,  $3C, SoundTest_DealerText
 	dbbw $00,  $3C, SoundTest_DealerText
 	dbbw $66,  $3C, SoundTest_Fanfare3Text_2
 	dbbw $69,  $3C, SoundTest_Fanfare6Text_2
 	dbbw  -1,   -1, SoundTestTextPointers

SoundTest_PalletTownText:     db "PALLET@"
SoundTest_PokecenterText:     db "#CENT@"
SoundTest_PokegymText:        db "GYM@"
SoundTest_PokeEvolutionText:  db "EVOL@"
SoundTest_HealingText:        db "HEAL  @"
SoundTest_HurryAlongText:     db "AUTOWLK@"
SoundTest_MeetOakText:        db "PROF.OAK@"
SoundTest_RivalText:          db "BLUE@"
SoundTest_SSAnneText:         db "SS.ANNE @"
SoundTest_FluteText:          db "FL@"
SoundTest_BattleText:         db "BATT@"
SoundTest_ChampionBattleText: db "CHAMPBATT@"
SoundTest_VictoryText:        db "VC@"
SoundTest_FanfareText:        db "FANFARE@"
SoundTest_Fanfare3Text:       db "FANFARE３@"
SoundTest_Fanfare5Text:       db "FANFARE５@"
SoundTest_Fanfare6Text:       db "FANFARE６@"
SoundTest_Fanfare4Text:       db "FANFARE４@"
SoundTest_Fanfare5Text_2:     db "FANFARE５@"
SoundTest_Fanfare8Text:       db "FANFARE８@"
SoundTest_Fanfare3Text_2:     db "FANFARE３@"
SoundTest_Fanfare6Text_2:     db "FANFARE６@"
SoundTest_TitleText:          db "TITL@"
SoundTest_EndingText:         db "ENDING@"
SoundTest_HallOfFameText:     db "HoF   @"
SoundTest_OaksLabText:        db "OAKsLAB@"
SoundTest_JigglypuffSongText: db "JIGGLY@"
SoundTest_BikeText:           db "BIKE @"
SoundTest_SurfText:           db "C @"
SoundTest_CasinoText:         db "CAS@"
SoundTest_IntroBattleText:    db "INTRO   @"
SoundTest_CaveText:           db "CAVE@"
SoundTest_PokemonTowerText:   db "TW@"
SoundTest_DealerText:         db "DEAL @"
SoundTest_QuestionMarkText:   db "？@"
