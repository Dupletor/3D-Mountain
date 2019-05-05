angle = 0;

model = [];
file = file_text_open_read("cubemodel.txt");

while (!file_text_eof(file)) {
	var next = [];
	for(i = 0; i < 9; i++) {
		next[i] = file_text_read_real(file);
	}
	model[array_length_1d(model)] = next;
	file_text_readln(file);
}

file_text_close(file);

colors = [c_white,c_gray, c_green, c_lime, c_red, c_orange, c_blue, c_aqua];

center = [150,150,150];

file = file_text_open_write("cubemodel.txt");
for(i = 0; i < array_length_1d(model); i++) {
	for(j=0; j < 9; j++) {
		var n = model[i];
		file_text_write_real(file, n[j]);
	}
	file_text_writeln(file);
}
file_text_close(file);