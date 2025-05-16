// obj_game_manager - Draw Event
// Отображение предмета и счета
draw_set_font(f_base);
draw_set_color(c_black);

// Позиции персонажей
player1_x = 100;
player1_y = room_height / 2;
player2_x = room_width - 100;
player2_y = room_height / 2;

// Отображение мяча
var ball_x = lerp(player1_x, player2_x, ball_position);
var ball_y = lerp(player1_y, player2_y, ball_position);
draw_circle(ball_x, ball_y, 15, false);

// Отображение предмета
draw_text(room_width/2 - string_width(current_item)/2, 50, current_item);

// Отображение таймера
draw_text(20, 20, "Время: " + string_format(current_time, 0, 1));
draw_text(room_width-150, 20, "Игрок 1: " + string(score_player1));
draw_text(room_width-150, 40, "Игрок 2: " + string(score_player2));

// Отображение подсказки
draw_text(20, room_height-30, "ЛКМ - съедобное, ПКМ - несъедобное");

// Вспомогательная функция для интерполяции
function lerp(a, b, t) {
    return a + (b - a) * t;
}