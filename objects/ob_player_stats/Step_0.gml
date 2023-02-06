/// Control stats



if hp < 0{
	hp = 0;	
}

// Stamina regeneration

if (room = rm_pause) {
    alarm[0]++;
} else {
if (stamina < maxstamina and room != rm_pause and alarm[0] == -1) {
    stamina+= sign(maxstamina)/10;
    }
}

// Original code for stamina regeneration
/*if stamina < maxstamina && alarm [0] == -1{
	if room != rm_pause{
		stamina += sign(maxstamina)/10;	
	}
}
*/

// Pause the game
if (ob_input.pause_key){
				if !sprite_exists(screenshot){
				screenshot = sprite_create_from_surface(application_surface, 0, 0, view_wport, view_hport, 0, 0, 0, 0);
				}
	if (room != rm_pause){
		if (instance_exists(oPlayer)){
			oPlayer.persistent = false;
		}
		previous_room = room;
		room_persistent = true;
		room_goto(rm_pause);
	} else {
		if room == rm_pause && sprite_exists(screenshot){
			sprite_delete(screenshot)
			}
		room_goto(previous_room);

		}
	ob_input.pause_key = false;
}


// You can make rooms which arent persistent by using the above code.
// This can be used to make rooms which reset enemies

