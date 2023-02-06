// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_save_game(){
	
// Make sure the player exists
if (instance_exists(oPlayer)) exit;

// Create the save data structure
var save_data = ds_map_create();




with ob_player_stats{
	//ds_map_add(save_data, "hp", hp);
	save_data[? "room"] = ob_player_stats.previous_room;
	save_data[? "x"] = player_xstart;
	save_data[? "y"] = player_ystart;
	save_data[? "hp"] = hp;
	save_data[? "maxhp"] = maxhp;
	save_data[? "stamina"] = stamina;
	save_data[? "maxstamina"] = maxstamina;
	save_data[? "xp"] = xp;
	save_data[? "maxxp"] = maxxp;
	save_data[? "level"] = level;
	save_data[? "attack"] = attack;

	


}
//json_encode(save_data);
var save_string = json_encode(save_data);
ds_map_destroy(save_data);
//save_string = base64_encode(save_string);


var file = file_text_open_write(working_directory + "Save 1.txt");
file_text_write_string(file, save_string);
file_text_close(file);











////////// Saving Enemy and attributes //////////

/*

//make save array
var _savedata = array_create(0);

// create and add a struct to every instance
with (ob_lifeform_parent){
	
	var _saveentity = {
		enemy : object_get_name(object_index),
		y : y,
		x : x,
		ko_index : ko_index,	
	}
	array_push(_savedata, _saveentity);
}

// Turn data into JSON string and save it via a buffer
var _string = json_stringify(_savedata);

// Text file code
var _file = file_text_open_write(working_directory + "savedgame.txt");
file_text_write_string(_file, _string);
file_text_close(_file)


// Buffer code
var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "savedgame.save");
buffer_delete(_buffer);

show_debug_message("Game Saved! " + _string);

*/

////////// End saving enemy and attributes //////////











/*
//var file2 = file_text_open_write(working_directory + "Enemies.txt");
file_text_open_write(working_directory + "Enemies.txt");
	KO_test = ds_list_write(ob_player_stats.KO_array)
	
	for (enemy_countWrite = 0; enemy_countWrite < ob_player_stats.enemy_count; enemy_countWrite +=1){
	file_text_write_string("Enemies", "Enemy ID" + string(enemy_countWrite) + KO_test) 
	}
file_text_close(working_directory + "Enemies.txt")
*/

/*

if menu_index == 2.2{
var file = file_text_open_write(working_directory + "Save 2.txt");
file_text_write_string(file, save_string);
file_text_close(file);
}

if menu_index == 2.3{
var file = file_text_open_write(working_directory + "Save 3.txt");
file_text_write_string(file, save_string);
file_text_close(file);
}

*/
	
	
	
	
show_message("Game Saved!");
}

/////////////////////////////////////////////////////////////////////////////