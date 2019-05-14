t_model = argument[0];
colors = argument[1];

depths = ds_grid_create(2,array_length_1d(t_model)/3);

for(i = 0; i < array_length_1d(t_model); i+=3) {
	var d = 0;
	var triangle = [t_model[i],t_model[i+1],t_model[i+2]];
	for(k = 0;k < 3; k++ ) {
		dot = triangle[k];
		d += dot[2];
	}
	ds_grid_set(depths, 0, i/3, i);
	ds_grid_set(depths, 1, i/3, d);
}

ds_grid_sort(depths, 1, true);

new_colors = colors;
var new_model = [];
for(i=0;i<ds_grid_height(depths)*3;i+=3) {
	var curr_tr = depths[# 0, i/3];
	new_colors[i] = colors[curr_tr%array_length_1d(colors)];
	new_colors[i+1] = colors[curr_tr%array_length_1d(colors)];
	new_colors[i+2] = colors[curr_tr%array_length_1d(colors)];
	new_model[i] = t_model[curr_tr];
	new_model[i+1] = t_model[curr_tr+1];
	new_model[i+2] = t_model[curr_tr+2];
}

colors = new_colors;

t_model = new_model;
ds_grid_destroy(depths);
