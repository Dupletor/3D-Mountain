if(jumping) {
	if (y + dy > y0) {
		jumping = false;
	} else {
		y += dy;
		dy++;
	}
}

if(instance_place(x,y,Hole)) {
	falling = true;
}

if(falling && Mountain.translation >= 0) {
	falling = false;
	angle = 0;
}

if(falling) {
	with(Hole) 
		y -= 8;
	angle	+=	8;
	Mountain.translation += 8;
	if(angle > 360)
		angle -= 360;
	else if(angle > 337)
		sprite_index = Player_E;
	else if(angle > 292)
		sprite_index = Player_SE;
	else if(angle > 247)
		sprite_index = Player_S;
	else if(angle > 202)
		sprite_index = Player_SW;
	else if(angle > 157)
		sprite_index = Player_W;
	else if(angle > 112)
		sprite_index = Player_NW;
	else if(angle > 67)
		sprite_index = Player_N;
	else if(angle > 22)
		sprite_index = Player_NE;
	else
		sprite_index = Player_E;
}

