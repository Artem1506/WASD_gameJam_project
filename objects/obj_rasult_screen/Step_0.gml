/// @description Insert description here
// You can write your code in this editor


steam_init();
steam_update()

if (variable_global_exists("total_game_time") && global.ach_5min_unlocked == false) {
	if (total_game_second >= 300) {
		steam_set_achievement("ACH_5MIN");
		global.ach_5min_unlocked = true;
	}
}



