function scr_patk_state(){
// Change player sprite to attack
image_speed = 1;
	switch (sprite_index){
	case sp_player_walk_down:
		sprite_index = sp_player_atk_down;
		break;
		
	case sp_player_walk_up:
		sprite_index = sp_player_atk_up;
		break;
		
	case sp_player_walk_right:
		sprite_index = sp_player_atk_right;
		break;
		
	case sp_player_walk_left:
		sprite_index = sp_player_atk_left;
		break;
}



if image_index >= 3 && attacked == false {
	var xx = 0;
	var yy = 0;
	switch (sprite_index){
		case sp_player_atk_down:
			xx = x;
			yy = y + 10;
			break;
		
		case sp_player_atk_up:
			xx = x;
			yy = y - 16;
			break;
		
		case sp_player_atk_right:
			xx = x + 18;
			yy = y - 5;
			break;
		
		case sp_player_atk_left:
			xx = x - 18;
			yy = y - 5;
			break;
}

	var damage = instance_create_depth(xx, yy, oPlayer.depth +1, ob_damage);

	damage.creator = id;
	damage.damage = ob_player_stats.attack;
	attacked = true;
}
}
/*
switch(image_index){
	case sp_player_idle_down:
		// Do something
		break;
}
*/

// Create the slash effect
/*
instance_create_depth(x, y, oPlayer.depth +1, ob_atk_slash);
}
*/


