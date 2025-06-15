// Обработка ввода от игрока
//show_debug_message(string(say_item))

if (global.inGame == false) { instance_destroy(); }

time_limit = exp(-0.25 * score_player)*2;
//if (keyboard_check_pressed(vk_alt)) {score_player +=1; show_debug_message(string(time_limit))}

if (say_item == false) {
	first_stadia();
	alarm[0] = time_limit*room_speed;
}

if (mouse_check_button_pressed(mb_left)) {
    if (is_food == true && input_blocked == false) {
		 right_ansver = true;
		 show_debug_message("Верный ввод выбрано сьедобное")
		 input_blocked = true;
    }
	else if (is_food == false && input_blocked == false) {
		right_ansver = false;
		show_debug_message("Не верный ввод выбрано съедобное, а кидалось не сьедобное")
		input_blocked = true;
	}
}
    //choose_item();
	//alarm[1] = 180; // Задержка 3 секунды (room_speed=60)
	
    //alarm[0] = time_limit * room_speed; // Сброс будильника

if (mouse_check_button_pressed(mb_right)) {
    if (is_food == false && input_blocked == false) {
		//score_player1 += 1;
		right_ansver = true
		//press_count += 1;
		show_debug_message("Верный ввод выбрано не сьедобное")
		input_blocked = true;
    }
	else if (is_food == true && input_blocked == false) {
		//press_count += 1;
		right_ansver = false;
		show_debug_message("Не верный ввод выбрано не съедобное, а кидалось сьедобное")
		input_blocked = true;
	}
    //choose_item();
	//alarm[1] = 180; // Задержка 3 секунды (room_speed=60)
    //alarm[0] = time_limit * room_speed; // Сброс будильника
}

if (image_index > 6.5 && sprite_index == spr_eatOrNot_NPC_throwBall) {
	show_debug_message(string(image_index))
	if (input_blocked == true) {
		obj_player.sprite_index = spr_player_catch; 
	} 
	if (input_blocked == false) { 
		obj_player.sprite_index = spr_player_catchNo;
	}
} else { obj_player.sprite_index = spr_player_idle_sR }
// Анимация мяча
//ball_position += ball_speed;
//if (ball_position > 1) ball_position = 1;