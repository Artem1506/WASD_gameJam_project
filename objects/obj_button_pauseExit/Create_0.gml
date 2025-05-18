/// @description Insert description here
// You can write your code in this editor

event_inherited();

normalStyle = spr_button_pauseExit_normal;
hoveredStyle = spr_button_pauseExit_hovered;
pressedStyle = spr_button_pauseExit_normal;

callback_function = function() {
	//if (!instance_exists(obj_classiki_manger) && !instance_exists(obj_eatOrNot)) { 
	//	room_goto(rm_startPage) }
	if (global.inGame == true) { 
		global.pauseIsActive = false;
		global.inGame = false; 
//		if (instance_exists(obj_classiki_manger)) {
//			show_debug_message("222")
//instance_create_layer(20, 20, "Instances", obj_classikiMain)
//			instance_destroy(obj_classiki_manger); 
//		if (instance_exists(obj_classiki_powerBar)) {
//			instance_destroy(obj_classiki_powerBar); } 
//		if (instance_exists(obj_classiki_qte)) {
//			instance_destroy(obj_classiki_qte); }
		show_debug_message("111")}
		else { room_goto(rm_startPage); } 
}
