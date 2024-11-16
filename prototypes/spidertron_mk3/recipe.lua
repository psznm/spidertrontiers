local spidertron_mk3

if settings.startup["stack-spidertron-recipes"].value == true then
	spidertron_mk3 = {
		type = "recipe",
		name = "spidertron_mk3",
		icon = "__spidertrontiers-community-updates__/graphics/icons/spidertron_mk3.png",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "exoskeleton-equipment", amount = 12, type = "item" },
			{ name = "fission-reactor-equipment", amount = 8, type = "item" },
			{ name = "low-density-structure", amount = 450, type = "item" },
			{ name = "radar", amount = 6, type = "item" },
			{ name = "raw-fish", amount = 2, type = "item" },
			{ name = "spidertron_mk2", amount = 1, type = "item" },
		},
		results = { { name = "spidertron_mk3", type = "item", amount = 1 } },
	}
else
	spidertron_mk3 = {
		type = "recipe",
		name = "spidertron_mk3",
		icon = "__spidertrontiers-community-updates__/graphics/icons/spidertron_mk3.png",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "exoskeleton-equipment", amount = 25, type = "item" },
			{ name = "fission-reactor-equipment", amount = 10, type = "item" },
			{ name = "low-density-structure", amount = 450, type = "item" },
			{ name = "radar", amount = 12, type = "item" },
			{ name = "raw-fish", amount = 2, type = "item" },
			{ name = "iron-plate", amount = 690, type = "item" },
		},
		results = { { name = "spidertron_mk3", type = "item", amount = 1 } },
	}
end
data:extend({
	spidertron_mk3,
})
