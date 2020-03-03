/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, obj_cursor))
{
	image_index = 1;
	if(obj_cursor.select_key)
	{
		room_restart();
	}
}
else
{
	image_index = 0;
}