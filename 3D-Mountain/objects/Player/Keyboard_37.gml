going_left = true;
image_speed = 1;
image_xscale = -3;


if((x > 500 && !(Mountain.translation >= 0) && !(Mountain.translation <= -2400)) || ((Mountain.translation <= -2400) && x < 504))
	 global.player_in_position = true;
else if(!global.player_in_position)
	x-=2;