
vector = argument[0];

for(i = 0; i < 3; i++) {
	vector[3*i+0] -= center[0];
	vector[3*i+1] -= center[1];
}



vector = multiply_matrixes(
	vector[0],
	vector[1],
	vector[2],
	vector[3],
	vector[4],
	vector[5],
	vector[6],
	vector[7],
	vector[8],
	
	dcos(argument[1]),
	-dsin(argument[1]),
	0,
	dsin(argument[1]),
	dcos(argument[1]),
	0,
	0,
	0,
	1,
);



for(i = 0; i < 3; i++) {
	vector[3*i+0] += center[0];
	vector[3*i+1] += center[1];
}


return vector;