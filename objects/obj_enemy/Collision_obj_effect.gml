/// @description 

if (other.damage > 0) {
	hp -= other.damage;
	
	if (hp <= 0) {
		dead = true;
		alarm[0] = 30;
	}
	else {
		damaged = true;
		alarm[1] = 30;
	}
	
	instance_destroy(other);
	
}