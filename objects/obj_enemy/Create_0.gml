event_inherited();

state = states.idle;
counter = 0;
behavior_change_speed = 1;
enemy_choose_wander(self);

affected_magic = ds_list_create();