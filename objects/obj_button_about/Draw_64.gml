/// @description Insert description here
// You can write your code in this editor

draw_self();
var cur_color = draw_get_color();
draw_set_font(f_base);
draw_set_color(c_black);


if (spawn_text == true) {
	draw_sprite(spr_about_BG, 0, 0, 0);
	instance_deactivate_all(self);
	draw_text(540, 460, "v.1.0.0.2807");
	draw_text(16, 5, "жми Esc, чтобы вернуться в меню");
	draw_set_color(cur_color);
}
if (spawn_text == true) {
	if (keyboard_check_pressed(vk_escape)) {
		instance_activate_all();
		spawn_text = false;
	}
}
