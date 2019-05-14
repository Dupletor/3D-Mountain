angle = 0;
translation = 0;
triangles_per_circle = 18;
global.player_in_position = false;

colors = [make_color_hsv(0,0,118),make_color_hsv(0,0,112),
		  make_color_hsv(0,0,113),make_color_hsv(0,0,120),
		  make_color_hsv(0,0,111),make_color_hsv(0,0,123),
		  make_color_hsv(0,0,118),make_color_hsv(0,0,114),
		  make_color_hsv(0,0,116),make_color_hsv(0,0,121),
		  make_color_hsv(0,0,117),make_color_hsv(0,0,124)];

center = [0,700,0];

load();

new_model = [];
t_matrix = matrix_build(500, 1100 -translation, 0, angle, 1, 90, 1, 1, 1);

event_perform(ev_alarm, 0);