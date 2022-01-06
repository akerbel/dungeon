// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/*
 * Weapon attack.
 *
 * @param object id attach_effect
 * @param object attacker
 *
 * return Effect object.
 */
function weapon_attack(attack_effect, attacker) {
	var attack_x = x;
	var attack_y = y;
	
	attack_x += lengthdir_x(abs(attacker.sprite_width), attacker.dir);
	attack_y += lengthdir_y(abs(attacker.sprite_height), attacker.dir);
	
	var attack = instance_create_depth(attack_x, attack_y, -10, attack_effect);
	attack.image_angle = attacker.dir;
	attack.attacker = attacker;
	
	return attack;
}