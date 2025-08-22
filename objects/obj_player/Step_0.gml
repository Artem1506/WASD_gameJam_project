/// @description Insert description here
// You can write your code in this editor

jump_step = 0.5;

if (instance_exists(obj_classiki_manger) && obj_classiki_manger.sprite_index == spr_dialog_cloud_but) {
	if (!instance_exists(obj_classiki_powerBar) || !instance_exists(obj_classiki_qte)) {
		x = 20;
		y = 426;
		sprite_index = spr_player_idle_sR;
	}
}

if (instance_exists(obj_classiki_qte)) {
	if (obj_classiki_qte.start_again == true) { 
		x = 20;
		sprite_index = spr_player_idle_sR;
	}
}

if (instance_exists(obj_classiki_manger) && obj_classiki_manger.current_lap != noone) {
	if (instance_exists(obj_classiki_qte) && obj_classiki_qte.jump == true) {
		x += jump_step;
		if (!audio_is_playing(snd_jump) && 
		jump_snd_played == false) { 
			audio_play_sound(snd_jump, 30, false);
			jump_snd_played = true;  
		}
		
		if (obj_classiki_qte.current_step == 1) {
			sprite_index = spr_player_jump2t1_sR;
			if (x >= 40 && x < 60) {
				x = 40;
				sprite_index = spr_player_idle_sR }
		}
		if (obj_classiki_qte.current_step == 2) {
			sprite_index = spr_player_jump1t2_sR;
			if (x >= 60 && x < 80 ) {
				x = 60;
				sprite_index = spr_player_idle_sR }
		}
		if (obj_classiki_qte.current_step == 3) {
			sprite_index = spr_player_jump2t1_sR;
			if (x >= 80 && x < 100 ) {
				x = 80;
				sprite_index = spr_player_idle_sR }
		}
		if (obj_classiki_qte.current_step == 4) {
			sprite_index = spr_player_jump1t2_sR;
			if (x >= 100 && x < 120 ) {
				x = 100;
				sprite_index = spr_player_idle_sR }
		}
		if (obj_classiki_qte.current_step == 5) {
			sprite_index = spr_player_jump2t1_sR;
			if (x >= 120 && x < 140 ) {
				x = 120;
				sprite_index = spr_player_idle_sR }
		}
		if (obj_classiki_qte.current_step == 6) {
			sprite_index = spr_player_jump1t2_sR;
			if (x >= 140 && x < 160 ) {
				x = 140;
				sprite_index = spr_player_idle_sR }
		}
		if (obj_classiki_qte.current_step == 7) {
			sprite_index = spr_player_jump2t1_sR;
			if (x >= 160 && x < 180 ) {
				x = 160;
				image_index = 0;
				sprite_index = spr_player_jump_sL;
			}
		}
	}
}
	
if (sprite_index = spr_player_jump_sL && image_index >= 34) { 
	sprite_index = spr_player_idle_sR;
	x = 20;
}

if (instance_exists(obj_classiki_powerBar) && sprite_index != spr_player_jump_sL) {
	sprite_index = spr_player_idle_sR;
	x = 20;
}

if (instance_exists(obj_eatOrNot_manger)) {
	if (!instance_exists(obj_eatOrNot)) {
		x = 445;
		y = 357;
		sprite_index = spr_player_idle_sR;
	}
}

if (global.inGame == false) { sprite_index = spr_playerF_idle }
