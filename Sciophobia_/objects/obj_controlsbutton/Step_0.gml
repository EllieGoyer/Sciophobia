/// @description Insert description here
// You can write your code in this editor


if(gamepad_is_connected(1))
{
	key_back = gamepad_button_check(padid, gp_shoulderl);
}
else
{
	key_back = mouse_check_button_pressed(mb_right);
}