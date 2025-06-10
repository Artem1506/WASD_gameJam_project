/// @description Insert description here
// You can write your code in this editor

var resp_t = response_time - obj_classiki_manger.current_lap * 5;

if (global.inGame == false) { instance_destroy(); }

if (combo == true) {
	if (random_button == noone) {
		random_button = irandom(2);
		combo = false

		if (random_button == 0) { sprite_index = spr_lmb; }
		else if (random_button == 1) { sprite_index = spr_rmb; }
		else if (random_button == 2) { sprite_index = spr_lrmb; }
		alarm[0] = resp_t;
	}
}

if (combo == false) {
	if (random_button == 0) {
		if (mouse_check_button_pressed(mb_left)) { 
			combo = true; 
			part_system_position(part_system_create(ps_classiki_correct), x, y);
			audio_play_sound(snd_correctQte, 10, false);
			sprite_index = noone;
		} 
		if (mouse_check_button_pressed(mb_right)) { audio_play_sound(snd_fail_short, 10, false); }
	}
	if (random_button == 1) { 
		if (mouse_check_button_pressed(mb_right)) { 
			combo = true; 
			part_system_position(part_system_create(ps_classiki_correct), x, y);
			audio_play_sound(snd_correctQte, 10, false);
			sprite_index = noone;
		}
		if (mouse_check_button_pressed(mb_left)) { audio_play_sound(snd_fail_short, 10, false); }
	}
	if (random_button == 2) { 
		if (mouse_check_button(mb_left) && mouse_check_button(mb_right)) { 
		combo = true; 
		part_system_position(part_system_create(ps_classiki_correct), x, y);
		audio_play_sound(snd_correctQte, 10, false);
		sprite_index = noone;
		} else { 
			if (mouse_check_button_pressed(mb_any)) { audio_play_sound(snd_fail_short, 10, false); }
		}
	}
}

if (current_step == 15) { 
	obj_classiki_manger.current_lap += 1;
	instance_create_layer(63, 390, "Instances", obj_classiki_powerBar)
	instance_destroy()
} 
