/// @description Insert description here
// You can write your code in this editor

if (global.inGame == true) { 
	if (!audio_is_playing(snd__gameTheme)) {
		audio_play_sound(snd__gameTheme, 5, true);
	}
} else { audio_stop_sound(snd__gameTheme); } 