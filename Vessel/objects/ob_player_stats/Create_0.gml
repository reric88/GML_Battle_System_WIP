/// Initialize player stats
globalvar KO_LIST;
KO_LIST = ds_list_create();






hp = 5;
maxhp = hp;
stamina = 10
maxstamina = stamina;
xp = 0;
maxxp = 3;
level = 1;
attack = 1;

// save the previous room
screenshot = -1;
previous_room = room;
room_start_action = NEW_ROOM;

// Get the players x and y start positions
if (instance_exists(oPlayer)){
	player_xstart = oPlayer.x
	player_ystart = oPlayer.y
} else {
	player_xstart = 0;
	player_ystart = 0;
}