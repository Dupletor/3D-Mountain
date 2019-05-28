
if(file_exists(argument[0])) {
	file = file_text_open_read(argument[0]);
	while (!file_text_eof(file)) {
		model[array_length_1d(model)] = [file_text_read_real(file),file_text_read_real(file),file_text_read_real(file),file_text_read_real(file),file_text_read_real(file),file_text_read_real(file),file_text_read_real(file),file_text_read_real(file),file_text_read_real(file)];
		file_text_readln(file);
	}
	

	file_text_close(file);
}
