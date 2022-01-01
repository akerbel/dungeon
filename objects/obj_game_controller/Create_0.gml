enum states {
	idle,
	wander,
	alert,
	attack,
	locked
}

enum sound_types {
	death,
	damage,
	alert
}

global.debug = true;

//randomize();

lives = 3;