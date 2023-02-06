/// Remember the players start position

if (room == rm_pause) exit;

switch (room_start_action) {
	case RETURN:
		room_goto(previous_room);
		break;
		
	case NEW_ROOM:
	default:
		if (instance_exists(oPlayer)){
		player_xstart = oPlayer.x
		player_ystart = oPlayer.y
		previous_room = room;
		}

		break;
		
	case LOAD:
		scr_load_game();

		break;
		
		
	
}


room_start_action = -1
room_persistent = true;
