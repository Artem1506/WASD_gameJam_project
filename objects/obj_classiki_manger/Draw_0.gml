/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(f_base);

if (sprite_index == spr_dialog_cloud_but) {
	draw_text(x+5, y+5, "женька! хочешь в классики поиграть?")
}

draw_text(x+256, y-64, string(current_lap));

/*if (instance_exists(obj_classiki_qte)) {
	draw_sprite(spr_player, 0, x-obj_classiki_qte.current_step * 10, y+40);
} else { draw_sprite(spr_player, 0, x, y+40) }
*/
