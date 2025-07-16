/// @description Insert description here
// You can write your code in this editor

if (room == rm_mainPage) {
	if (global.inGame == true) {
		if (instance_exists(obj_classiki_manger) && !audio_is_playing(snd_classiki_theme)) {
			audio_play_sound(snd_classiki_theme, 5, true);
		}
	} else { audio_stop_sound(snd_classiki_theme); }
	
	if (global.inGame == true) {
		if (instance_exists(obj_eatOrNot_manger) && !audio_is_playing(snd_eatOrNot_theme)) {
			audio_play_sound(snd_eatOrNot_theme, 5, true);
		}
	} else { audio_stop_sound(snd_eatOrNot_theme); } 
	
	if (global.inGame == false) {
		if (!audio_is_playing(snd_mainPage_theme)) {
			audio_play_sound(snd_mainPage_theme, 5, true);
		}
	}
}

if (room == rm_startPage) {
	if (!audio_is_playing(snd_startPage_theme)) {
		audio_play_sound(snd_startPage_theme, 5, true);
	}
}
if (room != rm_startPage) { audio_stop_sound(snd_startPage_theme); } 
