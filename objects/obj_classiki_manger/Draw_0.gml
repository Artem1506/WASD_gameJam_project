/// @description Insert description here
// You can write your code in this editor

draw_self();
var cur_color = draw_get_color();
draw_set_font(f_base);
draw_set_color(c_black);

if (sprite_index == spr_dialog_cloud_but) {
	draw_text(x+5, y+5, "женька! хочешь в классики поиграть?")
}

draw_sprite(spr_score1, 0, 320, 480)
draw_text(320, 460, string(current_lap));
draw_set_color(cur_color);

/*if (instance_exists(obj_classiki_qte)) {
	draw_sprite(spr_player, 0, x-obj_classiki_qte.current_step * 10, y+40);
} else { draw_sprite(spr_player, 0, x, y+40) }
*/
