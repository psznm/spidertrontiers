local spidertron_mk_1 = {
	type = "recipe",
	name = "spidertron_mkn1",
	icon = "__spidertrontiers-community-updates__/graphics/icons/spidertron_mkn1.png",
	enabled = false,
	energy_required = 10,
	ingredients = {
		{ name = "battery", amount = 20, type = "item" },
		{ name = "electronic-circuit", amount = 150, type = "item" },
		{ name = "iron-gear-wheel", amount = 220, type = "item" },
		{ name = "submachine-gun", amount = 1, type = "item" },
		{ name = "steel-plate", amount = 150, type = "item" },
		{ name = "radar", amount = 2, type = "item" },
		{ name = "iron-stick", amount = 24, type = "item" },
		{ name = "copper-cable", amount = 65, type = "item" },
	},
	results = { { name = "spidertron_mkn1", type = "item", amount = 1 } },
}

data:extend({
	spidertron_mk_1,
})
