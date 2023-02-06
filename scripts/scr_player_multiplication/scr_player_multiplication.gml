/*

This script is defunct

function scr_patk_state(){
// Change player sprite to attack
speed = 0;
oPlayer.sprite_index = sp_player_atk_right;

// Create the slash effect
var slash = instance_create_depth(x, y, oPlayer.depth +1, ob_atk_slash);
slash.sprite_index = sprite_index;
slash.image_index = image_index;

}
