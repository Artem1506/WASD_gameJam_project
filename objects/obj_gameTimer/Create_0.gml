/// @description Insert description here
// You can write your code in this editor

global.game_timer = 5 * 60 * room_speed;
global.pauseIsActive = false;
global.inGame = false;

total_seconds = global.game_timer div room_speed;
minutes = total_seconds div 60;
minutes_prev = minutes

show_cloud_started = false;
show_cloud = false;
bubble_snd = true;
