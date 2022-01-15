/// @description 

if (state != door_states.opened) {
	state = door_states.opened;
	finish_magic(other);
	
	if (target_cover != "") {
		open_cover(target_cover);
	}
	
}




