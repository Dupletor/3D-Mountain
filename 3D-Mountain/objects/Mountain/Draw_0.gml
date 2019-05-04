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
old_model = model;
old_colors = colors;

for(m = 0; m < array_length_1d(model); m++) {
	//model[m] = rotateY(model[m], angle);
	model[m] = rotateX(model[m], angle);
	model[m] = rotateZ(model[m], 90);
}

angle += 2;

sort(model, colors);

for(i = 0; i < array_length_1d(model); i++) {
	var curr_tr = model[i];
	for(j = 0; j < 3; j++) {
		coor = curr_tr[j];
		vertex_colour(v_buff, colors[i], 1);
		vertex_position_3d(v_buff, coor[0],coor[1],coor[2]);
		
	}
	
}

colors = old_colors;

vertex_end(v_buff);

vertex_submit(v_buff, pr_trianglelist, -1);


model = old_model;