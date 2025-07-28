/// @description return ball

say_item = false;

if (end_game == true) {
	instance_destroy()
}

if (score_player == 10 && won_1 == false) {
	global.game_timer += 90 * room_speed;
	won_1 = true;
	global.eatOrNot_win ++;
	add_second = 90;
	show_addTimer = true;
	alarm[3] = 120;
}

if (score_player == 20 && won_2 == false) {
	global.game_timer += 180 * room_speed;
	won_2 = true;
	global.eatOrNot_win ++;
	add_second = 180;
	show_addTimer = true;
	audio_play_sound(snd_gameWin, 10, false)
	alarm[3] = 120;
}
