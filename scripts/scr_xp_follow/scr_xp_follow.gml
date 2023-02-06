// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Checking for player
function scr_xpcheck_for_player(){

if (instance_exists(oPlayer)){
	var dis = point_distance(x, y, oPlayer.x, oPlayer.y);
	if (dis < sight){
		state = scr_xp_follow;
		targetx = oPlayer.x;
		targety = oPlayer.y;
	}  else {
		scr_xp_choose_next_state();	
	}
} else {
	scr_xp_choose_next_state();
}

}

// Following the player
function scr_xp_follow(){
if (instance_exists(oPlayer)){
	scr_xpcheck_for_player();
	var dir = point_direction(x, y, targetx, targety);
	var hspd = lengthdir_x(spd, dir);
	var vspd = lengthdir_y(spd, dir);
	phy_position_x += hspd / point_distance(x, y, oPlayer.x, oPlayer.y);
	phy_position_y += vspd / point_distance(x, y, oPlayer.x, oPlayer.y);
}
/*
phy_position_x += sign(targetx - x)*spd / point_distance(x, y, oPlayer.x, oPlayer.y);
phy_position_y += sign(targety - y)*spd / point_distance(x, y, oPlayer.x, oPlayer.y);
*/

}


function scr_xp_choose_next_state(){
	if (instance_exists(oPlayer)){
	if alarm[0] <= 0{
		state = scr_xp_idle_state;
		alarm [0] = room_speed;
		targetx = oPlayer.x;
		targety = oPlayer.y;
	}
}
}
function scr_xp_idle_state(){
if (instance_exists(oPlayer)){
	scr_xpcheck_for_player();
}

}
