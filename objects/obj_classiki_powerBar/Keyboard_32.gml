/// @description Insert description here
// You can write your code in this editor

if (throw_bit == false) {
	throw_bit = true;
	audio_play_sound(snd_throwBit, 10, false);
	part_system_position(part_system_create(ps_classiki_dropBit), x2, y-25);
}

if (throw_resalt == obj_classiki_manger.current_lap) {
	if (!instance_exists(obj_classiki_qte)) {
		instance_create_layer(100, 100, "HUD", obj_classiki_qte)
		instance_destroy()
	}
} else {
	audio_play_sound(snd_fail, 10, false);
	instance_destroy();
}