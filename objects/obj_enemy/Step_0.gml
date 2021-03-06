if (state != states.alert && state != states.dead && collision_circle(x, y, aggro_radius, obj_player, false, true)) {
	state = states.alert;
	play_sound(sounds[sound_types.alert]);
}

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
		image_xscale = sign(move_x) ?? 1;
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

	if (instance_exists(obj_player)) {
		var player = instance_nearest(x, y, obj_player);
		mp_potential_step_object(player.x, player.y, speed_alert, obj_collision);
		if (sign(player.x - x) != 0) {
			image_xscale = sign(player.x - x) ?? 1;
		}
		
	}
	
	// Stop following
	if (!collision_circle(x, y, follow_radius, obj_player, false, true)) {
		state = states.idle;
		enemy_choose_wander(self);
	}
	
}