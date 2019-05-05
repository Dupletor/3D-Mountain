
file = file_text_open_write("cubemodel.txt");
for(i = 0; i < array_length_1d(model); i++) {
	for(j=0; j < 9; j++) {
		var n = model[i];
		file_text_write_real(file, n[j]);
	}
	file_text_writeln(file);
}
file_text_close(file);