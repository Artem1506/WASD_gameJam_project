/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_classiki_powerBar) || instance_exists(obj_classiki_qte)) {
	sprite_index = noone;
} else { sprite_index = spr_dialog_cloud_but }

if (instance_exists(obj_classiki_qte)) {
	if (current_lap == 1 && obj_classiki_qte.current_step == 13) {
		global.game_timer += 2*60*room_speed;
	}
}
