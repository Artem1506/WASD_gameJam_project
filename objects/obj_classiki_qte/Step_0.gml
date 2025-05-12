/// @description Insert description here
// You can write your code in this editor

if (random_button == noone) {
	random_button = irandom(2);

	if (random_button == 0) { sprite_index = spr_lmb; }
	else if (random_button == 1) { sprite_index = spr_rmb; }
	else if (random_button == 2) { sprite_index = spr_lrmb; }
}

if (random_button == 0 && mouse_check_button_pressed(mb_left)) { combo = true; }
if (random_button == 1) { sprite_index = spr_rmb; }
if (random_button == 2) { sprite_index = spr_lrmb; }

if (combo != true) { instance_destroy() }