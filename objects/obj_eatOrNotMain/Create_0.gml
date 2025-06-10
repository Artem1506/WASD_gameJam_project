/// @description Insert description here
// You can write your code in this editor

normalStyle = spr_bench_normal;
hoveredStyle = spr_bench_hovered;
pressedStyle = spr_bench_normal;

callback_function = function() {
	if (!instance_exists(obj_eatOrNot_manger)) {
	instance_create_layer(610, 180, "Instances", obj_eatOrNot_manger)
	global.inGame = true;
	}
}
