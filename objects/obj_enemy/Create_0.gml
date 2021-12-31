event_inherited();

state = states.idle;
counter = 0;
behavior_change_speed = 1;
enemy_choose_wander(self);
alarm[0] = 0;

// Change default sprites
sprites[states.idle] = spr_skeleton_1;
sprites[states.wander] = spr_skeleton_1;
sprites[states.alert] = spr_skeleton_1;
sprites[states.attack] = spr_skeleton_1;