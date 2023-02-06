// Draw the screenshot



// Debugging
draw_set_font(fnt_testing);
draw_text(2, 2, "FPS=" + string(fps));

if instance_exists(oPlayer){
	draw_text(2, 32, "X:" + string(oPlayer.phy_position_xprevious) + " Y:" + string(oPlayer.phy_position_yprevious))
}

draw_text(2, 64, "ROOM: " + string(room));

draw_text(2, 96, "PREV. ROOM: " + string(ob_player_stats.previous_room));
/*
for (var i = 0; i < ds_list_size(save_dataa); i++){
	draw_text(100, 112 + (16 * i), save_dataa[|i]);	
}
*/

for (var i = 0; i < ds_list_size(KO_LIST); i++){
	draw_text(2, 112 + (16 * i), KO_LIST[|i]);	
}




if room = rm_pause{
	//draw_rectangle_color(0,0,xx, yy, c_black, c_black, c_black, c_black, false);
	if sprite_exists(screenshot){
	draw_sprite_ext(screenshot, 0, 0, 0, 1, 1, 0, c_white, .25);
	}
} else {
	if sprite_exists(screenshot){
		sprite_delete(screenshot)	
	}
}
	


/// Draw the stats

if room != rm_pause{

draw_text(display_get_gui_width()-175 , 16, "HP: " + string(hp) + "/" + string(maxhp));
draw_text(display_get_gui_width()-175, 32, "STA: " + string(stamina) + "/" + string(maxstamina));
draw_text(display_get_gui_width()-175, 48, "ATK: " + string(attack));
draw_text(display_get_gui_width()-175, 64, "XP: " + string(xp) + "/" + string(maxxp));
draw_text(display_get_gui_width()-175, 80, "LV: " + string(level));

}


