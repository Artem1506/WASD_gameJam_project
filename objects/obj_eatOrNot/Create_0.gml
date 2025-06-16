
time_limit = noone; // Время на ответ в секундах
score_player = 0;
food_items = ["яблоко", "банан", "апельсин", "картошка", "мясо"];
non_food_items = ["камень", "диван", "лампочка", "телефон", "часы"];
current_item = "";
is_food = undefined;
say_item = false;

right_ansver = noone;

input_blocked = true; // Флаг блокировки ввода

end_game = false;

function choose_item() {
    if (irandom(1) == 0) {
        is_food = true;
        current_item = food_items[irandom(array_length_1d(food_items)-1)];
    } else {
        is_food = false;
        current_item = non_food_items[irandom(array_length_1d(non_food_items)-1)];
    }
	input_blocked = false;
}

function first_stadia() {
	sprite_index = spr_eatOrNot_NPC_idle
	input_blocked = true;
	choose_item();
	show_debug_message(current_item)
	say_item = true;
}
