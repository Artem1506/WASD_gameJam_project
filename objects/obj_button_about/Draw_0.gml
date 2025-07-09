/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(f_base);

if (spawn_text == true) {
	//draw_sprite(spr_about, 0, 64, 64);
	var version = extension_get_version("Windows");
	draw_text(0, 0, version);
}
if (spawn_text == true) {
	if (keyboard_check_pressed(vk_escape)) {
		spawn_text = false;
	}
}
