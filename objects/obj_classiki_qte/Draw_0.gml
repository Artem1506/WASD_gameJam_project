/// @description Insert description here
// You can write your code in this editor

draw_self();
var cur_color = draw_get_color();

if (dialog_1 == true) {
	draw_sprite(spr_dialog_cloud, 0, obj_classiki_manger.x, obj_classiki_manger.y);
	draw_set_font(f_base);
	draw_set_color(c_black);
	draw_text(obj_classiki_manger.x+6, obj_classiki_manger.y+5, "не растраивайся!")
	draw_text(obj_classiki_manger.x+6, obj_classiki_manger.y+17, "получится в ")
	draw_text(obj_classiki_manger.x+6, obj_classiki_manger.y+29, "другой раз!")
	draw_set_color(cur_color);
}

if (dialog_2 == true) {
	draw_sprite(spr_dialog_cloud, 0, obj_classiki_manger.x, obj_classiki_manger.y);
	draw_set_font(f_base);
	draw_set_color(c_black);
	draw_text(obj_classiki_manger.x+6, obj_classiki_manger.y+5, "Упс!!!")
	draw_text(obj_classiki_manger.x+16, obj_classiki_manger.y+17, "ты оступился")
	draw_text(obj_classiki_manger.x+6, obj_classiki_manger.y+29, "аккуратнее")
	draw_set_color(cur_color);
}
