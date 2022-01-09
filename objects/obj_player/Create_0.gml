/// @description 

// Inherit the parent event
event_inherited();

// Change default sprites
sprites[states.idle] = spr_human_1;
sprites[states.wander] = spr_human_1;
sprites[states.alert] = spr_human_1;
sprites[states.attack] = spr_human_1;

// Change default sounds
sound[sound_types.death] = [
	snd_human_death_1
];

// Change weapon object
weapon = obj_firebolt;
weapon_heavy = obj_fireball;
cast_time = 1;
cast_heavy_time = 30;

// Player custom code.
cast_timer = -1;
