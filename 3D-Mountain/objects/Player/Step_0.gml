if(jumping) {
	if (y + dy > y0) {
		jumping = false;
	} else {
		y += dy;
		dy++;
	}
}

