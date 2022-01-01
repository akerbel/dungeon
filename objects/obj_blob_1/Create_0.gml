/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Change default sprites
sprites[states.idle] = spr_blob_1;
sprites[states.wander] = spr_blob_1;
sprites[states.alert] = spr_blob_1;
sprites[states.attack] = spr_blob_1;

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