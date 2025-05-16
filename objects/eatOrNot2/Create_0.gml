// Инициализация переменных
time_limit = 3; // Время на ответ в секундах
score_player1 = 0;
ball_position = 1;
ball_speed = 0.02;

// Списки предметов
food_items = ["яблоко", "банан", "апельсин", "картошка", "мясо"];
non_food_items = ["камень", "диван", "лампочка", "телефон", "часы"];
current_item = "";
is_food = false;
right_ansver = false;
press_count = 0;
input_blocked = false; // Флаг блокировки ввода
end_game = "";

// Установка будильника
//alarm[0] = time_limit * room_speed; // Переводим секунды в шаги

function choose_item() {
    if (irandom(1) == 0) {
        is_food = true;
        current_item = food_items[irandom(array_length_1d(food_items)-1)];
    } else {
        is_food = false;
        current_item = non_food_items[irandom(array_length_1d(non_food_items)-1)];
    }
}

function lerp(a, b, t) {
    return a + (b - a) * t;
}

function first_stadia(){
	show_debug_message("Мальчик гоорит слово и начинается таймер ожидания ввод заблокирован")
	input_blocked = true;
	//show_debug_message("Вывод заблокирован")
	choose_item();
	show_debug_message(current_item)
}

//choose_item(); // Первый предмет
ball_position = 0;
show_debug_message("Start")
alarm[0] = time_limit * room_speed;