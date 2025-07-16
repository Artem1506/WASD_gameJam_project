/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(f_base);

if (spawn_text == true) {
	draw_sprite(spr_about_BG, 0, 0, 0);
	draw_text(0, 0, "v.0.3.0.1607");
}
if (spawn_text == true) {
	if (keyboard_check_pressed(vk_escape)) {
		spawn_text = false;
	}
}
