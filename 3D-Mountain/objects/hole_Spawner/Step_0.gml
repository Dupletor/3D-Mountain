
if(instance_place(x,y,Player)) {
	with(instance_create_depth(x - inispd*510 + sprite_width/2, y + other.sprite_height/2 - 5, Player.depth-1, Hole)) {
		inispd = other.inispd;
	}
	instance_destroy();
}

y = iniy - Mountain.translation;