/// @description Insert description here
// You can write your code in this editor

var cur_color = draw_get_color();

if (show_cloud == true) {
	draw_sprite(spr_dialog_cloud_2_y_scale, 0, 490, 5);
	draw_set_color(c_black);
	draw_set_font(f_base);
	draw_text(495, 20, "Женька, что бы");
	draw_text(495, 32, "через " + string(minutes) + " минут");
	draw_text(495, 44, "был дома!");
	draw_set_color(cur_color);
}
