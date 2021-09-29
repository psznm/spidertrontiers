-- control.lua
local event_handler = require("event_handler")
local ground_triggers = require("__spidertrontiers__.prototypes.ground_triggers")

event_handler.add_lib(require("lib/spidertron_speed_adjuster"))

script.on_event({defines.events.on_built_entity},
	function (event)
		if (event.created_entity.name == "bulwark_spidertron_mk2") then
			event.created_entity.color = {r=255, g=255, b=255}
		elseif (event.created_entity.name == "scout_spidertron_mk1") then
			event.created_entity.color = {r=255, g=70, b=255}
		elseif (event.created_entity.name == "scout_spidertron_mk2") then
			event.created_entity.color = {r=255, g=110, b=175}
		end
	end
)
