local assault_spidertron_mk1

if settings.startup["stack-spidertron-recipes"].value == true then
	assault_spidertron_mk1 = {
		type = "recipe",
		icon = "__spidertrontiers-community-updates__/graphics/icons/assault_spidertron_mk1.png",
		name = "assault_spidertron_mk1",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "electronic-circuit", amount = 50, type = "item" },
			{ name = "iron-gear-wheel", amount = 80, type = "item" },
			{ name = "shotgun", amount = 2, type = "item" },
			{ name = "steel-plate", amount = 150, type = "item" },
			{ name = "radar", amount = 1, type = "item" },
			{ name = "iron-stick", amount = 32, type = "item" },
			{ name = "copper-cable", amount = 80, type = "item" },
			{ name = "prototype_spidertron", amount = 1, type = "item" },
		},
		results = { { name = "assault_spidertron_mk1", type = "item", amount = 1 } },
	}
else
	assault_spidertron_mk1 = {
		type = "recipe",
		icon = "__spidertrontiers-community-updates__/graphics/icons/assault_spidertron_mk1.png",
		name = "assault_spidertron_mk1",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "electronic-circuit", amount = 50, type = "item" },
			{ name = "iron-gear-wheel", amount = 80, type = "item" },
			{ name = "shotgun", amount = 2, type = "item" },
			{ name = "steel-plate", amount = 250, type = "item" },
			{ name = "radar", amount = 1, type = "item" },
			{ name = "iron-stick", amount = 42, type = "item" },
			{ name = "copper-cable", amount = 80, type = "item" },
			{ name = "iron-plate", amount = 60, type = "item" },
		},
		results = { { name = "assault_spidertron_mk1", type = "item", amount = 1 } },
	}
end

data:extend({
	assault_spidertron_mk1,
})
