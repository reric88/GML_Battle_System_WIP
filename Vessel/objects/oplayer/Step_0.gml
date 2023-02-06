/// Movement code
event_inherited();
if instance_number(oPlayer) > 1{
	instance_destroy();	
}
depth = -y;

// Check for death
if ob_player_stats.hp <= 0{
	instance_destroy();	
}

scr_get_input();
script_execute(state);

/*

// Get axis
xaxis = (right_key - left_key); 
yaxis = (down_key - up_key);

if (dash_key){
	state = scr_dash_state;	
}

// Get direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get the length
if (xaxis == 0 && yaxis == 0){
	len = 0;	
} else {
	len = spd;	
}

// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control the sprite
image_speed = sign(len) * 1;
if (len == 0) image_index = 7.9;

// Vertical Sprite Movement
if (vspd > 0) {
	sprite_index = sp_player_walk_down;
} else if (vspd < 0) {
		sprite_index = sp_player_walk_up;
}

// Horizontal Sprite Movement
if (hspd > 0) {
	sprite_index = sp_player_walk_right;
} else if (hspd < 0) {
	sprite_index = sp_player_walk_left;	
}

*/
