/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape)) {
    global.pauseIsActive = !global.pauseIsActive; 
    if (global.pauseIsActive == true) {
        instance_deactivate_all(true);
		if (audio_is_playing(snd_classiki_theme)) {
			audio_stop_sound(snd_classiki_theme)
		}
		if (audio_is_playing(snd_eatOrNot_theme)) {
			audio_stop_sound(snd_eatOrNot_theme)
		}
		audio_play_sound(snd_startPage_theme, 5, true);
		instance_create_layer(242, 261, "System", obj_button_pauseCancel);
		instance_create_layer(323, 261, "System", obj_button_pauseExit);
		instance_create_layer(30, 400, "System", obj_button_help);
	} 
}
if (global.pauseIsActive == false) {
	instance_activate_all();
	instance_destroy(obj_button_pauseCancel);
	instance_destroy(obj_button_pauseExit);
	instance_destroy(obj_button_help);
	audio_stop_sound(snd_startPage_theme);
}
