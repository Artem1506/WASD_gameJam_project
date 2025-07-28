/// @description Insert description here
// You can write your code in this editor

normalStyle = spr_classiki_normal;
hoveredStyle = spr_classiki_hovered;
pressedStyle = spr_classiki_normal;

callback_function = function() {
	if (!instance_exists(obj_classiki_manger)) {
		instance_create_layer(190, 274, "Instances", obj_classiki_manger)
		global.inGame = true;
	}
}
