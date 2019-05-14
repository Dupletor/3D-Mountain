alarm[0] = 30;


new_model = [];

for(m = 0; m < array_length_1d(model); m++) {
	var triangle = model[m];
	if (
		(triangle[0] + translation > 300	|| triangle[3] + translation > 300		|| triangle[6] + translation > 300) && 
		(triangle[0] + translation < 1150 || triangle[3] + translation < 1150	|| triangle[6] + translation < 1150) 
		) {
		new_model[array_length_1d(new_model)] = model[m];	
	}
}