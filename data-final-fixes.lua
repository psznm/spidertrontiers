
local grid_list = {
	"spidertron-mk-1-equipment-grid",
	"spidertron-mk0-equipment-grid",
	"spidertron-mk2-equipment-grid",
	"spidertron-mk3-equipment-grid",
	"prototype-spidertron-equipment-grid",
	"assault-spidertron-mk1-equipment-grid",
	"assault-spidertron-mk2-equipment-grid",
	"bulwark-spidertron-mk1-equipment-grid",
	"bulwark-spidertron-mk2-equipment-grid",
	"scout-spidertron-mk1-equipment-grid",
	"scout-spidertron-mk2-equipment-grid",
	"voyage-spidertron-mk1-equipment-grid",
	"voyage-spidertron-mk2-equipment-grid",
}

local spidertronGridName = data.raw["spider-vehicle"]["spidertron"].equipment_grid
local spidertronCategories = data.raw["equipment-grid"][spidertronGridName].equipment_categories
for index, grid in pairs(grid_list) do
	data.raw["equipment-grid"][grid].equipment_categories = spidertronCategories
end

if mods["Krastorio2"] then
	for index, spider in pairs(data.raw["spider-vehicle"]) do
		spider.is_military_target = true;
		local mask = spider.trigger_target_mask
		if not mask then
			mask = {}
		end

		spider.trigger_target_mask = mask
		table.insert(mask, "kr-tesla-coil-trigger")
	end
end
