local scout_spidertron_mk1

if settings.startup["stack-spidertron-recipes"].value == true then
	scout_spidertron_mk1 = {
		type = "recipe",
		name = "scout_spidertron_mk1",
		icon = "__spidertrontiers-community-updates__/graphics/icons/scout_spidertron_mk1.png",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "electronic-circuit", amount = 50, type = "item" },
			{ name = "iron-gear-wheel", amount = 80, type = "item" },
			{ name = "steel-plate", amount = 80, type = "item" },
			{ name = "engine-unit", amount = 3, type = "item" },
			{ name = "radar", amount = 5, type = "item" },
			{ name = "iron-stick", amount = 16, type = "item" },
			{ name = "copper-cable", amount = 40, type = "item" },
			{ name = "prototype_spidertron", amount = 1, type = "item" },
		},
		results = { { name = "scout_spidertron_mk1", type = "item", amount = 1 } },
	}
else
	scout_spidertron_mk1 = {
		type = "recipe",
		name = "scout_spidertron_mk1",
		icon = "__spidertrontiers-community-updates__/graphics/icons/scout_spidertron_mk1.png",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "electronic-circuit", amount = 60, type = "item" },
			{ name = "iron-gear-wheel", amount = 100, type = "item" },
			{ name = "steel-plate", amount = 90, type = "item" },
			{ name = "engine-unit", amount = 3, type = "item" },
			{ name = "radar", amount = 5, type = "item" },
			{ name = "iron-stick", amount = 16, type = "item" },
			{ name = "copper-cable", amount = 40, type = "item" },
			{ name = "iron-plate", amount = 80, type = "item" },
		},
		results = { { name = "scout_spidertron_mk1", type = "item", amount = 1 } },
	}
end

data:extend({
	scout_spidertron_mk1,
})
