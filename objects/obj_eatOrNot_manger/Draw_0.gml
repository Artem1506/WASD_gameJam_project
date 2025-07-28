/// @description Insert description here
// You can write your code in this editor

draw_self();
var cur_color = draw_get_color();
draw_set_font(f_base);
draw_set_color(c_black);

if (sprite_index == spr_dialog_cloud_but) {
	if (!audio_is_playing(snd_bubble) && bubble_snd == true) {
		audio_play_sound(snd_bubble, 10, false);
		bubble_snd = false; }
	draw_text(x-120, y+4, "в сьедобное")
	draw_text(x-120, y+17, "несьедобное")
	draw_text(x-100, y+30, "поиграем?")
}

if (instance_exists(obj_eatOrNot)) {
	draw_sprite(spr_score1, 0, 320, 480)
	draw_set_font(f_score)
	draw_set_color(c_black)
	draw_text(315, 448, string(obj_eatOrNot.score_player));
	draw_set_color(cur_color);
}

if (!instance_exists(obj_eatOrNot) || obj_eatOrNot.sprite_index == noone) {
	draw_sprite(spr_eatOrNot_NPC_idle, 0, 584, 363)
}

draw_sprite(spr_bench, 0,567, 295);
