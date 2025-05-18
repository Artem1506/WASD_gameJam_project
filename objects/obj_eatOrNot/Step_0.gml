// Обработка ввода от игрока

if (global.inGame == false) { instance_destroy(); }

if (mouse_check_button_pressed(mb_left)) {
    if (is_food & press_count < 1 & !input_blocked) {
         //score_player1 += 1;
		 right_ansver = true
		 press_count += 1;
		 show_debug_message("Верный ввод выбрано сьедобное")
    }
	else if (press_count < 1 & !input_blocked){
		press_count += 1;
		show_debug_message("Не верный ввод выбрано съедобное, а кидалось не сьедобное")
	}
    //choose_item();
	//alarm[1] = 180; // Задержка 3 секунды (room_speed=60)
	
    //alarm[0] = time_limit * room_speed; // Сброс будильника
}

if (mouse_check_button_pressed(mb_right)) {
    if (!is_food & press_count < 1 & !input_blocked) {
		//score_player1 += 1;
		right_ansver = true
		press_count += 1;
		show_debug_message("Верный ввод выбрано не сьедобное")
    }
	else if ( press_count < 1 & !input_blocked){
		press_count += 1;
		show_debug_message("Не верный ввод выбрано не съедобное, а кидалось сьедобное")
	}
    //choose_item();
	//alarm[1] = 180; // Задержка 3 секунды (room_speed=60)
    //alarm[0] = time_limit * room_speed; // Сброс будильника
}

// Анимация мяча
ball_position += ball_speed;
if (ball_position > 1) ball_position = 1;