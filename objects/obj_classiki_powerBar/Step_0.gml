/// @description Insert description here
// You can write your code in this editor

if (global.inGame == false) { instance_destroy(); }

if (throw_bit == false) { 
	if (x2 < x1+20) { x2 += 5 / 10; throw_resalt = 1; } 
	else if (x2 >= x1+20 && x2 < x1+40) { x2 += 7 / 10; throw_resalt = 2; } 
	else if (x2 >= x1+40 && x2 < x1+60) { x2 += 10 / 10; throw_resalt = 3;} 
	else if (x2 >= x1+60 && x2 < x1+80) { x2 += 14 / 10; throw_resalt = 4;} 
	else if (x2 >= x1+80 && x2 < x1+100) { x2 += 19 / 10; throw_resalt = 5;} 
	else if (x2 >= x1+100 && x2 < x1+120) { x2 += 25 / 10; throw_resalt = 6;} 
	else if (x2 >= x1+120 && x2 < x1+140) { x2 += 32 / 10; throw_resalt = 7;} 
	else if (x2 >= x1+140 && x2 < x1+150) { x2 += 39 / 10; throw_resalt = 8;}
	else {
		if (x2 > x1) { 
			x2 = x;
			if (x2 < x1) x2 = x1;
		}
	}
}

