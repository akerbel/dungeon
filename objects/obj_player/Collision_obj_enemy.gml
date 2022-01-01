/// @description 

if (!damage_immune) {
	lives -= other.damage;
	damage_immune = true;
	alarm[0] = other.damage_speed;
	instance_create_depth(x, y, -10, obj_bam_1);
}