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

for(m = 0; m < array_length_1d(model); m++) {
	model[m] = rotateY(model[m], angle);
}

angle+=2;

ft = model[0];
st = model[1];

tr1 = [[ft[0],ft[1],ft[2]],[ft[3],ft[4],ft[5]],[ft[6],ft[7],ft[8]]];
tr2 = [[st[0],st[1],st[2]],[st[3],st[4],st[5]],[st[6],st[7],st[8]]];

if(ft[2]+ft[5]+ft[8] > st[2]+st[5]+st[8]) {
	tr = [tr2, tr1];
	colors = [c_gray,c_white];
} else {
	tr = [tr1, tr2];
	colors = [c_white,c_gray];
}



for(i = 0; i < 2; i++) {
	curr_tr = tr[i];
	for(j = 0; j < 3; j++) {
		coor = curr_tr[j];
		vertex_colour(v_buff, colors[i], 1);
		vertex_position_3d(v_buff, coor[0],coor[1],coor[2]);
		
	}
	
}

vertex_end(v_buff);

vertex_submit(v_buff, pr_trianglelist, -1);


model = old_model;