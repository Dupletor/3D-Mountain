angle = 0;
translation = 0;
global.player_in_position = false;

colors = [c_red,c_blue,c_lime,c_yellow,c_orange, c_purple, c_aqua, c_olive];
/*
colors = [make_color_hsv(0,0,118),make_color_hsv(0,0,112),
		  make_color_hsv(0,0,113),make_color_hsv(0,0,120),
		  make_color_hsv(0,0,111),make_color_hsv(0,0,123),
		  make_color_hsv(0,0,118),make_color_hsv(0,0,114),
		  make_color_hsv(0,0,116),make_color_hsv(0,0,121),
		  make_color_hsv(0,0,117),make_color_hsv(0,0,124)];
*/

center = [x,y,0];

load();

new_model = [];

t_matrix = matrix_build(center[0], center[1] -translation, center[2], (mouse_y - 300)/2, angle + (mouse_x - 300)/2, 0, 1, 1, 1);

event_perform(ev_alarm, 0);