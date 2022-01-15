/// @description

if (speed_fly > 0 && state != magic_states.finishing) {
	
	move_x = lengthdir_x(speed_fly, image_angle);
	move_y = lengthdir_y(speed_fly, image_angle);
	
	x += lengthdir_x(speed_fly, image_angle);
	y += lengthdir_y(speed_fly, image_angle);
	
	if (!place_free(x, y)) {
		finish_magic(self);
	}
}
