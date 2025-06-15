// Инициализация переменных
time_limit = noone; // Время на ответ в секундах
score_player = 0;
//ball_position = 1;
//ball_speed = 0.02;

// Списки предметов
food_items = ["яблоко", "банан", "апельсин", "картошка", "мясо"];
non_food_items = ["камень", "диван", "лампочка", "телефон", "часы"];
current_item = "";
is_food = undefined;
say_item = false;

right_ansver = noone;

press_count = 0;

input_blocked = true; // Флаг блокировки ввода

end_game = false;

// Установка будильника
//alarm[0] = time_limit * room_speed; // Переводим секунды в шаги

function choose_item() {
    if (irandom(1) == 0) {
        is_food = true;
        current_item = food_items[irandom(array_length_1d(food_items)-1)];
        //current_item = food_items[irandom(array_length_1d(food_items))];
    } else {
        is_food = false;
        current_item = non_food_items[irandom(array_length_1d(non_food_items)-1)];
    }
	input_blocked = false;
}

function first_stadia() {
	//show_debug_message("Мальчик гоорит слово и начинается таймер ожидания ввод заблокирован")
	sprite_index = spr_eatOrNot_NPC_idle
	input_blocked = true;
	//show_debug_message("Вывод заблокирован")
	choose_item();
	show_debug_message(current_item)
	say_item = true;
}

//choose_item(); // Первый предмет
//ball_position = 0;
//show_debug_message("Start")
//alarm[0] = time_limit * room_speed;