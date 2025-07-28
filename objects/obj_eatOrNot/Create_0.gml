
time_limit = noone;
score_player = 0;
food_items = ["Яблоко", "Банан", "Апельсин", "Груша", "Виноград", "Клубника", "Малина", "Черника", "Арбуз", "Дыня", "Морковь", "Огурец", "Помидор", "Картофель", "Капуста", "Свекла", "Лук", "Чеснок", "Рис", "Гречка", "Макароны", "Хлеб", "Сыр", "Творог", "Йогурт", "Молоко", "Яйцо", "Курица", "Говядина", "Свинина", "Рыба", "Креветки", "Мед", "Шоколад", "Печенье", "Торт", "Мороженое", "Суп", "Борщ", "Пицца", "Бургер", "Орехи", "Изюм", "Курага", "Чай", "Кофе", "Сок", "Вода", "Соль", "Сахар"];
non_food_items = ["Камень", "Дерево", "Бумага", "Стекло", "Пластик", "Металл", "Резина", "Кирпич", "Цемент", "Песок", "Грязь", "Пыль", "Мусор", "Яд", "Клей", "Краска", "Бензин", "Масло (моторное)", "Батарейка", "Лампочка", "Гвоздь", "Молоток", "Пила", "Топор", "Лопата", "Ключ", "Замок", "Часы", "Очки", "Зонт", "Рюкзак", "Книга", "Газета", "Фотография", "Игрушка", "Кукла", "Мяч", "Велосипед", "Автомобиль", "Телефон", "Компьютер", "Телевизор", "Кошка", "Собака", "Птица", "Муха", "Змея", "Лягушка", "Облако", "Радуга"];
current_item = "";
is_food = undefined;
say_item = false;

right_ansver = noone;
input_blocked = false;
end_game = false;
tooltipImgIdex = 0;
won_1 = false;
won_2 = false;

show_addTimer = false;
addTimer = noone;
add_second = noone;

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
	say_item = true;
}
