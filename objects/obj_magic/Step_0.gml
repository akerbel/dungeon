/// @description

if (speed_fly > 0 && state != magic_states.finishing) {
	x += lengthdir_x(speed_fly, image_angle);
	y += lengthdir_y(speed_fly, image_angle);
}
