/// @description

if (state == door_states.opened) {
	image_index = floor(image_index);
	if (image_index < image_number - 1) {
		image_index = floor(counter / (room_speed / image_number));
		counter++;
	}
	
	solid = false;
}
else {
	image_index = 0;
}

draw_self();