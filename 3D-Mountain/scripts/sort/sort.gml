model = argument[0];
colors = argument[1];

depths = ds_list_create();

for(i = 0; i < array_length_1d(model); i++) {
	var triangle = model[i];
	var d = triangle[2] + triangle[5] + triangle[8];
	var found = false;
	for(j = 0; j < ds_list_size(depths) && !found; j++){
		var curr_depth = depths[|j];
		if(curr_depth[0] > d) {
			found = true;
			j--;
		}
	}
	ds_list_insert(depths, j, [d,i]);
}

new_colors = colors;
new_model = [];

for(i=0;i<ds_list_size(depths);i++) {
	var curr_depth = depths[|i];
	
	var curr_tr = curr_depth[1];
	
	new_colors[i] = colors[curr_tr%array_length_1d(colors)];
	new_model_tr = []
	for(j=0;j<3;j++) {
		var curr_model_tr = model[curr_tr];
		var new_model_dot = [curr_model_tr[3*j+0],curr_model_tr[3*j+1],curr_model_tr[3*j+2]];
		new_model_tr[j] = new_model_dot;
	}
	new_model[i] = new_model_tr;
}

colors = new_colors;

model = new_model;
ds_list_destroy(depths);