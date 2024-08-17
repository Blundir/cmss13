/obj/item/storage/box/packet
	icon = 'icons/obj/items/storage/packets.dmi'
	icon_state = "hedp_packet"
	w_class = SIZE_MEDIUM//fits into bags
	storage_slots = 3
	can_hold = list(/obj/item/explosive/grenade)
	foldable = null
	var/content_type

/obj/item/storage/box/packet/update_icon()
	if(LAZYLEN(contents))
		icon_state = initial(icon_state)
	else
		icon_state = initial(icon_state) + "_e"

/obj/item/storage/box/packet/Initialize()
	if(!content_type)
		return INITIALIZE_HINT_QDEL

	. = ..()

	update_icon()

/obj/item/storage/box/packet/fill_preset_inventory()
	for(var/i in 1 to storage_slots)
		new content_type(src)

GLOBAL_LIST_INIT(grenade_packets, list(
	/obj/item/storage/box/packet/high_explosive,
	/obj/item/storage/box/packet/baton_slug,
	/obj/item/storage/box/packet/flare,
	/obj/item/storage/box/packet/hornet,
	/obj/item/storage/box/packet/incendiary,
	/obj/item/storage/box/packet/smoke,
	/obj/item/storage/box/packet/phosphorus,
	/obj/item/storage/box/packet/phosphorus/upp,
	/obj/item/storage/box/packet/m15,
	/obj/item/storage/box/packet/airburst_he,
	/obj/item/storage/box/packet/airburst_incen
	))

/obj/item/storage/box/packet/high_explosive
	name = "\improper HEDP grenade packet"
	desc = "It contains three HEDP high explosive grenades."
	icon_state = "hedp_packet"
	content_type = /obj/item/explosive/grenade/high_explosive

/obj/item/storage/box/packet/baton_slug
	name = "\improper HIRR baton slug packet"
	desc = "It contains three HIRR (High Impact Rubber Rounds) Baton Slugs."
	icon_state = "baton_packet"
	content_type = /obj/item/explosive/grenade/slug/baton

/obj/item/storage/box/packet/flare
	name = "\improper M74 AGM-S star shell packet"
	desc = "It contains three M40-F Star Shell Grenades. 40mm grenades that explode into burning ash. Great for temporarily lighting an area."
	icon_state = "starshell_packet"
	content_type = /obj/item/explosive/grenade/high_explosive/airburst/starshell

/obj/item/storage/box/packet/hornet
	name = "\improper M74 AGM-H hornet shell packet"
	desc = "It contains three M74 AGM-H Hornet shells. 40mm grenades that explode into a cluster of .22lr bullets at range, dealing massive damage to anything caught in the way."
	icon_state = "hornet_packet"
	content_type = /obj/item/explosive/grenade/high_explosive/airburst/hornet_shell

/obj/item/storage/box/packet/incendiary
	name = "\improper HIDP grenade packet"
	desc = "It contains three HIDP incendiary grenades."
	icon_state = "hidp_packet"
	content_type = /obj/item/explosive/grenade/incendiary

/obj/item/storage/box/packet/smoke
	name = "\improper HSDP grenade packet"
	desc = "It contains three HSDP smoke grenades."
	icon_state = "hsdp_packet"
	content_type = /obj/item/explosive/grenade/smokebomb

/obj/item/storage/box/packet/phosphorus
	name = "\improper HPDP grenade packet"
	desc = "It contains three HPDP white phosphorus grenades."
	icon_state = "hpdp_packet"
	content_type = /obj/item/explosive/grenade/phosphorus/weak

/obj/item/storage/box/packet/phosphorus/upp
	name = "\improper Type 8 WP grenade packet"
	desc = "It contains three type 8 white phosphorus grenades."
	content_type = /obj/item/explosive/grenade/phosphorus/upp

/obj/item/storage/box/packet/hefa
	name = "\improper HEFA grenade packet"
	desc = "It contains three HEFA grenades. Don't tell the HEFA order."
	icon_state = "hefa_packet"
	content_type = /obj/item/explosive/grenade/high_explosive/frag

/obj/item/storage/box/packet/hefa/toy
	name = "toy HEFA grenade packet"
	desc = "These little packets of joy were distributed in the 100th (Season 2) Issue of the Boots! magazine as commemorative rewards for subscribers. Nobody knows how anyone, at any point, never asked 'wait, is this a terrible idea?' during the process."
	content_type = /obj/item/explosive/grenade/high_explosive/frag/toy

/obj/item/storage/box/packet/m15
	name = "\improper M15 fragmentation grenade packet"
	desc = "It contains three M15 fragmentation grenades. Handle with care."
	icon_state = "general_packet"
	content_type = /obj/item/explosive/grenade/high_explosive/m15

/obj/item/storage/box/packet/m15/rubber
	name = "M15 rubber pellet grenade packet"
	desc = "It contains three M15 rubber pellet grenades, for riot control or combat exercises."
	icon_state = "general_packet"
	content_type = /obj/item/explosive/grenade/high_explosive/m15/rubber

/obj/item/storage/box/packet/sebb
	name = "\improper G2 Electroshock grenade packet"
	desc = "It contains three G2 Electroshock grenades. Handle with care."
	icon_state = "sebb_packet"
	content_type = /obj/item/explosive/grenade/sebb

/obj/item/storage/box/packet/airburst_he
	name = "\improper M74 airburst grenade packet"
	desc = "It contains three M74 airburst fragmentation grenades. This end towards the enemy."
	icon_state = "agmf_packet"
	content_type = /obj/item/explosive/grenade/high_explosive/airburst

/obj/item/storage/box/packet/airburst_incen
	name = "\improper M74 airburst incendiary grenade packet"
	desc = "It contains three M74 airburst incendiary grenades. This end towards the enemy."
	icon_state = "agmi_packet"
	content_type = /obj/item/explosive/grenade/incendiary/airburst

/obj/item/storage/box/packet/airburst_smoke
	name = "\improper M74 airburst smoke grenade packet"
	desc = "It contains three M74 airburst smoke grenades. This end towards the enemy."
	icon_state = "agms_packet"
	content_type = /obj/item/explosive/grenade/smokebomb/airburst

/obj/item/storage/box/packet/rmc/he
	name = "\improper R2175/A HEDP grenade packet"
	desc = "It contains three R2175/A HEDP grenades. Handle with care."
	icon_state = "hedp_packet"
	content_type = /obj/item/explosive/grenade/high_explosive/rmc

/obj/item/storage/box/packet/rmc/incin
	name = "\improper R2175/B HIDP grenade packet"
	desc = "It contains three R2175/B HIDP grenades. Handle with care."
	icon_state = "hidp_packet"
	content_type = /obj/item/explosive/grenade/incendiary/rmc
