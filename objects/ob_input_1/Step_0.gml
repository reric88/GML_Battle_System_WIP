scr_get_input();

// Screenshot code


// Pause the game
if (pause_key){
	if (room != rm_pause) && sprite_exists(screenshot){
		if (instance_exists(oPlayer)){
			oPlayer.persistent = false;
		} 
		previous_room = room;
		room_goto(rm_pause);
	} else {
		room_goto(previous_room);
		
	}
}

// You can make rooms which arent persistent by using the above code.
// This can be used to make rooms which reset enemies

