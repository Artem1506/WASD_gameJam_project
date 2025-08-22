/// @description Insert description here
// You can write your code in this editor

event_inherited();

normalStyle = spr_button_pauseExit_normal;
hoveredStyle = spr_button_pauseExit_hovered;
pressedStyle = spr_button_pauseExit_normal;

callback_function = function() {
	if (global.inGame == true) { 
		global.pauseIsActive = false;
		global.inGame = false; 
		show_debug_message("111")}
		else { room_goto(rm_startPage); } 
}
