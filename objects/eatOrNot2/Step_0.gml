// Обработка ввода от игрока
if (mouse_check_button_pressed(mb_left)) {
    if (is_food) {
         score_player1 += 1;
    }
    choose_item();
	alarm[1] = 180; // Задержка 3 секунды (room_speed=60)
	
    alarm[0] = time_limit * room_speed; // Сброс будильника
}

if (mouse_check_button_pressed(mb_right)) {
    if (!is_food) {
		score_player1 += 1;
    }
    choose_item();
	alarm[1] = 180; // Задержка 3 секунды (room_speed=60)
    alarm[0] = time_limit * room_speed; // Сброс будильника
}

// Анимация мяча
ball_position += ball_speed;
if (ball_position > 1) ball_position = 1;