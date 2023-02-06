/// scr_get_input
function scr_get_input(){
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
dash_key = keyboard_check_pressed(ord("C"));
run_key = keyboard_check(vk_shift);
atk_key = keyboard_check_pressed(ord("X"));
pause_key = keyboard_check_pressed(vk_escape);

// Get axis
xaxis = (right_key - left_key); 
yaxis = (down_key - up_key);

// Check for gamepad input
if (gamepad_is_connected(0)) {
	//gamepad_set_axis_deadzone(0, .35)
	//xaxis = (gamepad_axis_value(0, gp_axislh));
	//yaxis = (gamepad_axis_value(0, gp_axislv));
	right_key = (gamepad_button_check(0, gp_padr)) || gamepad_axis_value(0, gp_axislh) >= .35
	left_key = (gamepad_button_check(0, gp_padl)) || gamepad_axis_value(0, gp_axislh) <= -.35
	down_key = (gamepad_button_check(0, gp_padd)) || gamepad_axis_value(0, gp_axislv) >= .35
	up_key = (gamepad_button_check(0, gp_padu)) || gamepad_axis_value(0, gp_axislv) <= -.35
	dash_key = (gamepad_button_check_pressed(0, gp_face2));
	run_key = (gamepad_button_check(0, gp_face1));
}
}
