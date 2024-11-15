local sounds = require("__base__.prototypes.entity.sounds")
local spidertron_mk_1_animations =
	require("__spidertrontiers-community-updates__.spidertron_animations.spidertron_mkn1-animations")
local ground_triggers = require("__spidertrontiers-community-updates__.prototypes.ground_triggers")

local spidertron_mk_1 = {
	type = "spider-vehicle",
	name = "spidertron_mkn1",
	collision_box = { { -1, -1 }, { 1, 1 } },
	selection_box = { { -1, -1 }, { 1, 1 } },
	icon = "__spidertrontiers-community-updates__/graphics/icons/spidertron_mkn1.png",
	mined_sound = { filename = "__core__/sound/deconstruct-large.ogg", volume = 0.8 },
	open_sound = { filename = "__base__/sound/spidertron/spidertron-door-open.ogg", volume = 0.35 },
	close_sound = { filename = "__base__/sound/spidertron/spidertron-door-close.ogg", volume = 0.4 },
	sound_minimum_speed = 0.1,
	sound_scaling_ratio = 0.6,
	trash_inventory_size = 6,
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
	minable = { mining_time = 1, result = "spidertron_mkn1" },
	max_health = 1200, --modified
	resistances = {
		{
			type = "fire",
			decrease = 15,
			percent = 60,
		},
		{
			type = "physical",
			decrease = 5,
			percent = 60,
		},
		{
			type = "impact",
			decrease = 50,
			percent = 80,
		},
		{
			type = "explosion",
			decrease = 20,
			percent = 95, --modified
		},
		{
			type = "acid",
			decrease = 0,
			percent = 70,
		},
		{
			type = "laser",
			decrease = 0,
			percent = 70,
		},
		{
			type = "electric",
			decrease = 0,
			percent = 70,
		},
	},
	minimap_representation = {
		filename = "__spidertrontiers-community-updates__/graphics/entity/spidertron_mkn1/spidertron-map.png",
		flags = { "icon" },
		size = { 128, 128 },
		scale = 0.5,
	},
	corpse = "spidertron-mk-1-remnants",
	dying_explosion = "spidertron-explosion",
	energy_per_hit_point = 1,
	guns = { "spidertron-mkn1-rocket-launcher-1", "spidertron-mkn1-machine-gun-1" },
	inventory_size = 20,
	equipment_grid = "spidertron-mk-1-equipment-grid",
	height = 1,
	torso_rotation_speed = 0.005,
	chunk_exploration_radius = 2, --modified
	selection_priority = 51,
	graphics_set = spidertron_mk_1_animations.torso,
	energy_source = {
		type = "void",
	},
	movement_energy_consumption = "250kW",
	automatic_weapon_cycling = false,
	chain_shooting_cooldown_modifier = 0.5,
	spider_engine = {
		legs = {
			{ -- 1
				leg = "spidertron-mk-1-leg-1",
				mount_position = util.by_pixel(12.9, 17.8), --{0.5, -0.75},
				walking_group = 1,
				ground_position = { 1.6 * 1.8, 2.3 * 0.9 },
				blocking_legs = { 2 },
				leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla(),
			},
			{ -- 2
				leg = "spidertron-mk-1-leg-2",
				mount_position = util.by_pixel(20.9, -6.8), --{0.75, -0.25},
				walking_group = 2,
				ground_position = { 2.7 * 1.3, -0.87 * 1.3 },
				blocking_legs = { 1, 3 },
				leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla(),
			},
			{ -- 3
				leg = "spidertron-mk-1-leg-3",
				mount_position = util.by_pixel(0, -22), --{0.75, 0.25},
				walking_group = 1,
				ground_position = { 0 * 1.3, -2.8 * 1.3 },
				blocking_legs = { 2, 4 },
				leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla(),
			},
			{ -- 4
				leg = "spidertron-mk-1-leg-4",
				mount_position = util.by_pixel(-20.9, -6.8), --{0.5, 0.75},
				walking_group = 2,
				ground_position = { -2.7 * 1.3, -0.87 * 1.3 },
				blocking_legs = { 3 },
				leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla(),
			},
			{ -- 5
				leg = "spidertron-mk-1-leg-5",
				mount_position = util.by_pixel(-12.9, 17.8), --{-0.5, -0.75},
				walking_group = 1,
				ground_position = { -1.6 * 1.8, 2.3 * 0.9 },
				blocking_legs = { 1 },
				leg_hit_the_ground_trigger = ground_triggers.get_leg_hit_the_ground_trigger_vanilla(),
			},
		},
		military_target = "spidertron-military-target",
	},
}

local spidertron_mk_1_remnants = {
	type = "corpse",
	name = "spidertron-mk-1-remnants",
	icon = "__spidertrontiers-community-updates__/graphics/icons/spidertron_mkn1.png",
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
				filename = "__spidertrontiers-community-updates__/graphics/entity/spidertron_mkn1/remnants/spidertron-remnants.png",
				line_length = 1,
				width = 224,
				height = 224,
				frame_count = 1,
				variation_count = 1,
				axially_symmetrical = false,
				direction_count = 1,
				shift = util.by_pixel(0, 0),
				r_version = {
					filename = "__spidertrontiers-community-updates__/graphics/entity/spidertron_mkn1/remnants/hr-spidertron-remnants.png",
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
				filename = "__spidertrontiers-community-updates__/graphics/entity/spidertron_mkn1/remnants/mask/spidertron-remnants-mask.png",
				width = 184,
				height = 176,
				frame_count = 1,
				-- tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
				apply_runtime_tint = true,
				direction_count = 1,
				shift = util.by_pixel(9, 1),
				hr_version = {
					priority = "low",
					filename = "__spidertrontiers-community-updates__/graphics/entity/spidertron_mkn1/remnants/mask/hr-spidertron-remnants-mask.png",
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
	for index, leg in pairs(spidertron_mk_1.spider_engine.legs) do
		spidertron_mk_1.spider_engine.legs[index].leg_hit_the_ground_trigger = nil
	end
end

require("lib/fuel").addEnergySource(spidertron_mk_1, 150, 2)

data:extend({
	spidertron_mk_1,
	spidertron_mk_1_remnants,
})
for i = 1, 5 do
	data:extend({
		utils.make_spidertron_leg(
			"spidertron-mk-1",
			0.85,
			0.06,
			0.02,
			i,
			spidertron_mk_1_animations,
			{ knee_height = 1.5 }
		),
	})
end
