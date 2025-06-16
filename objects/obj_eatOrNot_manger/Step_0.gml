/// @description Insert description here
// You can write your code in this editor

if (global.inGame == false) { instance_destroy(); }

if (instance_exists(obj_eatOrNot)) {
	sprite_index = noone;
} else { sprite_index = spr_dialog_cloud_but }
