model = [];
file = file_text_open_read("mountainmodel2.txt");

var polygons = [];

while (!file_text_eof(file)) {
	var next_polygon = [];
	var next_x = file_text_read_real(file);

	for(var i = file_text_read_real(file); (i > 0); i--) {
		var next_y = file_text_read_real(file);
		var next_z = file_text_read_real(file);
		next_polygon[array_length_1d(next_polygon)] = [next_x, next_y, next_z];
	}
	polygons[array_length_1d(polygons)] = next_polygon;
	file_text_readln(file);
}

show_debug_message(polygons);

//show_debug_message(polygons[0]);
//colors = [c_red,c_blue,c_lime,c_yellow,c_orange, c_purple, c_aqua, c_olive];

for(var c=1;c<array_length_1d(polygons);c++) {
	//show_debug_message(polygons[c]);
	var bigger = BiggerArray(polygons[c-1],polygons[c]);
	var smaller = SmallerArray(polygons[c-1],polygons[c]);
	var MIN = min(array_length_1d(bigger), array_length_1d(smaller));
	var MAX = max(array_length_1d(bigger), array_length_1d(smaller));
	bigger[array_length_1d(bigger)] = bigger[0];
	smaller[array_length_1d(smaller)] = smaller[0];
	var R = MAX%MIN;
	var cont = 0;
	var Q = floor(MAX/MIN);
	var next_tr = [];
	for(var p = 0; p < MIN; p++) {
		for(var q = 0; q < Q; q++) {
			next_tr[array_length_1d(next_tr)] = [bigger[cont+p*Q+q],smaller[p],bigger[cont+p*Q+q+1]];
		}
		
		if(cont < R) {
			next_tr[array_length_1d(next_tr)] = [bigger[cont+p*Q+q],smaller[p],bigger[cont+p*Q+q+1]];
			cont++;
		}
		
		//show_debug_message(next_tr);
		next_tr[array_length_1d(next_tr)] = [bigger[cont+p*Q+q],smaller[p],smaller[p+1]];
	}
	for(var t = 0; t < array_length_1d(next_tr); t++) {
		var tr = next_tr[t];
		var dot1 = tr[0];
		var dot2 = tr[1];
		var dot3 = tr[2];
		model[array_length_1d(model)] = [dot1[0],dot1[1],dot1[2],dot2[0],dot2[1],dot2[2],dot3[0],dot3[1],dot3[2]];
	}
}

show_debug_message(model);
//show_debug_message(a);
file_text_close(file);