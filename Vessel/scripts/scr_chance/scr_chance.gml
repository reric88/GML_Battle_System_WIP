// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_chance(){

var percent = argument[0]; //Between 0 and 1
percent = clamp(percent, 0, 1);
return (random(1) < percent);

}