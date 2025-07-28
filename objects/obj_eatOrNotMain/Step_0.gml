/// @description Insert description here
// You can write your code in this editor

if (global.inGame == false) {
	if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
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
				if (sprite_index != hoveredStyle) {
						audio_play_sound(snd_hower, 10, false); }
						sprite_index = hoveredStyle;
					}
		} else {
		sprite_index = normalStyle; 
		is_pressed = false;
	}
} 
if (instance_exists(obj_eatOrNot_manger)) { 
	sprite_index = noone; 
}
