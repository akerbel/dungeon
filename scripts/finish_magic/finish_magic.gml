// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function finish_magic(magic){
	
	if (magic.state != magic_states.finishing) {
		magic.sprite_index = magic.sprites[magic_states.finishing];
		magic.image_index = 0;
		play_sound(magic.sounds[magic_states.finishing]);
		magic.alarm[0] = magic.finishing_time;
		magic.state = magic_states.finishing;
		
		if (magic.random_angle_finishing == true) {
			magic.image_angle = irandom_range(0, 359);
		}
	}
	
}