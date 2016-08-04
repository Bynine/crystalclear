; swarms in grass

; Dunsparce swarm
	map DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 2, DUNSPARCE
	db 5, DUNSPARCE
	db 2, DUNSPARCE
	db 8, DUNSPARCE
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; day
	db 2, DUNSPARCE
	db 3, DUNSPARCE
	db 7, DUNSPARCE
	db 2, DUNSPARCE
	db 5, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; nite
	db 2, DUNSPARCE
	db 3, DUNSPARCE
	db 5, DUNSPARCE
	db 7, DUNSPARCE
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE

; Yanma swarm
	map ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 16, YANMA
	db 14, YANMA
	db 12, YANMA
	db 14, YANMA
	db 14, YANMA
	db 10, DITTO
	db 10, DITTO
	; day
	db 18, YANMA
	db 14, YANMA
	db 12, YANMA
	db 14, YANMA
	db 14, YANMA
	db 10, DITTO
	db 10, DITTO
	; nite
	db 17, YANMA
	db 14, YANMA
	db 12, YANMA
	db 14, YANMA
	db 14, YANMA
	db 10, DITTO
	db 10, DITTO

	db -1 ; end
