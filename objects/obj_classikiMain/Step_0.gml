/// @description Insert description here
// You can write your code in this editor

var y_pos = y-64;

if (global.inGame == false) {
	if (point_in_rectangle(mouse_x, mouse_y, x, y_pos, x + sprite_width, y_pos + sprite_height)) {
    if (mouse_check_button_pressed(mb_left)) {
        is_pressed = true;
		audio_play_sound(snd_mecanicalClick, 1, false);
		sprite_index = pressedStyle;
		} else if (mouse_check_button_released(mb_left) && is_pressed == true) {
			is_pressed = false;
			sprite_index = hoveredStyle;
				if (callback_function != noone) {
					callback_function(); 
					}
			} else if (!mouse_check_button(mb_left)) {
					sprite_index = hoveredStyle;
					}
		} else {
		sprite_index = normalStyle; 
		is_pressed = false;
	}
} else { sprite_index = normalStyle; 
}
