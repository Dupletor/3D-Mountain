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

new_model = [];
for(m = 0; m < array_length_1d(model); m++) {
<<<<<<< HEAD
	triangle = model[m];
	if ((triangle[0] + translation > 450	|| triangle[3] + translation > 450		|| triangle[6] + translation > 450) && 
		(triangle[0] + translation < 1400 || triangle[3] + translation < 1400	|| triangle[6] + translation < 1400)) {
		new_model[array_length_1d(new_model)] = model[m];	
	}
}
model = new_model;

for(m = 0; m < array_length_1d(model); m++) {
<<<<<<< HEAD
	//model[m] = rotateY(model[m], 25);
=======
	//model[m] = rotateY(model[m], 10);
>>>>>>> parent of 70975b2... stable cube creator
=======
	//model[m] = rotateY(model[m], 10);
>>>>>>> parent of 70975b2... stable cube creator
	model[m] = rotateX(model[m], angle);
	model[m] = rotateZ(model[m], 90);
}
//angle += 2;
sort(model, colors);

for(i = 0; i < array_length_1d(model); i++) {
	var curr_tr = model[i];
	for(j = 0; j < 3; j++) {
		coor = curr_tr[j];
		if(translation < -1850)
			vertex_colour(v_buff, merge_color(colors[i], c_white, (-1850 - translation)/700),1);
		else
			vertex_colour(v_buff, colors[i],1);
		vertex_position_3d(v_buff, coor[0],coor[1],coor[2]);
		
	}
	
}

colors = old_colors;

vertex_end(v_buff);

vertex_submit(v_buff, pr_trianglelist, -1);
if(translation < -800)
	effect_create_above(ef_snow, 0, 0, (-800-translation)/800, make_color_hsv(0,0,(-800-translation)/4));


model = old_model;