
local fuelTiers = {
    { 'chemical' },
    { 'chemical' },
    { 'chemical' },
    { 'chemical' },
    { 'chemical' },
    { 'chemical' },
}

-- should do this by inserting and removing, instead of hardcoding each possible combination of mods,
-- but right now i dont know how and it is good enough for now.
if mods["Krastorio2"] then
    fuelTiers = {
        { 'chemical' },
        { 'chemical', "vehicle-fuel" },
        { "chemical", "vehicle-fuel", 'nuclear-fuel', 'nuclear' },
        { 'nuclear-fuel', 'fusion-fuel', 'nuclear' },
        { 'fusion-fuel' },
        { 'antimatter-fuel' },
    }
end
if mods["aai-industry"] then
    fuelTiers = {
        { 'chemical', "processed-chemical" },
        { 'chemical', "processed-chemical" },
        { 'chemical', "processed-chemical" },
        { 'chemical', "processed-chemical" },
        { 'chemical', "processed-chemical" },
        { 'chemical', "processed-chemical" },
    }
end
if mods["Krastorio2"] and mods["aai-industry"] then
    fuelTiers = {
        { 'chemical', "vehicle-fuel", "processed-chemical" },
        { 'chemical', "vehicle-fuel", "processed-chemical" },
        { "chemical", "vehicle-fuel", 'nuclear-fuel', 'nuclear', "processed-chemical" },
        { 'nuclear-fuel', 'fusion-fuel', 'nuclear' },
        { 'fusion-fuel' },
        { 'antimatter-fuel' },
    }
end


return {
    addEnergySource = function(spidertron, usageKw, fuelTier)

        if settings.startup["spidertrontiers-use-fuel"].value == true then
            spidertron.energy_source = {
                type = "burner",
                fuel_categories = fuelTiers[fuelTier],
                effectivity = 1,
                fuel_inventory_size = 1,
                smoke =
                {
                    {
                        name = "car-smoke",
                        deviation = {0.25, 0.25},
                        frequency = 200,
                        position = {0, -1.5},
                        starting_frame = 0,
                        starting_frame_deviation = 60
                    }
                }
            }
        end
        spidertron.movement_energy_consumption = usageKw .. 'kW'
    end
}