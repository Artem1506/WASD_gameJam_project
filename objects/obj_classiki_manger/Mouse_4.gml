/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_classiki_powerBar)) {
	show_debug_message(string("!!!!"))
	instance_create_layer(64, 384, "Instances", obj_classiki_powerBar)
	audio_play_sound(snd_mecanicalClick, 10, false);
}