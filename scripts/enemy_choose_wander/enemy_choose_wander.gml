// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_choose_wander(enemy) {
	enemy.dir = irandom_range(0, 359);
	enemy.move_x = lengthdir_x(enemy.speed_wander, enemy.dir);
	enemy.move_y = lengthdir_y(enemy.speed_wander, enemy.dir);
}