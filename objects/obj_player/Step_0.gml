move_x = 0;
move_y = 0;

if (keyboard_check(ord("D"))) {
	move_x += speed_walk;
}
if (keyboard_check(ord("A"))) {
	move_x -= speed_walk;
}
if (keyboard_check(ord("S"))) {
	move_y += speed_walk;
}
if (keyboard_check(ord("W"))) {
	move_y -= speed_walk;
}

// Move character.
if ((move_x != 0 || move_y != 0) && place_free(x+move_x, y+move_y)) {
	x += move_x;
	y += move_y;
}

// Find character direction.
dir = point_direction(x, y, device_mouse_x(0), device_mouse_y(0));

// Turn the sprite regarding direction.
image_xscale = device_mouse_x(0) - x >= 0 ? 1 : -1;


// Casting spells.
// Start casting.
if (device_mouse_check_button_pressed(0, mb_left) && cast_timer == -1) {
	cast_timer = 0;
}
if (cast_timer != -1) {
	cast_timer++;
}

// Finish casting.
if (device_mouse_check_button_released(0, mb_left)) {
	
	// Heavy attack.
	if (cast_timer >= cast_heavy_time) {
		weapon_attack(weapon_heavy, self);
	}
	// Simple attack.
	else if (cast_timer >= cast_time) {
		weapon_attack(weapon, self);
	}
	cast_timer = -1;
}
