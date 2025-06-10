/// @description Insert description here
// You can write your code in this editor

function get_countdown_time() {
    var total_seconds = global.game_timer div room_speed;
    var minutes = total_seconds div 60;
    var seconds = total_seconds mod 60;
    return string(minutes) + ":" + string_format(seconds, 2, 0);
}
var cur_color = draw_get_color();
draw_set_color(c_red)
draw_text(10, 10, "Осталось: " + get_countdown_time());
draw_set_color(cur_color);

if (global.game_timer <= 0) {
	draw_text(30, 30, "danger!");
}