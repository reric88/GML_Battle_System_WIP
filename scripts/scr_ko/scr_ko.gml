// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_ko(){
	if ds_exists(KO_LIST, ds_type_list){
		//KO_LIST[| ob_player_stats.ko_index ++] = id;
		ds_list_add(KO_LIST, myid, ko_index);
	}
}


/*


for (var i = 0; i < ds_map_size(testmap); i++){
	draw_text(2, 112 + (16 * i), testmap[|i]);	
}






testmap = ds_map_create();

	testmap[? "id"] = 





// Saved working script

for (var i = 0; i < ds_list_size(KO_LIST); i++){
	draw_text(2, 112 + (16 * i), KO_LIST[|i]);






// Test script below

/*
function scr_ko(){
	if ds_exists(KO_LIST, ds_type_list){
		ds_list_add(KO_LIST, id);
	}
}
*/

/*
if instance_exists(ob_player_stats){
var save_data = ob_player_stats.save_dataa
	save_data[? "id"] = object_index;

//json_encode(save_data);
var save_string = json_encode(save_data);
ds_map_destroy(save_data);
//save_string = base64_encode(save_string);


var file = file_text_open_write(working_directory + "Enemies.txt");
file_text_write_string(file, save_string);
file_text_close(file);
}







}