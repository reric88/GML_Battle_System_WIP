draw_set_font(fnt_testing);

draw_text(2, 2, "FPS=" + string(fps));

if instance_exists(oPlayer){
	draw_text(2, 32, "X:" + string(oPlayer.phy_position_xprevious) + " Y:" + string(oPlayer.phy_position_yprevious))
}

draw_text(2, 64, "ROOM: " + string(room));

draw_text(2, 96, "PREV. ROOM: " + string(ob_player_stats.previous_room));