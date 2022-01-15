/// @description 

if (other.damage > 0 && ds_list_find_index(affected_magic, other.id) == -1)  {
	hp -= other.damage;
	
	if (hp <= 0) {
		state = states.dead;
		damaged = false;
		image_index = 0;
		alarm[0] = room_speed * 0.5;
		play_sound(sounds[sound_types.death]);
	}
	else {
		damaged = true;
		alarm[1] = room_speed * 0.5;
	}
	
	ds_list_add(affected_magic, other.id);
	
	if (other.state != magic_states.finishing) {
		finish_magic(other);
	}
	
}