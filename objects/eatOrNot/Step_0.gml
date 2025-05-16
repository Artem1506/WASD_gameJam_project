// obj_game_manager - Step Event
// Обновление таймера
current_time_game -= 1 / room_speed;
if (current_time <= 0) {
    choose_item();
    current_time_game = time_limit;
    // Переключение игрока
    current_player = (current_player == 1) ? 2 : 1;
    
    // Анимация движения мяча
    ball_position = 0;
}

// Обработка ввода от игрока
if (mouse_check_button_pressed(mb_left)) {
    if (is_food) {
        if (current_player == 1) score_player1 += 1;
        else score_player2 += 1;
    }
    choose_item();
    current_time_game = time_limit;
}

if (mouse_check_button_pressed(mb_right)) {
    if (!is_food) {
        if (current_player == 1) score_player1 += 1;
        else score_player2 += 1;
    }
    choose_item();
    current_time_game = time_limit;
}

// Анимация мяча
ball_position += ball_speed;
if (ball_position > 1) ball_position = 1;