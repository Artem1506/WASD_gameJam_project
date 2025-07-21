/// @description Insert description here
// You can write your code in this editor

var cur_color = draw_get_color();

function format_double_digit(val) {
    if (val < 10) {
        return "0" + string(val);
    } else {
        return string(val);
    }
}

function get_countdown_time() {
    seconds = total_seconds mod 60;
    return format_double_digit(minutes) + ":" + format_double_digit(seconds);
}

draw_sprite(spr_montana, 0, 554, 397);
draw_set_color(c_black);
draw_set_font(f_score);
draw_text(574, 423, get_countdown_time());
draw_set_color(cur_color);

if (global.game_timer <= 0) {
	room_goto(rm_exitPage);
}

if (show_cloud == true) {
	draw_sprite(spr_dialog_cloud_2_y_scale, 0, 470, 5);
	draw_set_color(c_black);
	draw_set_font(f_base);
	draw_text(475, 20, "Женька, что бы");
	draw_text(475, 32, "через " + string(minutes+1) + " минут");
	draw_text(475, 44, "был дома!");
	draw_set_color(cur_color);
}
