/// scr_move_state
function scr_move_state(){
	
if instance_exists(oPlayer){
	

if !(ob_input.run_key){
	spd = .8	
}

/*
if !(run_key) && !(dash_key){
	alarm[1] = room_speed;
	with ob_player_stats{

if stamina >= maxstamina{
	stamina = maxstamina;	
}
stamina += sign(ob_player_stats.maxstamina)/10;

}
}
*/

// Dashing
if (ob_input.dash_key) && (ob_input.run_key) && ob_player_stats.stamina >= 6{
	spd = .7;
	image_speed = 2	
	state = scr_dash_state;	
	alarm[0] = room_speed/3;
	ob_player_stats.stamina -= 5 + sign(ob_player_stats.maxstamina)/20;
	ob_player_stats.alarm[0] = 180;
} else if (dash_key) && ob_player_stats.stamina >= 5{
	state = scr_dash_state;
	alarm[0] = room_speed/3;
	ob_player_stats.stamina -= 5;
	ob_player_stats.alarm[0] = 180;
	
}

// Running
if (ob_input.run_key) && !(ob_input.dash_key) && ob_player_stats.stamina >=0{
	ob_player_stats.stamina -= sign(ob_player_stats.maxstamina)/20;	
	spd = 1.3;
	oPlayer.image_speed = 15;
	ob_player_stats.alarm[0] = 180;
} else if (ob_input.run_key) && ob_player_stats.stamina < 0{
		spd = .8;
}

}

// Attacking
if (ob_input.atk_key){
	image_index = 0.9;
	state = scr_patk_state;
}
// Get axis
var xaxis = (ob_input.right_key - ob_input.left_key); 
var yaxis = (ob_input.down_key - ob_input.up_key);



// Get direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get length
if (xaxis == 0 && yaxis == 0){
	len = 0;	
} else {
	len = spd;
	scr_get_face();
}

// Get hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control sprite
image_speed = sign(len) * 1;
if (len == 0) image_index = 0;

// Get directions

switch (face) {
	case RIGHT:
		sprite_index = sp_player_walk_right;
	break;
	
	case UP:
		sprite_index = sp_player_walk_up;
	break;
	
	case LEFT:
		sprite_index = sp_player_walk_left;
	break;
	
	case DOWN:
		sprite_index = sp_player_walk_down;
	break;
}
}


