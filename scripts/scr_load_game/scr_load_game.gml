// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_game(){

var file = file_text_open_read(working_directory + "Save 1.txt");
var save_string = file_text_read_string(file);
file_text_close(file);



//save_string = base64_decode(save_string);
//var save_data = json_decode(save_string);
var save_data = json_decode(save_string);
var save_room = save_data[? "room"];



if (room != save_room){
	room_goto(save_room);	
}

with (ob_player_stats){
	player_xstart = save_data[? "x"];
	player_ystart = save_data[? "y"];
	if instance_exists(oPlayer){
		oPlayer.x = player_xstart;
		oPlayer.y = player_ystart;
		oPlayer.phy_position_x = player_xstart;
		oPlayer.phy_position_y = player_ystart;
	} else {
		instance_destroy(oPlayer);
		instance_create_depth(player_xstart, player_ystart, 0, oPlayer);
	}

	hp = save_data[? "hp"]
	maxhp = save_data[? "maxhp"]
	stamina = save_data[? "stamina"]
	maxstamina = save_data[? "maxstamina"]
	xp = save_data[? "xp"]
	maxxp = save_data[? "maxxp"]
	level = save_data[? "level"]
	attack = save_data[? "attack"]
	//list_string = save_data[? "DEAD"]
	//ds_list_read(KO_LIST, list_string)
}
ds_map_destroy(save_data)

show_message("File loaded successfully!");

}