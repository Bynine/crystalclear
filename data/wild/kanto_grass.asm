; Kanto Pokémon in grass

	map DIGLETTS_CAVE
	db 4 percent, 2 percent, 8 percent ; encounter rates: morn/day/nite
	; morn
	db 3, DIGLETT
	db 6, DIGLETT
	db 12, DIGLETT
	db 24, DIGLETT
	db 36, DUGTRIO
	db 48, DUGTRIO
	db 60, DUGTRIO
	; day
	db 2, DIGLETT
	db 4, DIGLETT
	db 8, DIGLETT
	db 16, DIGLETT
	db 24, DUGTRIO
	db 32, DUGTRIO
	db 40, DUGTRIO
	; nite
	db 3, DUGTRIO
	db 6, DUGTRIO
	db 12, DUGTRIO
	db 24, DUGTRIO
	db 36, DUGTRIO
	db 48, DIGLETT
	db 80, DIGLETT

	map MOUNT_MOON
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 6, ZUBAT
	db 8, GEODUDE
	db 60, SANDSLASH
	db 12, PARAS
	db 10, GEODUDE
	db 8, CLEFAIRY
	db 8, CLEFAIRY
	; day
	db 6, ZUBAT
	db 8, GEODUDE
	db 8, SANDSHREW
	db 60, PARASECT
	db 10, GEODUDE
	db 8, CLEFAIRY
	db 8, CLEFAIRY
	; nite
	db 6, ZUBAT
	db 8, GEODUDE
	db 8, CLEFAIRY
	db 12, PARAS
	db 10, GEODUDE
	db 12, CLEFAIRY
	db 60, CLEFABLE

	map ROCK_TUNNEL_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 10, CUBONE
	db 11, GEODUDE
	db 12, MACHOP
	db 12, ZUBAT
	db 15, MACHOKE
	db 12, MAROWAK
	db 60, MACHAMP
	; day
	db 10, CUBONE
	db 11, GEODUDE
	db 12, MACHOP
	db 12, ZUBAT
	db 15, MACHOKE
	db 12, MAROWAK
	db 60, MAROWAK
	; nite
	db 12, ZUBAT
	db 11, GEODUDE
	db 12, GEODUDE
	db 17, HAUNTER
	db 15, ZUBAT
	db 15, ZUBAT
	db 60, CROBAT

	map ROCK_TUNNEL_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 12, CUBONE
	db 14, GEODUDE
	db 60, ONIX
	db 12, ZUBAT
	db 15, MAROWAK
	db 15, KANGASKHAN
	db 15, KANGASKHAN
	; day
	db 12, CUBONE
	db 14, GEODUDE
	db 15, ONIX
	db 12, ZUBAT
	db 15, MAROWAK
	db 15, KANGASKHAN
	db 60, KANGASKHAN
	; nite
	db 12, ZUBAT
	db 14, GEODUDE
	db 15, GOLBAT
	db 15, ZUBAT
	db 15, HAUNTER
	db 60, GENGAR
	db 15, CROBAT

	map VICTORY_ROAD
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 34, GRAVELER
	db 32, RHYHORN
	db 33, ONIX
	db 34, MAGMAR
	db 35, SANDSLASH
	db 35, RHYDON
	db 50, GOLEM
	; day
	db 34, GRAVELER
	db 32, RHYHORN
	db 33, MAGCARGO
	db 34, GOLBAT
	db 35, SANDSLASH
	db 35, MAGMAR
	db 50, RHYDON
	; nite
	db 34, GRAVELER
	db 32, ONIX
	db 34, GOLBAT
	db 33, MAGCARGO
	db 35, SANDSLASH
	db 35, GOLEM
	db 50, STEELIX

	map TOHJO_FALLS
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 32, GOLBAT
	db 32, DEWGONG
	db 34, GOLBAT
	db 25, SLOWPOKE
	db 30, RATICATE
	db 33, IGGLYBUFF
	db 34, SLOWBRO
	; day
	db 32, GOLBAT
	db 32, DEWGONG
	db 34, GOLBAT
	db 25, SLOWPOKE
	db 30, RATICATE
	db 33, IGGLYBUFF
	db 34, SLOWBRO
	; nite
	db 32, GOLBAT
	db 32, DEWGONG
	db 34, GOLBAT
	db 25, SLOWPOKE
	db 30, RATICATE
	db 33, IGGLYBUFF
	db 40, SLOWBRO

	map ROUTE_1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 2, PIDGEY
	db 2, RATTATA
	db 3, SENTRET
	db 3, PIDGEY
	db 6, FURRET
	db 70,FURRET
	db 4, PIDGEY
	; day
	db 2, PIDGEY
	db 2, RATTATA
	db 3, SENTRET
	db 3, PIDGEY
	db 6, FURRET
	db 70,PIDGEOT
	db 4, PIDGEY
	; nite
	db 2, HOOTHOOT
	db 2, RATTATA
	db 3, RATTATA
	db 3, HOOTHOOT
	db 6, RATICATE
	db 70,NOCTOWL
	db 4, HOOTHOOT

	map ROUTE_2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 3, CATERPIE
	db 3, LEDYBA
	db 5, PIDGEY
	db 7, BUTTERFREE
	db 7, LEDIAN
	db 60,PINSIR
	db 4, PICHU
	; day
	db 3, CATERPIE
	db 3, PIDGEY
	db 5, PIDGEY
	db 7, BUTTERFREE
	db 7, PIDGEOTTO
	db 60,SCYTHER
	db 4, PIKACHU
	; nite
	db 7, METAPOD
	db 7, METAPOD
	db 3, CATERPIE
	db 7, KAKUNA
	db 7, ARIADOS
	db 60,ARIADOS
	db 4, NOCTOWL

	map ROUTE_3
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 5,  SPEAROW
	db 20, OMANYTE
	db 27, OMANYTE
	db 10, RATICATE
	db 10, ARBOK
	db 10, SANDSHREW
	db 55, OMASTAR
	; day
	db 5,  SPEAROW
	db 20, OMANYTE
	db 27, KABUTO
	db 10, RATICATE
	db 10, ARBOK
	db 45, AERODACTYL
	db 65, AERODACTYL
	; nite
	db 20, KABUTO
	db 27, KABUTO
	db 10, RATICATE
	db 6, ZUBAT
	db 5, RATTATA
	db 6, CLEFAIRY
	db 55, KABUTOPS

	map ROUTE_4
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 5, SPEAROW
	db 5, RATTATA
	db 8, EKANS
	db 10, RATICATE
	db 10, ARBOK
	db 60, SANDSLASH
	db 10, SANDSHREW
	; day
	db 5, SPEAROW
	db 5, RATTATA
	db 8, EKANS
	db 10, RATICATE
	db 60, ARBOK
	db 10, SANDSHREW
	db 10, SANDSHREW
	; nite
	db 5, RATTATA
	db 10, RATTATA
	db 10, RATICATE
	db 6, ZUBAT
	db 50, CLEFABLE
	db 60, FEAROW
	db 6, CLEFAIRY

	map ROUTE_5
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 13, PIDGEY
	db 13, SNUBBULL
	db 15, PIDGEOTTO
	db 14, ABRA
	db 14, JIGGLYPUFF
	db 60, PRIMEAPE
	db 14, ABRA
	; day
	db 13, PIDGEY
	db 13, SNUBBULL
	db 15, PIDGEOTTO
	db 12, ABRA
	db 14, JIGGLYPUFF
	db 60, GRANBULL
	db 14, ABRA
	; nite
	db 13, HOOTHOOT
	db 13, MEOWTH
	db 15, NOCTOWL
	db 12, ABRA
	db 60, WIGGLYTUFF
	db 14, ABRA
	db 14, ABRA

	map ROUTE_6
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 13, RATTATA
	db 13, SNUBBULL
	db 14, MAGNEMITE
	db 15, RATICATE
	db 12, JIGGLYPUFF
	db 60, TANGELA
	db 15, GRANBULL
	; day
	db 13, RATTATA
	db 13, SNUBBULL
	db 14, MAGNEMITE
	db 15, RATICATE
	db 12, JIGGLYPUFF
	db 60, LICKITUNG
	db 15, GRANBULL
	; nite
	db 13, MEOWTH
	db 13, DROWZEE
	db 14, MAGNEMITE
	db 15, PSYDUCK
	db 12, JIGGLYPUFF
	db 60, GOLDUCK
	db 15, RATICATE

	map ROUTE_7
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 17, RATTATA
	db 17, SPEAROW
	db 18, SNUBBULL
	db 18, RATICATE
	db 18, JIGGLYPUFF
	db 60, URSARING
	db 16, ABRA
	; day
	db 17, RATTATA
	db 17, SPEAROW
	db 18, SNUBBULL
	db 68, RATICATE
	db 18, JIGGLYPUFF
	db 16, ABRA
	db 16, ABRA
	; nite
	db 17, MEOWTH
	db 17, MURKROW
	db 18, HOUNDOUR
	db 18, PERSIAN
	db 18, JIGGLYPUFF
	db 66, HOUNDOOM
	db 16, ABRA

	map ROUTE_8
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 17, SNUBBULL
	db 19, PIDGEOTTO
	db 16, ABRA
	db 17, GROWLITHE
	db 16, JIGGLYPUFF
	db 68, GRANBULL
	db 18, KADABRA
	; day
	db 17, SNUBBULL
	db 19, PIDGEOTTO
	db 16, ABRA
	db 17, GROWLITHE
	db 66, GROWLITHE
	db 18, KADABRA
	db 18, KADABRA
	; nite
	db 17, MEOWTH
	db 20, NOCTOWL
	db 16, ABRA
	db 17, HAUNTER
	db 16, JIGGLYPUFF
	db 18, KADABRA
	db 60, ALAKAZAM

	map ROUTE_9
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 15, RATTATA
	db 15, SPEAROW
	db 15, RATICATE
	db 15, FEAROW
	db 15, FEAROW
	db 68, MAROWAK
	db 18, MAROWAK
	; day
	db 15, RATTATA
	db 15, SPEAROW
	db 65, RATICATE
	db 15, FEAROW
	db 15, FEAROW
	db 18, MAROWAK
	db 18, MAROWAK
	; nite
	db 15, RATTATA
	db 15, VENONAT
	db 15, RATICATE
	db 65, VENOMOTH
	db 15, ZUBAT
	db 18, RATICATE
	db 18, RATICATE

	map ROUTE_10_NORTH
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 15, SPEAROW
	db 17, VOLTORB
	db 15, RATICATE
	db 15, FEAROW
	db 15, MAROWAK
	db 66, ELECTABUZZ
	db 16, ELEKID
	; day
	db 15, SPEAROW
	db 17, VOLTORB
	db 15, RATICATE
	db 15, FEAROW
	db 15, MAROWAK
	db 68, ELECTRODE
	db 18, ELECTABUZZ
	; nite
	db 15, VENONAT
	db 17, VOLTORB
	db 15, RATICATE
	db 15, VENOMOTH
	db 15, ZUBAT
	db 16, ELECTABUZZ
	db 66, RAICHU

	map ROUTE_11
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 14, HOPPIP
	db 13, RATICATE
	db 15, MAGNEMITE
	db 16, PIDGEOTTO
	db 16, RATTATA
	db 66, MAGNETON
	db 16, HOPPIP
	; day
	db 14, HOPPIP
	db 13, RATICATE
	db 15, MAGNEMITE
	db 16, PIDGEOTTO
	db 16, RATTATA
	db 66, JUMPLUFF
	db 16, HOPPIP
	; nite
	db 14, DROWZEE
	db 13, MEOWTH
	db 15, MAGNEMITE
	db 16, NOCTOWL
	db 16, RATICATE
	db 66, HYPNO
	db 16, HYPNO

	map ROUTE_13
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 56, NIDORINO
	db 36, NIDORINA
	db 38, PIDGEOT
	db 25, HOPPIP
	db 27, SKIPLOOM
	db 27, FLAAFFY
	db 60, BLISSEY
	; day
	db 36, NIDORINO
	db 56, NIDORINA
	db 38, PIDGEOT
	db 25, HOPPIP
	db 27, SKIPLOOM
	db 27, FLAAFFY
	db 35, CHANSEY
	; nite
	db 23, VENONAT
	db 33, QUAGSIRE
	db 35, NOCTOWL
	db 65, VENOMOTH
	db 35, QUAGSIRE
	db 35, QUAGSIRE
	db 35, CHANSEY

	map ROUTE_14
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 36, TAUROS
	db 36, MILTANK
	db 38, SKARMORY
	db 25, MAREEP
	db 37, FLAAFFY
	db 35, AZUMARILL
	db 60, BLISSEY
	; day
	db 36, TAUROS
	db 36, MILTANK
	db 38, SKARMORY
	db 25, MAREEP
	db 37, FLAAFFY
	db 65, AZUMARILL
	db 35, CHANSEY
	; nite
	db 23, VENONAT
	db 63, QUAGSIRE
	db 35, NOCTOWL
	db 35, VENOMOTH
	db 35, QUAGSIRE
	db 35, QUAGSIRE
	db 35, CHANSEY

	map ROUTE_15
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 36, BUTTERFREE
	db 36, BEEDRILL
	db 38, DODRIO
	db 25, MARILL
	db 37, AZUMARILL
	db 35, AMPHAROS
	db 60, BLISSEY
	; day
	db 36, BUTTERFREE
	db 36, BEEDRILL
	db 38, DODRIO
	db 25, MARILL
	db 37, AZUMARILL
	db 60, AMPHAROS
	db 35, BLISSEY
	; nite
	db 23, VENONAT
	db 53, QUAGSIRE
	db 55, NOCTOWL
	db 55, VENOMOTH
	db 55, QUAGSIRE
	db 55, QUAGSIRE
	db 35, CHANSEY

	map ROUTE_16
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, GRIMER
	db 27, FEAROW
	db 28, GRIMER
	db 69, MAGCARGO
	db 29, FEAROW
	db 30, MUK
	db 40, MUK
	; day
	db 36, GRIMER
	db 47, FEAROW
	db 38, GRIMER
	db 49, FEAROW
	db 39, SLUGMA
	db 30, MUK
	db 60, MUK
	; nite
	db 26, GRIMER
	db 27, GRIMER
	db 28, GRIMER
	db 29, MURKROW
	db 69, MURKROW
	db 30, MUK
	db 30, MUK

	map ROUTE_17
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, GRIMER
	db 27, FEAROW
	db 28, GRIMER
	db 29, MAGCARGO
	db 69, FEAROW
	db 30, MUK
	db 40, MUK
	; day
	db 36, GRIMER
	db 47, FEAROW
	db 38, GRIMER
	db 49, FEAROW
	db 39, SLUGMA
	db 40, MUK
	db 60, MUK
	; nite
	db 46, GRIMER
	db 37, GRIMER
	db 28, GRIMER
	db 29, KOFFING
	db 59, WEEZING
	db 40, MUK
	db 50, MUK

	map ROUTE_18 ; todo
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 26, GRIMER
	db 27, FEAROW
	db 28, GRIMER
	db 18, SPEAROW
	db 29, MURKROW
	db 60, FEAROW
	db 65, MUK
	; day
	db 26, GRIMER
	db 27, FEAROW
	db 28, GRIMER
	db 29, FEAROW
	db 29, SLUGMA
	db 60, MUK
	db 56, WEEZING
	; nite
	db 26, GRIMER
	db 27, GRIMER
	db 28, GRIMER
	db 29, GRIMER
	db 29, GRIMER
	db 30, MUK
	db 60, PUPITAR

	map ROUTE_21
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 30, TANGELA
	db 25, KADABRA
	db 35, TANGELA
	db 20, RATICATE
	db 30, MR__MIME
	db 68, SHUCKLE
	db 28, MR__MIME
	; day
	db 30, TANGELA
	db 25, KADABRA
	db 35, TANGELA
	db 20, RATICATE
	db 28, MR__MIME
	db 28, SHUCKLE
	db 60, MR__MIME
	; nite
	db 30, TANGELA
	db 25, KADABRA
	db 65, TANGELA
	db 20, RATICATE
	db 30, TANGELA
	db 28, SHUCKLE
	db 28, TANGELA

	map ROUTE_22
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 3, RATTATA
	db 3, SPEAROW
	db 5, SPEAROW
	db 4, DODUO
	db 6, PONYTA
	db 7, FEAROW
	db 67, JYNX
	; day
	db 3, RATTATA
	db 3, SPEAROW
	db 5, SPEAROW
	db 4, DODUO
	db 6, PONYTA
	db 7, FEAROW
	db 67, FEAROW
	; nite
	db 3, RATTATA
	db 3, POLIWAG
	db 5, RATTATA
	db 4, POLIWAG
	db 6, RATTATA
	db 7, RATTATA
	db 67, POLITOED

	map ROUTE_24
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 8, CATERPIE
	db 10, CATERPIE
	db 12, METAPOD
	db 12, ABRA
	db 10, BELLSPROUT
	db 14, BUTTERFREE
	db 64, BUTTERFREE
	; day
	db 8, CATERPIE
	db 12, SUNKERN
	db 10, CATERPIE
	db 12, ABRA
	db 10, BELLSPROUT
	db 14, BUTTERFREE
	db 64, SUNFLORA
	; nite
	db 10, VENONAT
	db 10, ODDISH
	db 12, ODDISH
	db 12, ABRA
	db 10, BELLSPROUT
	db 14, GLOOM
	db 60, BELLOSSOM

	map ROUTE_25
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 10, CATERPIE
	db 10, PIDGEY
	db 12, PIDGEOTTO
	db 12, METAPOD
	db 10, BELLSPROUT
	db 14, BUTTERFREE
	db 64, BEEDRILL
	; day
	db 10, CATERPIE
	db 10, PIDGEY
	db 12, PIDGEOTTO
	db 12, METAPOD
	db 10, BELLSPROUT
	db 20, IVYSAUR
	db 64, VENUSAUR
	; nite
	db 10, ODDISH
	db 10, HOOTHOOT
	db 10, VENONAT
	db 12, NOCTOWL
	db 10, BELLSPROUT
	db 14, NOCTOWL
	db 64, VICTREEBEL

	map ROUTE_26
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 28, DODUO
	db 28, SANDSLASH
	db 32, PONYTA
	db 30, RATICATE
	db 30, DODUO
	db 50, ARBOK
	db 30, ARBOK
	; day
	db 28, DODUO
	db 28, SANDSLASH
	db 30, ARBOK
	db 30, RATICATE
	db 30, DODUO
	db 52, RAPIDASH
	db 30, ARBOK
	; nite
	db 28, NOCTOWL
	db 28, RATICATE
	db 32, NOCTOWL
	db 30, RATICATE
	db 30, QUAGSIRE
	db 50, AZUMARILL
	db 50, QUAGSIRE

	map ROUTE_27
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 28, DODUO
	db 28, ARBOK
	db 30, RATICATE
	db 30, DODUO
	db 32, PONYTA
	db 30, DODRIO
	db 60, TOGETIC
	; day
	db 28, DODUO
	db 28, ARBOK
	db 30, RATICATE
	db 30, DODUO
	db 32, PONYTA
	db 60, DODRIO
	db 30, DODRIO
	; nite
	db 28, QUAGSIRE
	db 28, NOCTOWL
	db 30, RATICATE
	db 30, QUAGSIRE
	db 32, NOCTOWL
	db 32, WARTORTLE
	db 62, BLASTOISE

	map ROUTE_28
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 49, TANGELA
	db 43, HYPNO	
	db 40, RAPIDASH
	db 52, ARBOK
	db 41, DONPHAN
	db 70, CHARIZARD
	db 75, DODRIO
	; day
	db 69, TANGELA
	db 40, SMEARGLE
	db 65, RAPIDASH
	db 42, URSARING
	db 61, KANGASKHAN
	db 50, DODRIO
	db 73, FORRETRESS
	; nite
	db 60, TANGELA
	db 65, POLITOED
	db 40, GOLBAT
	db 65, POLIWRATH
	db 52, SNEASEL
	db 60, ARBOK
	db 70, HOUNDOOM

	db -1 ; end
