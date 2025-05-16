// Инициализация переменных
time_limit = 3; // Время на ответ в секундах
score_player1 = 0;
ball_position = 0;
ball_speed = 0.02;

// Списки предметов
food_items = ["яблоко", "банан", "апельсин", "картошка", "мясо"];
non_food_items = ["камень", "диван", "лампочка", "телефон", "часы"];
current_item = "";
is_food = false;
room_speed_1 = room_speed

// Установка будильника
alarm[0] = time_limit * room_speed; // Переводим секунды в шаги

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

choose_item(); // Первый предмет

