/// @description Insert description here
// You can write your code in this editor

event_inherited();

normalStyle = spr_button_newGame_normal;
hoveredStyle = spr_button_newGame_hovered;
pressedStyle = spr_button_newGame_pressed;

callback_function = function() {
	room_goto(rm_mainPage);
}
