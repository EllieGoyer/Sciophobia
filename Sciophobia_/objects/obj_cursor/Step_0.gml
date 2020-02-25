/// @description Insert description here
// You can write your code in this editor

if(gamepad_is_connected(1))
{
	select_key = gamepad_button_check_pressed(1, gp_face1);
}
else
{
	select_key = mouse_check_button_pressed(mb_left);
	x = mouse_x;
	y = mouse_y;
}