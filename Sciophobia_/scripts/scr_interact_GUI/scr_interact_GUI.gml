draw_set_color(c_black);
if(gamepad_is_connected(1))
{
	draw_text(x, y-50, "A");
}
else
{
	draw_text(x, y-50, "F");
}

draw_set_color(c_white);