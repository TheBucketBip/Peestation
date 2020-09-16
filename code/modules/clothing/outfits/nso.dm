
/obj/item/clothing/under/syndicate/camo/nso
	name = "NSO fatigues"
	armor = list("melee" = 10, "bullet" = 15, "laser" = 15,"energy" = 10, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 40)
	has_sensor = NO_SENSORS

/obj/item/clothing/under/syndicate/camo/stealth
	name = "stealth fatigues"
	desc = "You'll be as slippery as a snake wearing this."
	armor = list("melee" = 45, "bullet" = 35, "laser" = 45,"energy" = 30, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 40)
	has_sensor = NO_SENSORS

/obj/item/clothing/head/HoS/beret/nso
	name = "NSO beret"
	desc = "A beret worn by high ranking soldiers in the NSO."

/obj/item/storage/belt/military/camo/stealth
	name = "stealth rig"
	icon_state = "explorer2"
	item_state = "explorer2"

/obj/item/storage/belt/military/camo/nso/ComponentInitialize() // NSO Soldier
	. = ..()
	new /obj/item/ammo_box/magazine/ak/m556(src)
	new /obj/item/ammo_box/magazine/ak/m556(src)
	new /obj/item/reagent_containers/hypospray/medipen(src)
	new /obj/item/flashlight/flare(src)
	new /obj/item/flashlight/flare(src)
	new /obj/item/restraints/handcuffs/cable/zipties(src)
	new /obj/item/jawsoflife(src)

/obj/item/storage/belt/military/camo/stealth/ComponentInitialize() // NSO Infiltrator
	. = ..()
	new /obj/item/ammo_box/magazine/m45(src)
	new /obj/item/ammo_box/magazine/m45(src)
	new /obj/item/book/granter/martial/cqc (src)
	new /obj/item/card/emag(src)
	new /obj/item/chameleon(src)

/obj/item/storage/belt/military/camo/elite/ComponentInitialize() // NSO Elite
	. = ..()
	new /obj/item/ammo_box/magazine/m50(src)
	new /obj/item/ammo_box/magazine/m50(src)
	new /obj/item/book/granter/martial/cqc (src)
	new /obj/item/reagent_containers/hypospray/medipen(src)
	new /obj/item/jawsoflife(src)

/datum/outfit/nso
	name = "NSO Soldier"

	uniform = /obj/item/clothing/under/syndicate/camo/nso
	suit = /obj/item/clothing/suit/armor/bulletproof
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	glasses = /obj/item/clothing/glasses/hud/toggle/thermal
	belt = /obj/item/storage/belt/military/camo/nso
	suit_store = /obj/item/gun/ballistic/automatic/nak/unrestricted
	back = /obj/item/storage/backpack/military
	head = /obj/item/clothing/head/helmet/alt
	l_pocket = /obj/item/flashlight/seclite
	id = /obj/item/card/id/ert/nso

	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/m1911=1,
		/obj/item/ammo_box/magazine/m45=1,
		/obj/item/storage/box/zipties=1
		)


/datum/outfit/nso/commander
	name = "NSO Officer"

	head = /obj/item/clothing/head/HoS/beret/nso
	belt = /obj/item/storage/belt/military/camo/nso
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/deagle=1,
		/obj/item/ammo_box/magazine/m50=1,
		/obj/item/storage/box/zipties=1
		)

/datum/outfit/nso/stealth       // Big boss
	name = "NSO Infiltrator"

	head = null
	back = null
	suit = /obj/item/clothing/suit/armor/bulletproof
	suit_store = /obj/item/gun/ballistic/automatic/pistol/m1911
	uniform = /obj/item/clothing/under/syndicate/camo/stealth
	belt = /obj/item/storage/belt/military/camo/stealth
	implants = list(/obj/item/implant/stealth)
	id = /obj/item/card/id/syndicate

