/// @description return ball
// You can write your code in this editor

say_item = false;

if (end_game == true) {
	instance_destroy()
}

if (score_player == 20) {
	global.game_timer +=2*room_speed;
	instance_destroy();
}
//first_stadia()
