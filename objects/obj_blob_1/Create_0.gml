/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

hp = 5;

// Change default sprites
sprites[states.idle] = spr_blob_small_idle;
sprites[states.wander] = spr_blob_small_walk;
sprites[states.alert] = spr_blob_small_walk;
sprites[states.attack] = spr_blob_small_idle;
sprites[states.damaged] = spr_blob_small_damaged;
sprites[states.dead] = spr_blob_small_dead;

// Change default sounds
sound[sound_types.death] = [
	snd_blob_1,
	snd_blob_2
];
sound[sound_types.damage] = [
	snd_blob_1,
	snd_blob_2
]
sound[sound_types.alert] = [
	snd_blob_alert_1,
	snd_blob_alert_2
];