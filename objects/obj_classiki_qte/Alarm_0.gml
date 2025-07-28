/// @description tooltip delay
// You can write your code in this editor

input_blocked = false;
jump = false;
obj_player.jump_snd_played = false;

if (sprite_index != noone) {
	sprite_index = noone
}

if (random_button != noone) {
	random_button = noone
}

if (combo == true && start_again == false) { current_step += 1; }

if (combo == false && start_again != true) {
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
