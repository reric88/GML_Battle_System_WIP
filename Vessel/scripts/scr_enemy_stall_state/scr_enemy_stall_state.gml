// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_stall_state(){

if alarm[1] <= 0 && hp >= 1{
	state = scr_enemy_idle_state;	
}

}