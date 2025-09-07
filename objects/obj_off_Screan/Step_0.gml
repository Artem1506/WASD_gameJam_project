/// @description Insert description here
// You can write your code in this editor

if (sprite_index == spr_exit_BG && image_index >= 13) {	
//	game_end();
	audio_stop_all();
	room_goto(rm_startPage);
}
