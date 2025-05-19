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