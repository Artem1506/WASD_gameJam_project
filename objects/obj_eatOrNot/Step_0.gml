
if (global.inGame == false) { instance_destroy(); }

if (score_player > global.eatOrNot_max_score) { global.eatOrNot_max_score = score_player } 

time_limit = exp(-0.25 * score_player)*2; //по экспоненте уменьшает время на ответ в зависимости от счета

if (say_item == false) {
	first_stadia();
	audio_play_sound(snd_interaction_voice, 1, false);
	alarm[0] = time_limit*room_speed;
}

if (mouse_check_button_pressed(mb_left)) {
    if (is_food == true && input_blocked == false) {
		 right_ansver = true;
		 input_blocked = true;
    }
	else if (is_food == false && input_blocked == false) {
		right_ansver = false;
		input_blocked = true;
	}
}

if (mouse_check_button_pressed(mb_right)) {
    if (is_food == false && input_blocked == false) {
		right_ansver = true
		input_blocked = true;
    }
	else if (is_food == true && input_blocked == false) {
		right_ansver = false;
		input_blocked = true;
	}
}

if (image_index > 6.5 && sprite_index == spr_eatOrNot_NPC_throwBall) {
	if (input_blocked == true) {
		obj_player.sprite_index = spr_player_catch; 
	} 
	if (input_blocked == false) { 
		obj_player.sprite_index = spr_player_catchNo;
	}
} else { obj_player.sprite_index = spr_player_idle_sR }
