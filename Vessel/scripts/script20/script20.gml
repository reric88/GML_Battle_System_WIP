// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_idgen(){
	static counter = 0;
	counter ++;
	return counter;
}

/*
// Testing ds_list_size to try to save and load enemy ids
function scr_enemy_id(){
	
		
	
}

/*
function scr_myid_map(){
	idgen_map = ds_map_create();

	idgen_map[? myid] = myid;
	
var save_string = json_encode(idgen_map);

var file = file_text_open_write(working_directory + "Dead Enemies.txt");
file_text_write_string(file, save_string);
file_text_close(file);
}


function scr_myid_list(){

var idgen_list = ds_list_create();
	
	
}