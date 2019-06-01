
if(file_exists(argument[0])) {
	file = file_text_open_read(argument[0]);
	while (!file_text_eof(file)) {
		var nx1 = file_text_read_real(file), ny1 = file_text_read_real(file), nz1 = file_text_read_real(file), nx2 = file_text_read_real(file), ny2 = file_text_read_real(file), nz2 = file_text_read_real(file), nx3 = file_text_read_real(file), ny3 = file_text_read_real(file), nz3 = file_text_read_real(file);
		model[array_length_1d(model)] = [nx1, ny1, nz1, nx2, ny2, nz2, nx3, ny3, nz3];
		model_h[array_length_1d(model_h)] = (max(ny1,ny2,ny3)+min(ny1,ny2,ny3));
		file_text_readln(file);
	}
	

	file_text_close(file);
}
