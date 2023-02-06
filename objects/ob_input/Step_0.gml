scr_get_input();

if keyboard_check_pressed(ord("Q")) && debug == false{
	debug = true;
	instance_create_depth(0, 0, -9999, ob_debug);
}	
		
if keyboard_check_pressed(ord("Q")) && debug == true{
	debug = false;
	instance_destroy(ob_debug);
}
/*
var _key = keyboard_lastchar;
if ord(_key) == ord("ç")
{
    show_debug_message("ç key pressed");
}

if keyboard_check_pressed(vk_anykey){
show_message(string(_key) + " pressed")
}