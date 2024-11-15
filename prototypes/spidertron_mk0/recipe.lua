local spidertron_mk0

if settings.startup["stack-spidertron-recipes"].value == true then
	spidertron_mk0 = {
		type = "recipe",
		name = "spidertron_mk0",
		icon = "__spidertrontiers-community-updates__/graphics/icons/spidertron_mk0.png",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "spidertron_mkn1", amount = 1, type = "item" },
			{ name = "battery", amount = 40, type = "item" },
			{ name = "rocket-launcher", amount = 2, type = "item" },
			{ name = "advanced-circuit", amount = 15, type = "item" },
			{ name = "electronic-circuit", amount = 120, type = "item" },
			{ name = "radar", amount = 2, type = "item" },
			{ name = "iron-stick", amount = 32, type = "item" },
			{ name = "copper-cable", amount = 80, type = "item" },
			{ name = "sulfur", amount = 50, type = "item" },
		},
		results = { { name = "spidertron_mk0", type = "item", amount = 1 } },
	}
else
	spidertron_mk0 = {
		type = "recipe",
		name = "spidertron_mk0",
		icon = "__spidertrontiers-community-updates__/graphics/icons/spidertron_mk0.png",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "iron-plate", amount = 250, type = "item" },
			{ name = "battery", amount = 40, type = "item" },
			{ name = "rocket-launcher", amount = 4, type = "item" },
			{ name = "advanced-circuit", amount = 25, type = "item" },
			{ name = "electronic-circuit", amount = 180, type = "item" },
			{ name = "radar", amount = 2, type = "item" },
			{ name = "iron-stick", amount = 36, type = "item" },
			{ name = "copper-cable", amount = 80, type = "item" },
			{ name = "sulfur", amount = 80, type = "item" },
		},
		results = { { name = "spidertron_mk0", type = "item", amount = 1 } },
	}
end

data:extend({
	spidertron_mk0,
})
