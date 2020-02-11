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