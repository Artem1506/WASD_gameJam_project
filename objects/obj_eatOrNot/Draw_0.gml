// Позиции персонажей

draw_self();
var cur_color = draw_get_color();

tooltipImgIdex += 4/room_speed;
if (tooltipImgIdex >= 2) { tooltipImgIdex = 0 }

if (say_item == true) {
	draw_sprite(spr_dialog_cloud_2, 0, 470, 222);
	draw_set_font(f_base);
	draw_set_color(c_black);
	draw_text(490, 232, current_item);
	draw_set_color(cur_color);
}

if (score_player < 3 && input_blocked == false) {
	if (is_food == true) {draw_sprite(spr_lmb, tooltipImgIdex, 510, 392)}
	if (is_food == false) {draw_sprite(spr_rmb, tooltipImgIdex, 510, 392)}
}
