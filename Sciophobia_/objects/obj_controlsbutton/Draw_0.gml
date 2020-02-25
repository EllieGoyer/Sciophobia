/// @description Insert description here
// You can write your code in this editor
draw_self();

if(place_meeting(x, y, obj_cursor))
{
	image_index = 1;
	if(obj_cursor.select_key)
	{
		show = true;
	}
}
else
{
	image_index = 0;
}

if(show && !key_back)
{
	scr_showControls();
}

if(key_back)
{
	show = false;
}