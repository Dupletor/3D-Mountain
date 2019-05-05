
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