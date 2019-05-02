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
old_ft = ft;
old_st = st;

for(i = 0; i < 3; i++) {
	ft[3*i+0] -= center[0];
	ft[3*i+2] -= center[2];
	st[3*i+0] -= center[0];
	st[3*i+2] -= center[2];
}

ft = rotateY(ft, angle);
st = rotateY(st, angle);
angle+=5;


for(i = 0; i < 3; i++) {
	ft[3*i+0] += center[0];
	ft[3*i+2] += center[2];
	st[3*i+0] += center[0];
	st[3*i+2] += center[2];
}

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


ft = old_ft;
st = old_st;
