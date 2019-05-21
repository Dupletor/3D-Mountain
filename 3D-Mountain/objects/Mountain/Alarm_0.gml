alarm[0] = 30;


new_model = [];

for(m = 0; m < array_length_1d(model); m++) {
	var triangle = model[m];
	var min_y = camera_get_view_y(view_camera[0]);
	var max_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);
	if (
		(triangle[1] - translation + center[1] > min_y - 50	|| triangle[4] - translation + center[1] > min_y - 50	|| triangle[7] - translation + center[1] > min_y - 50) && 
		(triangle[1] - translation + center[1] < max_y + 50	|| triangle[4] - translation + center[1] < max_y + 50	|| triangle[7] - translation + center[1] < max_y + 50) 
		) {
		new_model[array_length_1d(new_model)] = model[m];	
	}
}