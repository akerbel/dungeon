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


if (move_x != 0 || move_y != 0) {
	
	// Find character direction.
	dir = point_direction(x, y, x+move_x, y+move_y);
	
	// Find character move distantion regarding collisions.
	if (!place_free(x+move_x, y+move_y)) {
		while (!place_free(x+move_x, y+move_y)) {
			move_x -= sign(move_x);
			move_y -= sign(move_y);
		}	
	}
	
	// Move character.
	x += move_x;
	y += move_y;
	
	// Turn the sprite regarding direction.
	if (move_x != 0) {
		image_xscale = sign(move_x);
	}
	
}

// Melee attack.
if (keyboard_check_pressed(vk_space)) {
	melee_attack(weapon, self);
}
