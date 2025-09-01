/// @description Insert description here
// You can write your code in this editor

var cur_color = draw_get_color();
draw_set_font(f_base);
draw_set_color(c_black);

var pos_x = room_width / 7 * 2;

if (spawn_text == true) {
	draw_sprite(spr_about_BG, 0, pos_x, 0);
	instance_deactivate_all(self);
	
	draw_text(pos_x + 540, 460, "v." + GM_version);
	draw_text(pos_x + 16, 5, "жми Esc, чтобы вернуться в меню");
	draw_set_color(cur_color);
}
if (spawn_text == true) {
	if (keyboard_check_pressed(vk_escape)) {
		instance_activate_all();
		spawn_text = false;
	}
}
