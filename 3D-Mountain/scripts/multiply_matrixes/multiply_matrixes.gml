/*
|a11 a12 a13|   |b11 b12 b13|   |a11*b11+a12*b21+a13*b31  a11*b12+a12*b22+a13*b32 a11*b13+a12*b23+a13*b33|
|a21 a22 a23| * |b21 b22 b23| = |a21*b11+a22*b21+a23*b31  a21*b12+a22*b22+a23*b32 a21*b13+a22*b23+a23*b33|
|a31 a32 a33|   |b31 b32 b33|   |a31*b11+a32*b21+a33*b31  a31*b12+a32*b22+a33*b32 a31*b13+a32*b23+a33*b33|
*/

a11 = argument[0]
a12 = argument[1]
a13 = argument[2]
a21 = argument[3]
a22 = argument[4]
a23 = argument[5]
a31 = argument[6]
a32 = argument[7]
a33 = argument[8]


b11 = argument[9]
b12 = argument[10]
b13 = argument[11]
b21 = argument[12]
b22 = argument[13]
b23 = argument[14]
b31 = argument[15]
b32 = argument[16]
b33 = argument[17]

return [a11*b11+a12*b21+a13*b31,  a11*b12+a12*b22+a13*b32, a11*b13+a12*b23+a13*b33,
		a21*b11+a22*b21+a23*b31,  a21*b12+a22*b22+a23*b32, a21*b13+a22*b23+a23*b33,
		a31*b11+a32*b21+a33*b31,  a31*b12+a32*b22+a33*b32, a31*b13+a32*b23+a33*b33];
