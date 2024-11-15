local bulwark_spidertron_mk2

if settings.startup["stack-spidertron-recipes"].value == true then
	bulwark_spidertron_mk2 = {
		type = "recipe",
		icon = "__spidertrontiers-community-updates__/graphics/icons/bulwark_spidertron_mk2.png",
		name = "bulwark_spidertron_mk2",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "electronic-circuit", amount = 50, type = "item" },
			{ name = "iron-gear-wheel", amount = 16, type = "item" },
			{ name = "submachine-gun", amount = 1, type = "item" },
			{ name = "rocket-launcher", amount = 2, type = "item" },
			{ name = "steel-plate", amount = 650, type = "item" },
			{ name = "electric-engine-unit", amount = 14, type = "item" },
			{ name = "iron-stick", amount = 64, type = "item" },
			{ name = "copper-cable", amount = 35, type = "item" },
			{ name = "bulwark_spidertron_mk1", amount = 1, type = "item" },
		},
		results = { { name = "bulwark_spidertron_mk2", type = "item", amount = 1 } },
	}
else
	bulwark_spidertron_mk2 = {
		type = "recipe",
		name = "bulwark_spidertron_mk2",
		icon = "__spidertrontiers-community-updates__/graphics/icons/bulwark_spidertron_mk2.png",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "electronic-circuit", amount = 50, type = "item" },
			{ name = "iron-gear-wheel", amount = 230, type = "item" },
			{ name = "submachine-gun", amount = 2, type = "item" },
			{ name = "rocket-launcher", amount = 4, type = "item" },
			{ name = "steel-plate", amount = 650, type = "item" },
			{ name = "electric-engine-unit", amount = 14, type = "item" },
			{ name = "iron-stick", amount = 64, type = "item" },
			{ name = "copper-cable", amount = 35, type = "item" },
			{ name = "iron-plate", amount = 210, type = "item" },
		},
		results = { { name = "bulwark_spidertron_mk2", type = "item", amount = 1 } },
	}
end

data:extend({
	bulwark_spidertron_mk2,
})
