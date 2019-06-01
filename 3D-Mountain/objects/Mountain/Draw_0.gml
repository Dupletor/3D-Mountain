vertex_format_begin();
vertex_format_add_colour();
vertex_format_add_position_3d();
global.my_format = vertex_format_end();

//girar ao redor do eixo: (300, 100, 50) -> (300, 300, 50)
/*

|300,100,  50|
|510, 10,-150|
|300,300,  50|

*/

v_buff = vertex_create_buffer();
vertex_begin(v_buff, global.my_format);
old_colors = colors;
x_angle = (mouse_y - 300)/2;
y_angle = angle + (mouse_x - 300)/2;
t_matrix = matrix_build(center[0], center[1] -translation, center[2], x_angle, -y_angle, 0, 1, 1, 1);
t_model = [];
for(m = 0; m < array_length_1d(new_model); m++) {
	var tr = new_model[m]
	for(n = 0; n < 3; n++) {
		t_model[3*m+n] = matrix_transform_vertex(t_matrix, tr[3*n+0], tr[3*n+1], tr[3*n+2]);
	}
}

sort(t_model, colors);


for(i = 0; i < array_length_1d(t_model); i++) {
	var curr_tr = t_model[i];
	if(translation < -1150)
		vertex_colour(v_buff, merge_color(colors[i%array_length_1d(colors)], c_white, (-1150 - translation)/1400),1);
	else
		vertex_colour(v_buff, colors[i%array_length_1d(colors)],1);
	vertex_position_3d(v_buff, curr_tr[0],curr_tr[1],curr_tr[2]);
	
}

colors = old_colors;

vertex_end(v_buff);

vertex_submit(v_buff, pr_trianglelist, -1);
if(translation < -800)
	effect_create_above(ef_snow, 0, 0, (-800-translation)/800, make_color_hsv(0,0,(-800-translation)/4));