// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_choose_alert(enemy, player){
	enemy.dir = point_direction(enemy.x, enemy.y, player.x, player.y);
	enemy.move_x = lengthdir_x(enemy.speed_alert, enemy.dir);
	enemy.move_y = lengthdir_y(enemy.speed_alert, enemy.dir);
}