/// @description Insert description here
// You can write your code in this editor

draw_self();

var cur_color = draw_get_color();
draw_set_color(c_red);
draw_rectangle(x1, y1, x2, y2, false);
draw_sprite(spr_powerBar, 0, x1-1, y1);
draw_set_color(cur_color);

if (throw_bit == true) { 
	draw_sprite(spr_bit, 0, x2, y-25)
}

if (obj_classiki_manger.current_lap != noone) {
	if (x2 < x1+20 && obj_classiki_manger.current_lap == 1) {
		draw_sprite(spr_tutorial_1, 0, x1, y1);
		part_system_position(part_system_create(ps_tutorial), x1+10, y1-21);
		}
	if (x2 > x1+20 && x2 < x1+40 && obj_classiki_manger.current_lap == 2) {
		draw_sprite(spr_tutorial_1, 0, x1+20, y1);
		part_system_position(part_system_create(ps_tutorial), x1+30, y1-21);
		}
	if (x2 > x1+40 && x2 < x1+60 && obj_classiki_manger.current_lap == 3) {
		draw_sprite(spr_tutorial_1, 0, x1+40, y1);
		part_system_position(part_system_create(ps_tutorial), x1+50, y1-21);
		}
	if (x2 > x1+60 && x2 < x1+80 && obj_classiki_manger.current_lap == 4) {
		draw_sprite(spr_tutorial_1, 0, x1+60, y1);
		part_system_position(part_system_create(ps_tutorial), x1+70, y1-21);
		}
	if (x2 > x1+80 && x2 < x1+100 && obj_classiki_manger.current_lap == 5) {
		draw_sprite(spr_tutorial_1, 0, x1+80, y1);
		part_system_position(part_system_create(ps_tutorial), x1+90, y1-21);
		}
	if (x2 > x1+100 && x2 < x1+120 && obj_classiki_manger.current_lap == 6) {
		draw_sprite(spr_tutorial_1, 0, x1+100, y1);
		part_system_position(part_system_create(ps_tutorial), x1+110, y1-21);
		}
	if (x2 > x1+120 && x2 < x1+140 && obj_classiki_manger.current_lap >= 7) {
		draw_sprite(spr_tutorial_1, 0, x1+120, y1);
		part_system_position(part_system_create(ps_tutorial), x1+130, y1-21);
		}
}
		
if (dialog_1 == true) {
	draw_sprite(spr_dialog_cloud, 0, obj_classiki_manger.x, obj_classiki_manger.y);
	var cur_color = draw_get_color();
	draw_set_font(f_base);
	draw_set_color(c_black);
	draw_text(obj_classiki_manger.x+6, obj_classiki_manger.y+5, "ой! ты не")
	draw_text(obj_classiki_manger.x+6, obj_classiki_manger.y+17, "попал, попробуй")
	draw_text(obj_classiki_manger.x+6, obj_classiki_manger.y+29, "еще раз!")
	draw_set_color(cur_color);
}
