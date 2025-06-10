/// @description Insert description here
// You can write your code in this editor

draw_self();
var cur_color = draw_get_color();
draw_set_font(f_base);
draw_set_color(c_black);

if (sprite_index == spr_dialog_cloud_but) {
	draw_text(x+6, y+5, "Женька! хочешь")
	draw_text(x+6, y+17, "в классики")
	draw_text(x+6, y+29, "поиграть?")
}

draw_sprite(spr_score1, 0, 320, 480)
draw_set_font(f_score)
draw_set_color(c_black)
draw_text(315, 448, string(current_lap));
draw_set_color(cur_color);
