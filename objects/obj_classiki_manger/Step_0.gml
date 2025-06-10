/// @description Insert description here
// You can write your code in this editor

if (global.inGame == false) { instance_destroy(); }

if (instance_exists(obj_classiki_powerBar) || instance_exists(obj_classiki_qte)) {
	sprite_index = noone;
} else { sprite_index = spr_dialog_cloud_but }

if (instance_exists(obj_classiki_qte)) {
	if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 15) {
		global.game_timer += current_lap*30*room_speed;
	}
}
