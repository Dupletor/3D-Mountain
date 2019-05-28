if(keyboard_check(vk_left)) {
	angle ++;
}
if(keyboard_check(vk_right) && global.player_in_position && translation > -2400) {
	angle --;
	translation--;
}

if(keyboard_check(vk_up) && translation < 2400) {	
	translation++;
}
if(keyboard_check(vk_down) && translation > -2400) {
	translation--;
}

if(translation <= -2400) {
	Player.done = true;
}

