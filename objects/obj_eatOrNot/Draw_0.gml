// Позиции персонажей

draw_self();
var cur_color = draw_get_color();


if (say_item == true) {
	draw_sprite(spr_dialog_cloud_2, 0, 470, 190);
	draw_set_font(f_base);
	draw_set_color(c_black);
	draw_text(500, 200, current_item);
	draw_set_color(cur_color);
}

if (score_player < 3) { //todo для функции draw_sprite 2-й аргумент это кадр, сейчас рисуется только 2-й кадр, хотя сам спрайт это гифка из 2-х кадров, нужно ввести переменную которая будет меняться каждый n кадры между 0 и 1 
	if (is_food == true) {draw_sprite(spr_lmb, 1, 510, 380)}
	if (is_food == false) {draw_sprite(spr_rmb, 1, 510, 380)}
}
	