/// @description 

alarm[0] = lifetime;

state = magic_states.going;

// Define angle
if (random_angle == true) {
	image_angle = irandom_range(0, 359);
}

// Define sprites
if (!variable_instance_exists(id, "sprites")) {
	sprites[magic_states.going] = spr_firebolt;
	sprites[magic_states.finishing] = spr_small_blow_1;
}

// Define default effect sound.
if (!variable_instance_exists(id, "sound")) {
	sounds[magic_states.going] = [
		snd_fire_1,
		snd_fire_2,
	];
	sounds[magic_states.finishing] = [
		snd_blow_1,
		snd_blow_2
	];
}

play_sound(sounds[magic_states.going]);