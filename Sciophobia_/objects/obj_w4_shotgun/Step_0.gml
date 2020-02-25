/// @description Insert description here

if(!obj_pl1.key_show_inventory)
{
	instance_destroy();
}

if(place_meeting(x, y, obj_crosshairs))
{
	if(image_index == 0)
	{
		image_index = 1;
	}
	if(obj_pl1.key_interact)
	{
		scr_weapon_switch(4);
	}
}
else
{
	image_index = tempIndex;
}