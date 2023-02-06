/// Draw the menu

var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;

draw_set_halign(fa_center);
draw_text(xx, yy-64, title);

for (var i=0; i <= array_length(option)-1; i++){
	draw_set_color(c_gray);
	if i == menu_index{
		draw_set_color(c_white);	
	}
	draw_text(xx, yy+(i*32), option[i]);
	
}

draw_set_color(c_white);
draw_set_halign(fa_left);
