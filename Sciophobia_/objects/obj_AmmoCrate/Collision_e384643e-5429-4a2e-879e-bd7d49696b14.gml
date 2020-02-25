/// @description Interact to gain Ammo
if(obj_pl1.key_interact){
	
	if(ammo_type == 1)
	{
		obj_pl1.normal_ammo += ammo_gain;
	}else if(ammo_type == 2)
	{
		obj_pl1.special_ammo += ammo_gain;	
	}
	
	audio_play_sound(ammunition_01,1,false);
	instance_destroy();
}