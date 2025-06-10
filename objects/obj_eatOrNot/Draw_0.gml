// Позиции персонажей

draw_self();
var cur_color = draw_get_color();

//player1_x = 100;
//player1_y = room_height / 2;
//player2_x = room_width - 100;
//player2_y = room_height / 2;

// Отображение мяча
//var ball_x = lerp(player1_x, player2_x, ball_position);
//var ball_y = lerp(player1_y, player2_y, ball_position);
//draw_circle(ball_x, ball_y, 15, false);

// Отображение предмета
draw_set_font(f_base);
draw_set_color(c_black);
draw_text(room_width/2, 50, current_item);
//show_debug_message(string(current_item))

// Отображение счета и подсказки
//draw_text(20, 20, "Игрок: " + string(score_player));
draw_text(20, room_height-30, "ЛКМ - съедобное, ПКМ - несъедобное");
//draw_text(room_width/2, room_height/2, end_game)


//

if (say_item == true) {
	draw_sprite(spr_dialog_cloud, 0, 510, 200);
	draw_set_font(f_base);
	draw_set_color(c_black);
	draw_text(550, 220, current_item);
}
	
	