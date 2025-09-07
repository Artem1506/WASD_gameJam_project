/// @description Insert description here
// You can write your code in this editor

if(done != true) { req_id = YaGames_getEnvironment(); }

if (done = true) {
	if (lang == "ru" or lang == "be" or lang == "kk" or lang == "uk" or lang == "uz") {
		global.language = 0;
	} else if (lang == "tr") {
		global.language = 2
	} else {
		global.language = 1
	}
	instance_destroy();
}
 