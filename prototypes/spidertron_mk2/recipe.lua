local spidertron_mk2

if settings.startup["stack-spidertron-recipes"].value == true then
	spidertron_mk2 = {
		type = "recipe",
		name = "spidertron_mk2",
		icon = "__spidertrontiers-community-updates__/graphics/icons/spidertron_mk2.png",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "exoskeleton-equipment", amount = 8, type = "item" },
			{ name = "fusion-reactor-equipment", amount = 4, type = "item" },
			{ name = "low-density-structure", amount = 300, type = "item" },
			{ name = "radar", amount = 4, type = "item" },
			{ name = "efficiency-module-3", amount = 4, type = "item" },
			{ name = "electric-engine-unit", amount = 24, type = "item" },
			{ name = "raw-fish", amount = 1, type = "item" },
			{ name = "spidertron", amount = 1, type = "item" },
		},
		results = { { name = "spidertron_mk2", type = "item", amount = 1 } },
	}
else
	spidertron_mk2 = {
		type = "recipe",
		name = "spidertron_mk2",
		icon = "__spidertrontiers-community-updates__/graphics/icons/spidertron_mk2.png",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "exoskeleton-equipment", amount = 12, type = "item" },
			{ name = "fusion-reactor-equipment", amount = 4, type = "item" },
			{ name = "low-density-structure", amount = 300, type = "item" },
			{ name = "radar", amount = 8, type = "item" },
			{ name = "efficiency-module-3", amount = 4, type = "item" },
			{ name = "electric-engine-unit", amount = 36, type = "item" },
			{ name = "raw-fish", amount = 1, type = "item" },
			{ name = "iron-plate", amount = 380, type = "item" },
		},
		results = { { name = "spidertron_mk2", type = "item", amount = 1 } },
	}
end
data:extend({
	spidertron_mk2,
})
