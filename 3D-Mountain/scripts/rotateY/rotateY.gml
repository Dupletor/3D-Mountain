
vector = argument[0];

return multiply_matrixes(
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
	0,
	dsin(argument[1]),
	0,
	1,
	0,
	-dsin(argument[1]),
	0,
	-dcos(argument[1]),
	
);