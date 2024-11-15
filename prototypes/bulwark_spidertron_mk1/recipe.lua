local bulwark_spidertron_mk1

if settings.startup["stack-spidertron-recipes"].value == true then
	bulwark_spidertron_mk1 = {
		type = "recipe",
		icon = "__spidertrontiers-community-updates__/graphics/icons/bulwark_spidertron_mk1.png",
		name = "bulwark_spidertron_mk1",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "electronic-circuit", amount = 50, type = "item" },
			{ name = "iron-gear-wheel", amount = 16, type = "item" },
			{ name = "submachine-gun", amount = 1, type = "item" },
			{ name = "steel-plate", amount = 450, type = "item" },
			{ name = "engine-unit", amount = 16, type = "item" },
			{ name = "iron-stick", amount = 48, type = "item" },
			{ name = "copper-cable", amount = 40, type = "item" },
			{ name = "prototype_spidertron", amount = 1, type = "item" },
		},
		results = { { name = "bulwark_spidertron_mk1", type = "item", amount = 1 } },
	}
else
	bulwark_spidertron_mk1 = {
		type = "recipe",
		icon = "__spidertrontiers-community-updates__/graphics/icons/bulwark_spidertron_mk1.png",
		name = "bulwark_spidertron_mk1",
		enabled = false,
		energy_required = 10,
		ingredients = {
			{ name = "electronic-circuit", amount = 75, type = "item" },
			{ name = "iron-gear-wheel", amount = 164, type = "item" },
			{ name = "submachine-gun", amount = 1, type = "item" },
			{ name = "steel-plate", amount = 450, type = "item" },
			{ name = "engine-unit", amount = 16, type = "item" },
			{ name = "iron-stick", amount = 48, type = "item" },
			{ name = "copper-cable", amount = 40, type = "item" },
			{ name = "iron-plate", amount = 120, type = "item" },
		},
		results = { { name = "bulwark_spidertron_mk1", type = "item", amount = 1 } },
	}
end

data:extend({
	bulwark_spidertron_mk1,
})
