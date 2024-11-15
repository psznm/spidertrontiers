local sounds = require("__base__.prototypes.entity.sounds")
local prototype_spidertron_animations =
	require("__spidertrontiers-community-updates__.spidertron_animations.prototype_spidertron-animations")
local ground_triggers = require("__spidertrontiers-community-updates__.prototypes.ground_triggers")

local prototype_spidertron = {
	type = "spider-vehicle",
	name = "prototype_spidertron",
	collision_box = { { -1, -1 }, { 1, 1 } },
	selection_box = { { -1, -1 }, { 1, 1 } },
	icon = "__spidertrontiers-community-updates__/graphics/icons/prototype_spidertron.png",
	mined_sound = { filename = "__core__/sound/deconstruct-large.ogg", volume = 0.8 },
	open_sound = { filename = "__base__/sound/spidertron/spidertron-door-open.ogg", volume = 0.35 },
	close_sound = { filename = "__base__/sound/spidertron/spidertron-door-close.ogg", volume = 0.4 },
	sound_minimum_speed = 0.1,
	sound_scaling_ratio = 0.6,
	trash_inventory_size = 2,
	working_sound = {
		sound = {
			filename = "__base__/sound/spidertron/spidertron-vox.ogg",
			volume = 0.35,
		},
		activate_sound = {
			filename = "__base__/sound/spidertron/spidertron-activate.ogg",
			volume = 0.5,
		},
		deactivate_sound = {
			filename = "__base__/sound/spidertron/spidertron-deactivate.ogg",
			volume = 0.5,
		},
		match_speed_to_activity = true,
	},
	icon_size = 64,
	icon_mipmaps = 4,
	weight = 1,
	braking_force = 1,
	friction_force = 1,
	flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
	collision_mask = { layers = {} },
	minable = { mining_time = 1, result = "prototype_spidertron" },
	max_health = 150, --modified
	resistances = {
		{
			type = "fire",
			decrease = 0,
			percent = 0,
		},
		{
			type = "physical",
			decrease = 0,
			percent = 0,
		},
		{
			type = "impact",
			decrease = 50,
			percent = 80,
		},
		{
			type = "explosion",
			decrease = 0,
			percent = 0, --modified
		},
		{
			type = "acid",
			decrease = 0,
			percent = 0,
		},
		{
			type = "laser",
			decrease = 0,
			percent = 0,
		},
		{
			type = "electric",
			decrease = 0,
			percent = 0,
		},
	},
	minimap_representation = {
		filename = "__spidertrontiers-community-updates__/graphics/entity/prototype_spidertron/spidertron-map.png",
		flags = { "icon" },
		size = { 128, 128 },
		scale = 0.5,
	},
	corpse = "prototype-spidertron-remnants",
	dying_explosion = "spidertron-explosion",
	energy_per_hit_point = 1,
	guns = {},
	inventory_size = 5,
	equipment_grid = "prototype-spidertron-equipment-grid",
	height = 1,
	torso_rotation_speed = 0.005,
	chunk_exploration_radius = 1, --modified
	selection_priority = 51,
	graphics_set = prototype_spidertron_animations.torso,
	energy_source = {
		type = "void",
	},
	automatic_weapon_cycling = false,
	chain_shooting_cooldown_modifier = 0.5,
	spider_engine = {
		legs = {
			{ -- 1
				leg = "prototype-spidertron-leg-1",
				walking_group = 1,
				mount_position = util.by_pixel(19.9, 11.5), --{0.5, -0.75},
				ground_position = { 2.59 * 1 * 1.2, 1.5 * 1.6 * 1.2 },
				blocking_legs = { 2, 3 },
				leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla(),
			},
			{ -- 2
				leg = "prototype-spidertron-leg-2",
				mount_position = util.by_pixel(0, -23), --{0.75, -0.25},
				walking_group = 2,
				ground_position = { 0 * 1, -3 * 1 },
				blocking_legs = { 1, 3 },
				leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla(),
			},
			{ -- 3
				leg = "prototype-spidertron-leg-3",
				mount_position = util.by_pixel(-19.9, 11.5), --{0.75, 0.25},
				walking_group = 3,
				ground_position = { -2.59 * 1 * 1.2, 1.5 * 1.6 * 1.2 },
				blocking_legs = { 2, 1 },
				leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla(),
			},
		},
		military_target = "spidertron-military-target",
	},
}

local prototype_spidertron_remnants = {
	type = "corpse",
	name = "prototype-spidertron-remnants",
	icon = "__spidertrontiers-community-updates__/graphics/icons/prototype_spidertron.png",
	icon_size = 64,
	icon_mipmaps = 4,
	flags = { "placeable-neutral", "not-on-map" },
	subgroup = "transport-remnants",
	order = "a-l-a",
	selection_box = { { -3, -3 }, { 3, 3 } },
	tile_width = 3,
	tile_height = 3,
	selectable_in_game = false,
	time_before_removed = 60 * 60 * 15, -- 15 minutes
	final_render_layer = "remnants",
	remove_on_tile_placement = false,
	animation = make_rotated_animation_variations_from_sheet(1, {
		layers = {
			{
				filename = "__spidertrontiers-community-updates__/graphics/entity/prototype_spidertron/remnants/spidertron-remnants.png",
				line_length = 1,
				width = 224,
				height = 224,
				frame_count = 1,
				variation_count = 1,
				axially_symmetrical = false,
				direction_count = 1,
				shift = util.by_pixel(0, 0),
				r_version = {
					filename = "__spidertrontiers-community-updates__/graphics/entity/prototype_spidertron/remnants/hr-spidertron-remnants.png",
					line_length = 1,
					width = 448,
					height = 448,
					frame_count = 1,
					variation_count = 1,
					axially_symmetrical = false,
					direction_count = 1,
					shift = util.by_pixel(0, 0),
					scale = 0.5,
				},
			},
			{
				priority = "low",
				filename = "__spidertrontiers-community-updates__/graphics/entity/prototype_spidertron/remnants/mask/spidertron-remnants-mask.png",
				width = 184,
				height = 176,
				frame_count = 1,
				-- tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
				apply_runtime_tint = true,
				direction_count = 1,
				shift = util.by_pixel(9, 1),
				hr_version = {
					priority = "low",
					filename = "__spidertrontiers-community-updates__/graphics/entity/prototype_spidertron/remnants/mask/hr-spidertron-remnants-mask.png",
					width = 366,
					height = 350,
					frame_count = 1,
					--tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
					apply_runtime_tint = true,
					direction_count = 1,
					shift = util.by_pixel(9, 1),
					scale = 0.5,
				},
			},
		},
	}),
}

if settings.startup["show-spidertron-legs"].value == false then
	for index, leg in pairs(prototype_spidertron.spider_engine.legs) do
		prototype_spidertron.spider_engine.legs[index].leg_hit_the_ground_trigger = nil
	end
end

require("lib/fuel").addEnergySource(prototype_spidertron, 50, 1)

data:extend({
	prototype_spidertron,
	prototype_spidertron_remnants,
})
for i = 1, 3 do
	data:extend({
		utils.make_spidertron_leg(
			"prototype-spidertron",
			1,
			0.06,
			0.1,
			i,
			prototype_spidertron_animations,
			{ knee_height = 1.5 }
		),
	})
end
