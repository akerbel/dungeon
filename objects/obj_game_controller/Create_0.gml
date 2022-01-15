enum states {
	idle,
	wander,
	alert,
	attack,
	locked,
	damaged,
	dead
}

enum sound_types {
	death,
	damage,
	alert
}

enum magic_states {
	going,
	finishing
}

global.debug = true;

//randomize();

lives = 3;