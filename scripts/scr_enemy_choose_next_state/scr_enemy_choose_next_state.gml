// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_choose_next_state(){

if alarm[0] <= 0 && hp >= 1{
	state = choose(scr_enemy_wander_state, scr_enemy_idle_state);
	alarm[0] = room_speed*irandom_range(2, 4);
	targetx = random(room_width);
	targety = random(room_height);
}

}
