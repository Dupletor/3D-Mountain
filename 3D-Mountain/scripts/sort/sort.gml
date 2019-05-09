t_model = argument[0];
colors = argument[1];

depths = ds_list_create();

for(v = 0; v < array_length_1d(t_model); v+=triangles_per_circle*6) {
	new_depths = ds_list_create();
	for(i = 0; i < triangles_per_circle*6; i+=3) {
		var d = 0;
		var triangle = [t_model[v+i],t_model[v+i+1],t_model[v+i+2]];
		for(k = 0;k < 3; k++ ) {
			dot = triangle[k];
			d += dot[2];
		}
		var found = false;
		for(j = 0; j < ds_list_size(new_depths) && !found; j++){
			var curr_depth = new_depths[|j];
			if(curr_depth[0] > d) {
				found = true;
				j--;
			}
		}
		ds_list_insert(new_depths, j, [d, v+i]);
		ds_list_insert(new_depths, j+1, [d, v+i+1]);
		ds_list_insert(new_depths, j+2, [d, v+i+2]);
	}
	
	for(j=0;j<ds_list_size(new_depths);j++) {
		ds_list_add(depths, new_depths[|j]);
	}
	ds_list_destroy(new_depths);
	
}
new_colors = colors;
new_model = [];

for(i=0;i<ds_list_size(depths);i++) {
	var curr_depth = depths[|i];
	var curr_tr = curr_depth[1];
	new_colors[i] = colors[curr_tr%array_length_1d(colors)];
	new_model[i] = t_model[curr_tr];
}

colors = new_colors;

t_model = new_model;
ds_list_destroy(depths);
