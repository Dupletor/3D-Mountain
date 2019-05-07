
var dx = 100;

model = [];
file = file_text_open_read("mountainmodel.txt");

var radius = [];

while (!file_text_eof(file)) {
	radius[array_length_1d(radius)] = file_text_read_real(file);
}

var circles = [];

for(i=0;i<array_length_1d(radius);i++) {
	var nextdot = [];
	for(j=0;j<triangles_per_circle;j++) {
		nextdot[j] = [center[0]+dx*i,center[1]+radius[i]*dcos(360.*(j)/triangles_per_circle),center[2]+radius[i]*dsin(360.*(j)/triangles_per_circle)];
	}
	circles[i] = nextdot;
}
//circles  = [[[100,100,100],[100,200,100],[100,200,200],[100,100,200]],
//		[[200,75,75],[200,225,75],[200,225,225],[200,75,225]]];

for(c=1;c<array_length_1d(circles);c++) {
	var first_circle = circles[c-1];
	var next_circle = circles[c];
	first_circle[array_length_1d(first_circle)] = first_circle[0];
	next_circle[array_length_1d(next_circle)] = next_circle[0];
	posdown = 0;
	posup = 0;

	for(t=0;t<array_length_1d(first_circle)-1;t++) {
		var first_triangle = [first_circle[posdown],first_circle[posdown+1],next_circle[posup]];
		var second_triangle= [next_circle[posup],next_circle[posup+1],first_circle[posdown+1]];
		posdown++;
		posup++;
		
		
		next1 = [];
		next2 = [];
		for(i=0;i<3;i++) {
			for(j=0;j<3;j++) {
				next_dot1 = first_triangle[i];
				next_dot2 = second_triangle[i];
				next1 [3*i+j] = next_dot1[j];
				next2 [3*i+j] = next_dot2[j];
			}
		}
		
		model[array_length_1d(model)] = next1;
		model[array_length_1d(model)] = next2;
	}
	first_circle = next_circle;
}
	

/*
	var next = [];
	for(i = 0; i < 9; i++) {
		next[i] = file_text_read_real(file);
	}
	model[array_length_1d(model)] = next;
	file_text_readln(file);
}
*/

file_text_close(file);