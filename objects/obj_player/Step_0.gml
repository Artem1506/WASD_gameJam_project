/// @description Insert description here
// You can write your code in this editor

jump_step = 0.25

if (instance_exists(obj_classiki_manger)) { show_debug_message(string(obj_classiki_manger.current_lap)) }

if (instance_exists(obj_classiki_manger)) {
	if (!instance_exists(obj_classiki_powerBar) || !instance_exists(obj_classiki_qte)) {
		x = 20;
		y = 305;
		sprite_index = spr_player_idle_sR;
	}
}
if (instance_exists(obj_classiki_manger) && obj_classiki_manger.current_lap != noone) {
		if (obj_classiki_manger.current_lap == 1) {
			sprite_index = spr_player_jump2t1_sR
			x += jump_step;
			if (x >= 40) {sprite_index = spr_player_idle_sR}
	}
}