// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_wander_state(){
if hp >= 1{
	scr_check_for_player();
	if (point_distance(x, y, targetx, targety) > spd){
		var dir = point_direction(x, y, targetx, targety);
		var hspd = lengthdir_x(spd, dir);
		var vspd = lengthdir_y(spd, dir);
		
		// Face towards player
		if (hspd != 0){
			image_xscale = sign(hspd);
		}
		
		phy_position_x += hspd;
		phy_position_y += vspd;
	}
}
}
