/// @description Insert description here
// You can write your code in this editor

if (combo == true) {
	if (random_button == noone) {
		random_button = irandom(1);
		//random_button = irandom(2);
		combo = false

		if (random_button == 0) { sprite_index = spr_lmb; }
		else if (random_button == 1) { sprite_index = spr_rmb; }
		else if (random_button == 2) { sprite_index = spr_lrmb; }
		alarm[0] = 120;
	}
}

if (combo == false) {
	if (random_button == 0 && mouse_check_button_pressed(mb_left)) { 
		combo = true; 
		part_system_position(part_system_create(ps_classiki_correct), x, y);
		audio_play_sound(snd_correctQte, 10, false);
		sprite_index = noone;
	}
	if (random_button == 1 && mouse_check_button_pressed(mb_right)) { 
		combo = true; 
		part_system_position(part_system_create(ps_classiki_correct), x, y);
		audio_play_sound(snd_correctQte, 10, false);
		sprite_index = noone;
	}
//if (random_button == 2 && mouse_check_button_pressed(mb_left) && mouse_check_button_pressed(mb_right)) { correct_button = true; }
}

if (current_step == 13) { 
	obj_classiki_manger.current_lap += 1;
	instance_create_layer(287, 320, "Instances", obj_classiki_powerBar)
	instance_destroy()
} 
	
show_debug_message(string(obj_classiki_manger.current_lap))
show_debug_message(string(current_step))
