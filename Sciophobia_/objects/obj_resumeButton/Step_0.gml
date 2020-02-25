/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, obj_cursor))
{
	image_index = 1;
	if(obj_cursor.select_key)
	{
		obj_gui.pauseMenu = false;
		if(instance_exists(obj_controlsbutton))
		{
			instance_destroy(obj_controlsbutton);
		}
		if(instance_exists(obj_exitButton))
		{
			instance_destroy(obj_exitButton);
		}
		if(instance_exists(obj_cursor))
		{
			instance_destroy(obj_cursor);
		}
		instance_destroy();
	}
}
else
{
	image_index = 0;
}