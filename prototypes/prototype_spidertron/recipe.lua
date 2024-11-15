local prototype_spidertron = {
	type = "recipe",
	icon = "__spidertrontiers-community-updates__/graphics/icons/prototype_spidertron.png",
	name = "prototype_spidertron",
	enabled = false,
	energy_required = 10,
	ingredients = {
		{ name = "electronic-circuit", amount = 30, type = "item" },
		{ name = "iron-gear-wheel", amount = 120, type = "item" },
		{ name = "steel-plate", amount = 120, type = "item" },
		{ name = "iron-stick", amount = 16, type = "item" },
		{ name = "copper-cable", amount = 50, type = "item" },
	},
	results = { { name = "prototype_spidertron", type = "item", amount = 1 } },
}

data:extend({
	prototype_spidertron,
})
