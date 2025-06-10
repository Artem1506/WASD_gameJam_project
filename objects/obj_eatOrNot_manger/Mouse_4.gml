/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_eatOrNot)) {
	instance_create_layer(63, 390, "Instances", obj_eatOrNot)
	audio_play_sound(snd_mecanicalClick, 10, false);
}