/// @description Insert description here
// You can write your code in this editor

if (!global.pauseIsActive && global.game_timer > 0) {
    global.game_timer--;
}

total_seconds = global.game_timer div room_speed;
minutes = total_seconds div 60;

if (minutes != minutes_prev && show_cloud_started == false) {
    show_cloud_started = true;
	show_cloud = true
	alarm[0] = room_speed*5;
}
