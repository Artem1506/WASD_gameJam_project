// obj_game_manager - Create Event
// Инициализация переменных
time_limit = 3; // Время на ответ в секундах
current_time_game = time_limit;
score_player1 = 0;
score_player2 = 0;
current_player = 1; // Кто сейчас отвечает
ball_position = 0; // Позиция мяча между персонажами (0-1)
ball_speed = 0.02; // Скорость движения мяча

// Списки предметов
food_items = ["яблоко", "банан", "апельсин", "картошка", "мясо"];
non_food_items = ["камень", "диван", "лампочка", "телефон", "часы"];
current_item = "";
is_food = false;

// Случайный выбор предмета
choose_item();

// Функция выбора случайного предмета
function choose_item() {
    if (irandom(1) == 0) { // 50% шанс съедобного
        is_food = true;
        current_item = food_items[irandom(array_length_1d(food_items)-1)];
    } else {
        is_food = false;
        current_item = non_food_items[irandom(array_length_1d(non_food_items)-1)];
    }
}