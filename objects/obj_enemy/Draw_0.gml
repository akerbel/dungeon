/// @description Insert description here

if (damaged) {
	sprite_index = sprites[states.damaged];
}
else {
	sprite_index = sprites[state];
}

draw_self();

if (state = states.alert) {
	var shake = image_index;
	if (shake > image_number / 2) {
		shake = image_number - image_index
	}
	draw_sprite(spr_alert, image_index, x, y - sprite_height - shake);
}

//if (damaged == true) {
//	draw_sprite(spr_bam, image_index, x, y);
//}


if (global.debug == true) {
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red, c_red, c_red, c_red, true);
	draw_circle_color(x, y, aggro_radius, c_red, c_red, true);
	draw_circle_color(x, y, follow_radius, c_yellow, c_yellow, true);
	
}
