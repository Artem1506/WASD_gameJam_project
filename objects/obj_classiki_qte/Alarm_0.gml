/// @description tooltip delay
// You can write your code in this editor

if (sprite_index != noone) {
	sprite_index = noone
}

if (random_button != noone) {
	random_button = noone
}

if (combo == true) { current_step += 1; }

if (combo != true) {
	audio_play_sound(snd_fail, 10, false);
	instance_destroy() 
}
