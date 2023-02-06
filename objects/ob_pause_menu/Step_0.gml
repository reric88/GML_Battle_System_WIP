/// Control menu

if alarm[0] <= 0{
	if ob_input.down_key{
		if menu_index < array_length(option)-1{
			menu_index ++;	
		} else {
			menu_index = 0;	
		}
		alarm[0] = 10;
	}
	
	if ob_input.up_key{
		if menu_index > 0{
			menu_index --;	
		} else {
			menu_index = array_length(option)-1;	
		}
		alarm[0] = 10;
	}

	if (ob_input.dash_key){
		switch (menu_index){
			
			case 0:
				ob_player_stats.room_start_action = RETURN;
				room_goto(ob_player_stats.previous_room);
				
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
			ob_player_stats.room_start_action = LOAD;
			room_goto(ob_player_stats.previous_room);
			
			
				break;
			
			case 4:
				game_end();
				break;
			
			default:
				
				break;
		}
		ob_input.dash_key = false;
	}
	
	
}
