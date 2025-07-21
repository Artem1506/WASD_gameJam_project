/// @description tooltip delay
// You can write your code in this editor

input_blocked = false;

if (sprite_index != noone) {
	sprite_index = noone
}

if (random_button != noone) {
	random_button = noone
}

if (combo == true) { current_step += 1; }

if (combo != true && start_again != true) {
	audio_play_sound(snd_fail, 10, false);
	global.classiki_loss ++;
	obj_classiki_manger.current_lap = 1
	dialog_1 = true;
	alarm[1] = 120;
}

if (start_again == true) {
	dialog_2 = true;
	alarm[2] = 60;
}
