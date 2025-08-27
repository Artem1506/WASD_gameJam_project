/// @description Insert description here
// You can write your code in this editor

if (sprite_index == spr_dialog_cloud_but) {
	if (keyboard_check_pressed(vk_anykey)) {
		if (!instance_exists(obj_classiki_powerBar)) {
			instance_create_layer(63, 442, "Instances", obj_classiki_powerBar)
			audio_play_sound(snd_mecanicalClick, 10, false);
			bubble_snd = true;
		}
	}
}

if (current_lap > global.classiki_max_lap) { global.classiki_max_lap = current_lap }

if (global.inGame == false) { instance_destroy(); }

if (instance_exists(obj_classiki_powerBar) || instance_exists(obj_classiki_qte)) {
	sprite_index = noone;
} else { sprite_index = spr_dialog_cloud_but; }

if (instance_exists(obj_classiki_qte)) {
	if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 8) {
		audio_play_sound(snd_gameWin, 20, false);
		addTimer = current_lap*10*room_speed;
		add_second = addTimer div room_speed;
		show_addTimer = true;
		global.game_timer += addTimer;
		global.classiki_win ++;
		alarm[0] = 120;
	}
}

if (current_lap == 8) {
	instance_destroy(obj_classiki_manger);
	if (instance_exists(obj_classiki_powerBar)) {
		instance_destroy(obj_classiki_powerBar); }
	if (instance_exists(obj_classiki_qte)) {
		instance_destroy(obj_classiki_qte); }
	global.inGame = false;
}
