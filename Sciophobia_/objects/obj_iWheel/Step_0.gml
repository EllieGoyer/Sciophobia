/// @description Insert description here
//sound timer script

if(obj_pl1.key_show_inventory)
{
	x = obj_pl1.x;
	y = obj_pl1.y;
	image_alpha = 100;
	if(!once)
	{
		instance_create_layer(x,y, "GUI", obj_w1_knife);
		instance_create_layer(x,y, "GUI", obj_w2_pistol);
		instance_create_layer(x,y, "GUI", obj_w3_huntingRifle);
		instance_create_layer(x,y, "GUI", obj_w4_shotgun);
		instance_create_layer(x,y, "GUI", obj_w5_grenadeLauncher);
		instance_create_layer(x,y, "GUI", obj_w6_assultRifle);
		instance_create_layer(x,y, "GUI", obj_w7_pulseCannon);
		instance_create_layer(x,y, "GUI", obj_w8_dissolverGrenade);
		instance_create_layer(x,y, "GUI", obj_w9_flashbang);
		instance_create_layer(x,y, "GUI", obj_w10_moltov);
		instance_create_layer(x,y, "GUI", obj_w11_glowstick);
		instance_create_layer(x,y, "GUI", obj_w12_flashlight);
		once = true;
	}
	
	if(!audio_is_playing(menu_rotate_01) && can_play_sound)
	{
		audio_play_sound(menu_rotate_01, 1, false);
		can_play_sound = false;
	}
}
else
{
	image_alpha = 0;
	can_play_sound = true;
	once = false;
}