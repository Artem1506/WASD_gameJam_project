/// @description Insert description here
// You can write your code in this editor

jump_step = 0.5

//if (instance_exists(obj_classiki_manger)) { show_debug_message(string(obj_classiki_manger.current_lap)) }

if (instance_exists(obj_classiki_manger) && obj_classiki_manger.sprite_index == spr_dialog_cloud_but) {
	if (!instance_exists(obj_classiki_powerBar) || !instance_exists(obj_classiki_qte)) {
		x = 20;
		y = 362;
		sprite_index = spr_player_idle_sR;
	}
}
if (instance_exists(obj_classiki_manger) && obj_classiki_manger.current_lap != noone) {
	if (instance_exists(obj_classiki_qte)) {
		if (obj_classiki_qte.combo == true) {
			sprite_index = spr_player_jump2t1_sR
			if (obj_classiki_qte.current_step == 1) { x += jump_step; }
			if (x >= 40) {
				x = 40;
				sprite_index = spr_player_idle_sR
			}
		}
	}
}
