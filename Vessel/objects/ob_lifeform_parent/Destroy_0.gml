ko_index = 1;
var file = file_text_open_append(working_directory + "KO'd Enemies.txt")
file_text_writeln(file);
file_text_write_string(file, "ID: ");
file_text_write_real(file, myid);
file_text_write_string(file, "= ");
file_text_write_real(file, ko_index);
file_text_close(file)