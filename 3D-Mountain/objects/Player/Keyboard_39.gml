if(!falling) {
	sprite_index = Player_E;
	going_right = true;
	image_speed = 1;
	image_xscale = 3;
	if(!global.player_in_position)
		x+=2;
	if(x > 500 && !(Mountain.translation <= -2400))
		global.player_in_position = true;
}