/// @description Insert description here

x = obj_iWheel.x;
y = obj_iWheel.y;

if(!obj_pl1.key_show_inventory)
{
	instance_destroy();
}

if(place_meeting(x, y, obj_crosshairs) && image_alpha != 0)
{
	if(image_index == 0)
	{
		image_index = 1;
		selected = true;
	}
}
else
{
	image_index = tempIndex;
	selected = false;
}