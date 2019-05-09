t_model = argument[0];
colors = argument[1];

depths = ds_list_create();

for(i = 0; i < array_length_1d(t_model)-2; i+=3) {
	var d = 0;
	var triangle = [t_model[i],t_model[i+1],t_model[i+2]];
	for(k = 0;k < 3; k++ ) {
		dot = triangle[k];
		d += dot[2];
	}
	var found = false;
	for(j = 0; j < ds_list_size(depths) && !found; j++){
		var curr_depth = depths[|j];
		if(curr_depth[0] > d) {
			found = true;
			j--;
		}
	}
	ds_list_insert(depths, j, [d,i]);
	ds_list_insert(depths, j+1, [d,i+1]);
	ds_list_insert(depths, j+2, [d,i+2]);
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