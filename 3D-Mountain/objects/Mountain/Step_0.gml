if(keyboard_check(vk_left) && global.player_in_position && translation < 0) {
	angle ++;
	translation++;
}
if(keyboard_check(vk_right) && global.player_in_position && translation > -2400) {
	angle --;
	translation--;
}

if(keyboard_check(vk_up) && translation < 0) {	
	translation++;
}
if(keyboard_check(vk_down) && translation > -2400) {
	translation--;
}

if((Player.going_right) && (translation <= -2400)) { 
	global.player_in_position = false;
}
if((Player.going_left) && (translation <= 0)) {
	global.player_in_position = false;
}

