/// @description Insert description here

draw_self();

if (global.debug == true) {
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red, c_red, c_red, c_red, true);
	draw_circle_color(x, y, aggro_radius, c_red, c_red, true);
	draw_circle_color(x, y, attack_radius, c_red, c_red, true);
	draw_circle_color(x, y, follow_radius, c_yellow, c_yellow, true);
}
