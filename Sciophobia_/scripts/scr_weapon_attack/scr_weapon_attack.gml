//change direction based on aim
if((obj_pl1.aim_angle >= 90 && obj_pl1.aim_angle <180) && obj_pl1.curDir == 1)
{
	obj_pl1.curDir = -1;
	sprite_index = spr_player_left;
}
if((obj_pl1.aim_angle >= 180 && obj_pl1.aim_angle <= 270) && obj_pl1.curDir == 1)
{
	obj_pl1.curDir = -1;
	sprite_index = spr_player_left;
}
if((obj_pl1.aim_angle <= 90 && obj_pl1.aim_angle > 0 && obj_pl1.curDir == -1))
{
	obj_pl1.curDir = 1;
	sprite_index = spr_player_right;
}
if((obj_pl1.aim_angle <= 360 && obj_pl1.aim_angle >= 270 && obj_pl1.curDir == -1))
{
	obj_pl1.curDir = 1;
	sprite_index = spr_player_right;
}

if((obj_pl1.hmove > 0 && mouse_x >= obj_pl1.x) || (obj_pl1.hmove < 0 && mouse_x <= obj_pl1.x) || obj_pl1.hmove == 0)
{
if(obj_pl1.knife)
{
	if(key_shoot)
	{
		//stab animation
		//hit in front
	}
}
else if(obj_pl1.hunting_rifle && obj_pl1.normal_ammo > 0)
{
	if(key_shoot)
	{
		instance_create_layer(x, y, "Instances", obj_bullet);
		obj_pl1.normal_ammo--;
		//audio_play_sound(no_ammo_01,1,false);
	}
}
else if(obj_pl1.pistol && obj_pl1.normal_ammo > 0)
{
	if(key_shoot)
	{
		instance_create_layer(x, y, "Instances", obj_bullet);
		obj_pl1.normal_ammo--;
	}
}
else if(obj_pl1.shotgun && obj_pl1.special_ammo > 0)
{
	if(key_shoot)
	{
		instance_create_layer(x, y, "Instances", obj_bullet);
		obj_pl1.special_ammo--;
	}
}
else if(obj_pl1.grenade_launcher && obj_pl1.special_ammo > 0)
{
	if(key_shoot)
	{
		instance_create_layer(x, y, "Instances", obj_bullet);
		obj_pl1.special_ammo--;
	}	
}
else if(obj_pl1.assult_rifle && obj_pl1.normal_ammo > 0)
{
	if(key_shoot_auto)
	{
		instance_create_layer(x, y, "Instances", obj_bullet);
		obj_pl1.normal_ammo--;
	}
}
else if(obj_pl1.pulse_cannon && obj_pl1.special_ammo > 0)
{
	if(key_shoot_auto)
	{
		instance_create_layer(x, y, "Instances", obj_bullet);
		obj_pl1.special_ammo--;
	}	
}
}