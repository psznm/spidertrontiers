if settings.startup["stack-spidertron-recipes"].value == true then
	data.raw["recipe"]["spidertron"] = {
		type = "recipe",
		name = "spidertron",
		icon = "__base__/graphics/icons/spidertron.png",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "spidertron_mk0", amount = 1, type = "item" },
			{ name = "exoskeleton-equipment", amount = 4, type = "item" },
			{ name = "fission-reactor-equipment", amount = 2, type = "item" },
			{ name = "rocket-launcher", amount = 2, type = "item" },
			{ name = "low-density-structure", amount = 150, type = "item" },
			{ name = "radar", amount = 2, type = "item" },
			{ name = "efficiency-module-3", amount = 2, type = "item" },
		},
		results = { { name = "spidertron", type = "item", amount = 1 } },
	}
end

data.raw["item-with-entity-data"]["spidertron"] = {
	type = "item-with-entity-data",
	name = "spidertron",
	icon = "__base__/graphics/icons/spidertron.png",
	icon_size = 64,
	icon_mipmaps = 4,
	subgroup = "transport",
	order = "b[personal-transport]-c[spidertron]-b[spider]-l[spidertron-mk1]",
	place_result = "spidertron",
	stack_size = 1,
}
if settings.startup["show-spidertron-legs"].value == false then
	for index, leg in pairs(data.raw["spider-vehicle"]["spidertron"].spider_engine.legs) do
		data.raw["spider-vehicle"]["spidertron"].spider_engine.legs[index].leg_hit_the_ground_trigger = nil
		data.raw["spider-leg"]["spidertron-leg-" .. index].graphics_set = {}
		data.raw["spider-leg"]["spidertron-leg-" .. index].walking_sound_volume_modifier = 0
	end
end

require("lib/fuel").addEnergySource(data.raw["spider-vehicle"]["spidertron"], 200, 4)
