if (collision_circle(x, y, aggro_radius, obj_player, false, true)) {
	state = states.alert;
}

var player = collision_circle(x, y, attack_radius, obj_player, false, true);
if (player) {
	state = states.attack;
	dir = point_direction(x, y, player.x, player.y);
}

sprite_index = sprites[state];

if (state == states.idle) {

	counter++;
	
	if (counter >= room_speed * behavior_change_speed) {
		var wander = choose(0,1);
		if (wander == 1) {
			state = states.wander;
		}
		counter = 0;
	}
	
}

else if (state == states.wander) {
	
	counter++;
	if (!place_free(x+move_x, y+move_y)) {
		state = states.idle;
		enemy_choose_wander(self);
	}
	else {
		x += move_x;
		y += move_y;
		image_xscale = sign(move_x) ?? 1;;
	}
	
	if (counter >= room_speed * behavior_change_speed) {
		var wander = choose(0,1);
		if (wander == 1) {
			enemy_choose_wander(self);
		}
		else {
			state = states.idle;
		}
		counter = 0;
	}
	
}

else if (state == states.alert) {

	// Following the target
	enemy_choose_alert(self, obj_player);
	if (!place_meeting(x + move_x, y + move_y, obj_player)) {
		x += move_x;
		y += move_y;
		image_xscale = sign(move_x) ?? 1;
	}
	
	// Stop following
	if (!collision_circle(x, y, follow_radius, obj_player, false, true)) {
		state = states.idle;
		enemy_choose_wander(self);
	}
	
}

else if (state == states.attack) {
	
	if (alarm[0] == -1) {
		alarm[0] = attack_delay;
	}
	
	state = states.idle;
	
}