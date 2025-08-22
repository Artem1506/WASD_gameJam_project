/// @description Insert description here
// You can write your code in this editor

if (variable_global_exists("total_game_time")) {
	total_game_second = global.total_game_time div room_speed;

	var minutes = total_game_second div 60;
	var seconds = total_game_second mod 60;

	draw_set_font(f_score)
	draw_set_color(c_white);

	draw_text(x, y, "время в игре: " + string(minutes) + ":" + string(seconds));

	draw_text(x, y+40, "классики:")
	draw_text(x, y+60, "победы: " + string(global.classiki_win))
	draw_text(x, y+80, "поражения: " + string(global.classiki_loss))
	draw_text(x, y+100, "максимум раунд: " + string(global.classiki_max_lap))

	draw_text(x, y+140, "съедобное/несъедобное:")
	draw_text(x, y+160, "победы: " + string(global.eatOrNot_win))
	draw_text(x, y+180, "поражения: " + string(global.eatOrNot_loss))
	draw_text(x, y+200, "максимум счет: " + string(global.eatOrNot_max_score))
}
