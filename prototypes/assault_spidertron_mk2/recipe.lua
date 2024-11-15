local assault_spidertron_mk2

if settings.startup["stack-spidertron-recipes"].value == true then
	assault_spidertron_mk2 = {
		type = "recipe",
		icon = "__spidertrontiers-community-updates__/graphics/icons/assault_spidertron_mk2.png",
		name = "assault_spidertron_mk2",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "electronic-circuit", amount = 200, type = "item" },
			{ name = "iron-gear-wheel", amount = 24, type = "item" },
			{ name = "submachine-gun", amount = 8, type = "item" },
			{ name = "steel-plate", amount = 150, type = "item" },
			{ name = "engine-unit", amount = 8, type = "item" },
			{ name = "iron-stick", amount = 32, type = "item" },
			{ name = "copper-cable", amount = 40, type = "item" },
			{ name = "assault_spidertron_mk1", amount = 1, type = "item" },
		},
		results = { { name = "assault_spidertron_mk2", type = "item", amount = 1 } },
	}
else
	assault_spidertron_mk2 = {
		type = "recipe",
		name = "assault_spidertron_mk2",
		icon = "__spidertrontiers-community-updates__/graphics/icons/assault_spidertron_mk2.png",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "electronic-circuit", amount = 150, type = "item" },
			{ name = "iron-gear-wheel", amount = 220, type = "item" },
			{ name = "submachine-gun", amount = 12, type = "item" },
			{ name = "steel-plate", amount = 300, type = "item" },
			{ name = "engine-unit", amount = 8, type = "item" },
			{ name = "iron-stick", amount = 50, type = "item" },
			{ name = "copper-cable", amount = 60, type = "item" },
			{ name = "iron-plate", amount = 100, type = "item" },
		},
		results = { { name = "assault_spidertron_mk2", type = "item", amount = 1 } },
	}
end

data:extend({
	assault_spidertron_mk2,
})
