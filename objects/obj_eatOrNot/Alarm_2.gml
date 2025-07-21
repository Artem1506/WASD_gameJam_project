/// @description return ball

say_item = false;

if (end_game == true) {
	instance_destroy()
}

if (score_player == 10 && won_1 == false) {
	global.game_timer += 1 * room_speed;
	won_1 = true;
	global.eatOrNot_win ++;
}

if (score_player == 20 && won_2 == false) { //todo это выйгрыш нужно подумать возможно глобальную переменную для счета побед ввести или фанфары
	global.game_timer += 2 * room_speed;
	won_2 = true;
	global.eatOrNot_win ++;
}
