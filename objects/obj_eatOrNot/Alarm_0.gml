// Сработал будильник — время вышло
 // Сброс позиции мяча
show_debug_message("Первый будильник сработал")
first_stadia()
alarm[1] = time_limit * room_speed;
//alarm[0] = time_limit * room_speed; // Перезапуск будильника