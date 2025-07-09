
if (image_alpha < 1) {
	image_alpha += 0.01; 
}

if (image_alpha >= 1 && x > 410) {
	if (!audio_is_playing(snd_bubble) && x > 440) {
		audio_play_sound(snd_bubble, 10, false); } 
	x -= 0.5
	y -= 0.7
	image_xscale += 0.005
	image_yscale += 0.005
}