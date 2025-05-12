/// @description Insert description here
// You can write your code in this editor

if (throw_bit == false) { 
	if (x2 < 30) { x2 += 1 / 10; } 
	else if (x2 >= 30 && x2 < 50) { x2 += 4 / 10; } 
	else if (x2 >= 50 && x2 < 70) { x2 += 6 / 10; } 
	else if (x2 >= 70 && x2 < 90) { x2 += 8 / 10; } 
	else if (x2 >= 90 && x2 < 110) { x2 += 10 / 10; } 
	else if (x2 >= 110 && x2 < 130) { x2 += 12 / 10; } 
	else if (x2 >= 130 && x2 < 150) { x2 += 14 / 10; } 
	else if (x2 >= 150 && x2 < 160) { x2 += 15 / 10; }
	else {
		if (x2 > x1) { 
			x2 = 10;
			if (x2 < x1) x2 = x1;
		}
	}
}

