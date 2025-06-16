/// @description return ball

say_item = false;

if (end_game == true) {
	instance_destroy()
}

if (score_player == 20) { //todo это выйгрыш нужно подумать возможно глобальную переменную для счета побед ввести или фанфары
	global.game_timer +=2*room_speed;
	instance_destroy();
}
