/// @description Insert description here
// You can write your code in this editor

draw_self();

var cur_color = draw_get_color();
draw_set_color(c_red);
draw_rectangle(x1, y1, x2, y2, false);
draw_sprite(spr_powerBar, 0, x1-1, y1);
draw_set_color(cur_color);

if (throw_bit == true) { 
	draw_sprite(spr_bit, 0, x2, y-25)
}

if (dialog_1 == true) {
	draw_sprite(spr_dialog_cloud, 0, obj_classiki_manger.x, obj_classiki_manger.y);
	var cur_color = draw_get_color();
	draw_set_font(f_base);
	draw_set_color(c_black);
	draw_text(obj_classiki_manger.x+6, obj_classiki_manger.y+5, "ой! ты не")
	draw_text(obj_classiki_manger.x+6, obj_classiki_manger.y+17, "попал, попробуй")
	draw_text(obj_classiki_manger.x+6, obj_classiki_manger.y+29, "еще раз!")
	draw_set_color(cur_color);
}