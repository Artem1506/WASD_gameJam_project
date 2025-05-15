/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape)) {
    global.pauseIsActive = !global.pauseIsActive; 
    if (global.pauseIsActive) {
        instance_deactivate_all(true);
		//audio_play_sound()
		} else { 
			instance_activate_all();
			//audio_stop_sound()
			}
}
