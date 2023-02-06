scr_get_input();

// Pressing the pause button
if (pause_key){
	paused = !paused;
	if !sprite_exists(screenshot){
		screenshot = sprite_create_from_surface(application_surface, 0, 0, view_wport, view_hport, 0, 0, 0, 0);	

	}
}

// Pausing the game
if paused{
	instance_deactivate_all(1);
	instance_activate_object(ob_player_stats);
	
	
	// Pause menu & navigation
	if alarm[0] <= 0{
	if (down_key){
		if menu_index < array_length(option)-1{
			menu_index ++;	
		} else {
			menu_index = 0;	
		}
		alarm[0] = 10;
	}
	
	if (up_key){
		if menu_index > 0{
			menu_index --;	
		} else {
			menu_index = array_length(option)-1;	
		}
		alarm[0] = 10;
	}
	
	if (dash_key){
		switch (menu_index){
			
			case 0:
				if sprite_exists(screenshot){
					sprite_delete(screenshot);
					instance_activate_all();
					paused = false;
				}
				break;
			
			case 1:
				
				break;
			
			case 2:
				scr_save_game();
				break;
				
				/*
				case 2.1:
					scr_save_game(file1);
					break;
					
				case 2.2:
					scr_save_game(file2);
					break;
					
				case 2.3:
					scr_save_game(file3);
					break;
				*/
			
			case 3:
				
				break;
			
			case 4:
				game_end();
				break;
			
			default:
				
				break;
		}
		//dash_key = false;
	}
	
}

// Exiting the pause menu
} else {
	if sprite_exists(screenshot){
		sprite_delete(screenshot);
	}
	instance_activate_all();
	
}
		

		
/*	
	
	
	
	
		
	 && instance_exists(oPlayer)	
		oPlayer.persistent = false;		

// Pause the game
if (pause_key){
	if (room != rm_pause){
		if (instance_exists(oPlayer)){
			oPlayer.persistent = false;
		} 
		previous_room = room;
		room_goto(rm_pause);
	} else {
		room_goto(previous_room);
		
	}
}
