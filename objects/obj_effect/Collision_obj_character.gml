/// @description 

if (!damage_is_made) {
	
	if (other.object_index == obj_player) {
		lives -= damage;
	}
	damage_is_made = true;
}