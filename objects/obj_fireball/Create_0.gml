/// @description Insert description here

// Define sprites
sprites[magic_states.going] = spr_fireball;
sprites[magic_states.finishing] = choose(spr_blow_1, spr_blow_2);

damage = 5;

torsion = true;
// Inherit the parent event
event_inherited();