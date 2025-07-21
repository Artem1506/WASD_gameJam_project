/// @description Insert description here
// You can write your code in this editor

if (current_lap > global.classiki_max_lap) { global.classiki_max_lap = current_lap }

if (global.inGame == false) { instance_destroy(); }

if (instance_exists(obj_classiki_powerBar) || instance_exists(obj_classiki_qte)) {
	sprite_index = noone;
} else { sprite_index = spr_dialog_cloud_but }

if (instance_exists(obj_classiki_qte)) {
	if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 8) {
		audio_play_sound(snd_gameWin, 20, false);
		global.game_timer += addTimer;
		global.classiki_win ++;
		addTimer = current_lap*20*room_speed;
		add_second = addTimer div room_speed;
		show_addTimer = true;
		alarm[0] = 120;
	}
}
