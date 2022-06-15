
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
