SUBSYSTEM_DEF(input)
	name = "Input"
	wait = 1 //SS_TICKER means this runs every tick
	init_order = SS_INIT_INPUT
	init_stage = INITSTAGE_EARLY
	flags = SS_TICKER
	priority = SS_PRIORITY_INPUT
	runlevels = RUNLEVELS_DEFAULT | RUNLEVEL_LOBBY

	var/list/macro_set

/datum/controller/subsystem/input/Initialize()
	setup_default_macro_sets()

	initialized = TRUE

	refresh_client_macro_sets()

	return SS_INIT_SUCCESS

// This is for when macro sets are eventualy datumized
/datum/controller/subsystem/input/proc/setup_default_macro_sets()
	macro_set = list(
		"Any" = "\"KeyDown \[\[*\]\]\"",
		"Any+UP" = "\"KeyUp \[\[*\]\]\"",
		"Back" = "\".winset \\\"input.text=\\\"\\\"\\\"\"",
		"F1" = "adminhelp", // Need to unbind F1 because by default, it is bound to .options
		"CTRL+SHIFT+F1+REP" = ".options",
		"Tab" = "\".winset \\\"input.focus=true?map.focus=true:input.focus=true\\\"\"",
		"Escape" = "Open-Escape-Menu",
		)

// Badmins just wanna have fun ♪
/datum/controller/subsystem/input/proc/refresh_client_macro_sets()
	var/list/clients = GLOB.clients
	for(var/i in 1 to length(clients))
		var/client/user = clients[i]
		INVOKE_ASYNC(user, /client/proc/set_macros)

/datum/controller/subsystem/input/fire()
	for(var/mob/user as anything in GLOB.player_list)
		user.focus?.keyLoop(user.client)
