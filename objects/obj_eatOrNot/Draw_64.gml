/// @description Insert description here
// You can write your code in this editor

var cur_color = draw_get_color();
var minutes = add_second div 60;
var seconds = add_second mod 60;

if (show_addTimer == true) {
	draw_set_font(f_score);
	if (!part_system_exists(ps_addedTime)) {
		part_system_position(part_system_create(ps_addedTime), 594, 435) }
	draw_set_color(c_black);
	draw_text(568, 426, "+ " + string(minutes) + ":" + string(seconds));
	draw_set_color(cur_color);
} else if (part_system_exists(ps_addedTime)) { part_system_destroy(ps_addedTime) }
