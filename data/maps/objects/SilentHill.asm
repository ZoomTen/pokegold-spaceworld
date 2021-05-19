INCLUDE "constants.asm"

SECTION "data/maps/objects/SilentHill.asm", ROMX

	map_attributes SilentHill, SILENT_HILL, NORTH | WEST | EAST
	connection north, PrinceRoute, PRINCE_ROUTE, 0
	connection west, Route1P1, ROUTE_1_P1, 0
	connection east, RouteSilentEast, ROUTE_SILENT_EAST, 0

SilentHill_MapEvents::
	dw $4000 ; unknown

	def_warp_events
	warp_event  5,  3, PLAYER_HOUSE_1F, 1, 51
	;warp_event 13,  4, SILENT_HILL_POKECENTER, 1, 55
	;warp_event  3, 12, SILENT_HILL_HOUSE, 1, 114
	;warp_event 14, 11, SILENT_HILL_LAB_FRONT, 1, 104
	;warp_event 15, 11, SILENT_HILL_LAB_FRONT, 2, 104

	; bg_events are used for signs??
	def_bg_events
	bg_event  6,  4, 1

	def_object_events
	object_event  6,  6, SPRITE_SILVER, $03, 6, 6, -1, -1, 0, 0, 0, 0, 0, 0
	object_event 13, 13, SPRITE_BLUE, SLOW_STEP_LEFT, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0

SilentHill_Blocks::
INCBIN "maps/SilentHill.blk"
