if(global.player_in_position) {
	image_speed = 0.1;

	switch(floor(image_index)) {
		case 0:
			image_xscale += 0.1;
			image_yscale += 0.1;
			hspeed = inispd;
			break;
		case 4:
			image_xscale -= 0.1;
			image_yscale -= 0.1;
			hspeed = inispd;
			break;
		case 1:
			image_xscale += 0.05;
			image_yscale += 0.05;
			hspeed = 6*inispd;
			break;
		case 3:
			image_xscale -= 0.05;
			image_yscale -= 0.05;
			hspeed = 6*inispd;
			break;
		case 2:
			hspeed = 12*inispd;
			break;
		default:
			break;
	}
} else {
	image_speed = 0;
	hspeed = 0;
}