/// scr_dash_state
function scr_dash_state(){
	
if len == 0{
	dir = face*90;	
}
len = spd*4;

// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Dash Sprite
if right_key{
sprite_index = sp_player_dash_right;
}


// Create the dash effect
var dash = instance_create_depth(x, y, oPlayer.depth +1, ob_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;
}
