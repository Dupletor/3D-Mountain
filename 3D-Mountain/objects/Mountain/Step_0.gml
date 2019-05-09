if(keyboard_check(vk_left)) {
	angle ++;
}
if(keyboard_check(vk_right) && global.player_in_position && translation > -2000) {
	angle --;
	translation--;
}

if(keyboard_check(vk_up) && translation < 0) {	
	translation++;
}
if(keyboard_check(vk_down) && translation > -2000) {
	translation--;
	//show_debug_message(translation);
}

if(translation <= -2000) {
	Player.done = true;
}

