alarm[0] = life_time;

// Define default effect sound.
if (!variable_instance_exists(id, "sound")) {
	sound = [
		snd_swoop_1,
		snd_swoop_2,
		snd_swoop_3
	];
}

image_angle = irandom_range(0, 360);

play_sound(sound);
