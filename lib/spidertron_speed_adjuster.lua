

local speed_modifiers = {
    ["assault_spidertron_mk1"] = 1,
    ["assault_spidertron_mk2"] = 1.2,
    ["bulwark_spidertron_mk1"] = 0.8,
    ["bulwark_spidertron_mk2"] = 0.9,
    ["prototype_spidertron"] = 0.5,
    ["scout_spidertron_mk1"] = 1.5,
    ["scout_spidertron_mk2"] = 2,
    ["spidertron"] = 1,
    ["spidertron_mk0"] = 1,
    ["spidertron_mk2"] = 1.5,
    ["spidertron_mk3"] = 2.5,
    ["spidertron_mkn1"] = 0.8,
    ["voyage_spidertron_mk1"] = 1,
    ["voyage_spidertron_mk2"] = 1.2
}

local exoName = 'DoubleSpeedSpidertron_exoskeleton-equipment'
local exoNegativeName = 'DoubleSpeedSpidertron_exoskeleton-equipment-negative'
local reactorName = 'DoubleSpeedSpidertron_fusion-reactor-equipment'

local modify_entity_speed_by_percent = function (entity, percent)
    local exoToUse
    local exoCount
    if percent > 0 then
        exoToUse = exoName
        exoCount = percent
    else
        exoToUse = exoNegativeName
        exoCount = -percent
    end
    for i = 1, exoCount, 1 do
        if entity.grid.put({name=exoToUse}) == nil then
            game.print("Could not add "..exoToUse);
        end
        if entity.grid.put({name=reactorName}) == nil then
            game.print("Could not add "..reactorName);
        end
    end
end

local clear_internal_equipment = function(entity)
    for i, equipment in ipairs(entity.grid.equipment) do
        if (equipment and equipment.valid) then
            if equipment.name == exoName or equipment.name == exoNegativeName or equipment.name == reactorName then
                entity.grid.take({equipment=equipment})
            end
        end
    end
end

local adjust_spidertron = function(spidertron)
    if speed_modifiers[spidertron.name] == nil then return end

    local spidertron_base_speed = 1;


    clear_internal_equipment(spidertron)

    for key, value in pairs(spidertron.grid.get_contents()) do
        if game.equipment_prototypes[key].type == "movement-bonus-equipment" then
            spidertron_base_speed = spidertron_base_speed + game.equipment_prototypes[key].movement_bonus * value
        end
    end


    local desired_speed = spidertron_base_speed * speed_modifiers[spidertron.name];
    local desired_speed_percent = (100 * desired_speed)
    local exoskeletons_needed = desired_speed_percent - (spidertron_base_speed * 100)

    if exoskeletons_needed ~= 0 then
        modify_entity_speed_by_percent(spidertron, exoskeletons_needed);
    end
end

local remove_internal_items_from_player_inventory = function(player)
    for _, inv in pairs({defines.inventory.character_main}) do
        local inventory = player.get_inventory(inv)
        if inventory then
            local itemsRemoved = 1;
            while itemsRemoved ~= 0 do
                itemsRemoved = 0
                itemsRemoved = itemsRemoved + inventory.remove(exoName);
                itemsRemoved = itemsRemoved + inventory.remove(exoNegativeName);
                itemsRemoved = itemsRemoved + inventory.remove(reactorName);
            end
        end
    end
end

local reevaluate = function(event)
    local player = game.get_player(event.player_index)
    if player.opened_gui_type ~= defines.gui_type.entity then return end


    local opened = player.opened
    if not (opened and opened.valid and opened.object_name == "LuaEntity" and opened.type == "spider-vehicle") then return end

    adjust_spidertron(opened)
    remove_internal_items_from_player_inventory(player)
end

local on_built_entity = function(event)
    local entity = event.created_entity;
    if entity.type ~= 'spider-vehicle' then return end
    adjust_spidertron(entity)
end

local initialize = function()
   for name, surface in pairs(game.surfaces) do
       for i, spider in ipairs(surface.find_entities_filtered({type='spider-vehicle'})) do
           adjust_spidertron(spider)
       end
   end
end

local lib = {}

lib.events =
{
    [defines.events.on_player_placed_equipment] = reevaluate,
    [defines.events.on_player_removed_equipment] = reevaluate,
    [defines.events.on_built_entity] = on_built_entity,
    [defines.events.on_player_joined_game] = on_built_entity,
}


lib.on_init = initialize
lib.on_configuration_changed = initialize

return lib
