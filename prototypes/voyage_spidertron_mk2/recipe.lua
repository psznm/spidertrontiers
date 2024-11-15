local voyage_spidertron_mk2

if settings.startup["stack-spidertron-recipes"].value == true then
	voyage_spidertron_mk2 = {
		type = "recipe",
		icon = "__spidertrontiers-community-updates__/graphics/icons/voyage_spidertron_mk2.png",
		name = "voyage_spidertron_mk2",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "electronic-circuit", amount = 25, type = "item" },
			{ name = "advanced-circuit", amount = 5, type = "item" },
			{ name = "iron-gear-wheel", amount = 50, type = "item" },
			{ name = "steel-plate", amount = 80, type = "item" },
			{ name = "iron-stick", amount = 64, type = "item" },
			{ name = "electric-engine-unit", amount = 10, type = "item" },
			{ name = "copper-cable", amount = 55, type = "item" },
			{ name = "voyage_spidertron_mk1", amount = 1, type = "item" },
		},
		results = { { name = "voyage_spidertron_mk2", type = "item", amount = 1 } },
	}
else
	voyage_spidertron_mk2 = {
		type = "recipe",
		name = "voyage_spidertron_mk2",
		icon = "__spidertrontiers-community-updates__/graphics/icons/voyage_spidertron_mk2.png",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "electronic-circuit", amount = 75, type = "item" },
			{ name = "advanced-circuit", amount = 8, type = "item" },
			{ name = "iron-gear-wheel", amount = 200, type = "item" },
			{ name = "steel-plate", amount = 300, type = "item" },
			{ name = "iron-stick", amount = 64, type = "item" },
			{ name = "electric-engine-unit", amount = 10, type = "item" },
			{ name = "copper-cable", amount = 55, type = "item" },
			{ name = "iron-plate", amount = 200, type = "item" },
		},
		results = { { name = "voyage_spidertron_mk2", type = "item", amount = 1 } },
	}
end

data:extend({
	voyage_spidertron_mk2,
})
