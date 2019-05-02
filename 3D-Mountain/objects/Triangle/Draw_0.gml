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

ft = rotateY(ft, angle);
st = rotateY(st, angle);
angle+=5;


vertex_colour(v_buff, c_white, 1);
vertex_position_3d(v_buff, ft[0],ft[1],ft[2]);
vertex_colour(v_buff, c_white, 1);
vertex_position_3d(v_buff, ft[3],ft[4],ft[5]);
vertex_colour(v_buff, c_white, 1);
vertex_position_3d(v_buff, ft[6],ft[7],ft[8]);

vertex_colour(v_buff, c_gray, 1);
vertex_position_3d(v_buff, st[0],st[1],st[2]);
vertex_colour(v_buff, c_gray, 1);
vertex_position_3d(v_buff, st[3],st[4],st[5]);
vertex_colour(v_buff, c_gray, 1);
vertex_position_3d(v_buff, st[6],st[7],st[8]);
vertex_end(v_buff);

vertex_submit(v_buff, pr_trianglelist, -1);


ft = old_ft;
st = old_st;
