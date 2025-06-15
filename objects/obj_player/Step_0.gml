/// @description Insert description here
// You can write your code in this editor

jump_step = 0.5;

if (instance_exists(obj_classiki_manger) && obj_classiki_manger.sprite_index == spr_dialog_cloud_but) {
	if (!instance_exists(obj_classiki_powerBar) || !instance_exists(obj_classiki_qte)) {
		x = 20;
		y = 362;
		sprite_index = spr_player_idle_sR;
	}
}
if (instance_exists(obj_classiki_manger) && obj_classiki_manger.current_lap != noone) {
	if (instance_exists(obj_classiki_qte)) {
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 1) {
			sprite_index = spr_player_jump2t1_sR
			x += jump_step;
			if (x >= 40 && x < 60) {
				x = 40;
				sprite_index = spr_player_idle_sR }
		}
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 2) {
			sprite_index = spr_player_jump1t2_sR
			x += jump_step;
			if (x >= 60 && x < 80 ) {
				x = 60;
				sprite_index = spr_player_idle_sR }
		}
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 3) {
			sprite_index = spr_player_jump2t1_sR
			x += jump_step;
			if (x >= 80 && x < 100 ) {
				x = 80;
				sprite_index = spr_player_idle_sR }
		}
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 4) {
			sprite_index = spr_player_jump1t2_sR
			x += jump_step;
			if (x >= 100 && x < 120 ) {
				x = 100;
				sprite_index = spr_player_idle_sR }
		}
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 5) {
			sprite_index = spr_player_jump2t1_sR
			x += jump_step;
			if (x >= 120 && x < 140 ) {
				x = 120;
				sprite_index = spr_player_idle_sR }
		}
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 6) {
			sprite_index = spr_player_jump1t2_sR
			x += jump_step;
			if (x >= 140 && x < 160 ) {
				x = 140;
				sprite_index = spr_player_idle_sR }
		}
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 7) {
			sprite_index = spr_player_jump2t1_sR
			x += jump_step;
			if (x >= 160 && x < 180 ) {
				x = 160;
				sprite_index = spr_player_idle_sL }
		}
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 8) {
			sprite_index = spr_player_jump1t2_sL
			x -= jump_step;
			if (x <= 140 ) {
				x = 140;
				sprite_index = spr_player_idle_sL }
		}
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 9) {
			sprite_index = spr_player_jump2t1_sL
			x -= jump_step;
			if (x <= 120 ) {
				x = 120;
				sprite_index = spr_player_idle_sL }
		}
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 10) {
			sprite_index = spr_player_jump1t2_sL
			x -= jump_step;
			if (x <= 100 ) {
				x = 100;
				sprite_index = spr_player_idle_sL }
		}
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 11) {
			sprite_index = spr_player_jump2t1_sL
			x -= jump_step;
			if (x <= 80 ) {
				x = 80;
				sprite_index = spr_player_idle_sL }
		}
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 12) {
			sprite_index = spr_player_jump1t2_sL
			x -= jump_step;
			if (x <= 60 ) {
				x = 60;
				sprite_index = spr_player_idle_sL }
		}
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 13) {
			sprite_index = spr_player_jump2t1_sL
			x -= jump_step;
			if (x <= 40 ) {
				x = 40;
				sprite_index = spr_player_idle_sL }
		}
		if (obj_classiki_qte.combo == true && obj_classiki_qte.current_step == 14) {
			sprite_index = spr_player_jump1t2_sL
			x -= jump_step;
			if (x <= 20 ) {
				x = 20;
				sprite_index = spr_player_idle_sR }
		}
	}
}

if (instance_exists(obj_eatOrNot_manger)) {
	if (!instance_exists(obj_eatOrNot)) {
		x = 445;
		y = 325;
		sprite_index = spr_player_idle_sR;
	}
}

/*
if (instance_exists(obj_eatOrNot) && obj_classiki_manger.sprite_index == spr_dialog_cloud_but) {
	if (!instance_exists(obj_classiki_powerBar) || !instance_exists(obj_classiki_qte)) {
		x = 20;
		y = 362;
		sprite_index = spr_player_idle_sR;
	}
}