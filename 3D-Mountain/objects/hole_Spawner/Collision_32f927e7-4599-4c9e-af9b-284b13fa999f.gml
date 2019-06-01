with(instance_create_depth(x - inispd*500, y + other.sprite_width/2, Player.depth-1, Hole)) {
	inispd = other.inispd;
}
instance_destroy();