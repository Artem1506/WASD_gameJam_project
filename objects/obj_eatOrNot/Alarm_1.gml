/// @description fly ball

if (right_ansver == true && input_blocked == true) {
	score_player += 1;
	audio_play_sound(snd_correctQte, 10, false)
	image_index = 0;
	sprite_index = spr_eatOrNot_NPC_catchBall_1;
}
if (right_ansver == false && input_blocked == true) {
	score_player -= 1;
	audio_play_sound(snd_fail_short, 10, false);
	image_index = 0;
	sprite_index = spr_eatOrNot_NPC_catchBall_1;
}
if (input_blocked == false) {
	score_player = 0;
	end_game = true;
	audio_play_sound(snd_fail, 10, false);
	image_index = 0;
	sprite_index = spr_eatOrNot_NPC_catchBall_2;
}

alarm[2] = 0.8*room_speed;
