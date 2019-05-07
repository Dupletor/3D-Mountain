/*
                |b11 b12 b13|   
|a11 a12 a13| * |b21 b22 b23| = |a11*b11+a12*b21+a13*b31  a11*b12+a12*b22+a13*b32 a11*b13+a12*b23+a13*b33|
                |b31 b32 b33|   
*/

a11 = argument[0]
a12 = argument[1]
a13 = argument[2]

b11 = argument[3]
b12 = argument[4]
b13 = argument[5]
b21 = argument[6]
b22 = argument[7]
b23 = argument[8]
b31 = argument[9]
b32 = argument[10]
b33 = argument[11]

return [a11*b11+a12*b21+a13*b31,  a11*b12+a12*b22+a13*b32, a11*b13+a12*b23+a13*b33];
