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