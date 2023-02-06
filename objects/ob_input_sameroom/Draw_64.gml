var xx = display_get_gui_width();
var yy = display_get_gui_height();

// Drawing the pause menu
if paused{
	draw_rectangle_color(0,0,xx, yy, c_black, c_black, c_black, c_black, false);
	draw_sprite_ext(screenshot, 0, 0, 0, 1, 1, 0, c_white, .25);
	draw_set_halign(fa_center);
	draw_text(xx/2, (yy/2)-64, title);
	for (var i=0; i <= array_length(option)-1; i++){
		draw_set_color(c_gray);
		if i == menu_index{
			draw_set_color(c_white);	
		}
		draw_text(xx/2, yy/2+(i*32), option[i]);
}
}

// Resetting the alignment and colors
draw_set_color(c_white);
draw_set_halign(fa_left);




/*

var guiw = display_get_gui_width();
var guih = display_get_gui_height();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if paused{
	draw_sprite_ext(screenshot, 0, 0, 0, 1, 1, 0, c_white, 1);
	draw_text(guiw/2, guih/2, "Game Paused")
}

*/
