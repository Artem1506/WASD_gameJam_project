/// @description Insert description here
// You can write your code in this editor

if (throw_bit == false) { 
	if (x2 < x1+20) { 
		x2 += 5 / 10; 
		throw_resalt = 1; 
		} 
	else if (x2 >= x1+20 && x2 < x1+40) { 
		x2 += 7 / 10;
		throw_resalt = 2;
		} 
	else if (x2 >= x1+40 && x2 < x1+60) { x2 += 9 / 10; } 
	else if (x2 >= x1+60 && x2 < x1+80) { x2 += 11 / 10; } 
	else if (x2 >= x1+80 && x2 < x1+100) { x2 += 13 / 10; } 
	else if (x2 >= x1+100 && x2 < x1+120) { x2 += 15 / 10; } 
	else if (x2 >= x1+120 && x2 < x1+140) { x2 += 16 / 10; } 
	else if (x2 >= x1+140 && x2 < x1+150) { x2 += 15 / 10; }
	else {
		if (x2 > x1) { 
			x2 = x;
			if (x2 < x1) x2 = x1;
		}
	}
}

