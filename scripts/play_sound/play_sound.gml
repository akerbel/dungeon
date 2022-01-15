// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/*
 * Play random sound from character sound array by sound type.
 *
 * @param array sounds
 * @param int priority
 */
function play_sound(sounds, priority = 10) {
	
	var sound_id = irandom_range(0, array_length(sounds)-1);
	
	if (!audio_is_playing(sound_id)) {
		audio_play_sound(sounds[sound_id],priority, false);
	}

}