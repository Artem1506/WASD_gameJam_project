/// @description Insert description here
// You can write your code in this editor

if (global.inGame == false) { instance_destroy(); }

if (obj_player.sprite_index != spr_player_jump_sL && keyboard_check_pressed(vk_space)) {
	if (throw_bit == false) {
		throw_bit = true;
		audio_play_sound(snd_throwBit, 10, false);
		part_system_position(part_system_create(ps_classiki_dropBit), x2, y-25);
	}
	if (throw_resalt == obj_classiki_manger.current_lap || 
	(obj_classiki_manger.current_lap >= 7 && throw_resalt == 7)) {
		if (!instance_exists(obj_classiki_qte)) {
			instance_create_layer(132, 456, "HUD", obj_classiki_qte)
			instance_destroy()
		}
	} else {
		if (dialog_1 != true) { global.classiki_loss ++; }
		audio_play_sound(snd_fail, 10, false);
		dialog_1 = true;
		alarm[0] = 120
	}
}

if (throw_bit == false) { 
	if (x2 < x1+20) { x2 += 0.9; throw_resalt = 1; } 
	else if (x2 >= x1+20 && x2 < x1+40) { x2 += 1.1; throw_resalt = 2; } 
	else if (x2 >= x1+40 && x2 < x1+60) { x2 += 1.3; throw_resalt = 3;} 
	else if (x2 >= x1+60 && x2 < x1+80) { x2 += 1.5; throw_resalt = 4;} 
	else if (x2 >= x1+80 && x2 < x1+100) { x2 += 1.7; throw_resalt = 5;} 
	else if (x2 >= x1+100 && x2 < x1+120) { x2 += 1.9; throw_resalt = 6;} 
	else if (x2 >= x1+120 && x2 < x1+140) { x2 += 2.2; throw_resalt = 7;} 
	else if (x2 >= x1+140 && x2 < x1+150) { x2 += 2; throw_resalt = 8;}
	else {
		if (x2 > x1) { 
			x2 = x;
			if (x2 < x1) x2 = x1;
		}
	}
}
