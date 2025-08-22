/// @description Insert description here
// You can write your code in this editor

var delay = 60

if (image_index >= 7 && reset_alarm == false) {
	reset_alarm = true;
	visible = true;
	if (x == 150)  {
		alarm[0] = delay; }
	if (x == 590)  {
		alarm[1] = delay; }
	if (x == 110)  {
		alarm[2] = delay; }
	if (x == 570)  {
		alarm[3] = delay; }
}
