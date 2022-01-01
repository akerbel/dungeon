/// @description 

// Set default sprites
sprites[states.idle] = spr_skeleton_1;
sprites[states.wander] = spr_skeleton_1;
sprites[states.alert] = spr_skeleton_1;
sprites[states.attack] = spr_skeleton_1;

// Set default sounds
sound[sound_types.death] = [
	snd_skeleton_1,
	snd_skeleton_2
];
sound[sound_types.damage] = [
	snd_metal_1,
	snd_metal_2,
	snd_metal_3
]
sound[sound_types.alert] = [
	snd_skeleton_alert_1,
	snd_skeleton_alert_2
];