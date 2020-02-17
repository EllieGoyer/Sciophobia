if(distance_to_object(obj_pl1) < 5)
{
	draw_set_color(c_black);
	if(gamepad_is_connected(1))
	{
		draw_text(x, y, "A");
	}
	else
	{
		draw_text(x, y, "F");
	}
}
else
{
	draw_set_color(c_white);
}