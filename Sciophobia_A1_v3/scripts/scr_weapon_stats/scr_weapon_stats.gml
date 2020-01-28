if(obj_pl1.knife)
{
	obj_pl1.dmg = 1;
	obj_pl1.shoot_sp = 30;
	obj_pl1.weapon_weight = 0;
}
else if(obj_pl1.hunting_rifle)
{
	obj_pl1.reload_sp = 2*room_speed;
	obj_pl1.dmg = 3;
	obj_pl1.bullet_capacity = 1;
	obj_pl1.weapon_weight = 1;
}
else if(obj_pl1.pistol)
{
	obj_pl1.reload_sp = .6*room_speed;
	obj_pl1.shoot_sp = 1;
	obj_pl1.dmg = 1;
	obj_pl1.bullet_capacity = 11;
	obj_pl1.weapon_weight = .2;
}
else if(obj_pl1.shotgun)
{
	obj_pl1.reload_sp = .9*room_speed;
	obj_pl1.shoot_sp = 60;
	obj_pl1.dmg = 3;
	obj_pl1.bullet_capacity = 7;
	obj_pl1.weapon_weight = .5;
}
else if(obj_pl1.grenade_launcher)
{
	obj_pl1.reload_sp = 2.5*room_speed;
	obj_pl1.dmg = 3;
	obj_pl1.bullet_capacity = 1;
	obj_pl1.weapon_weight = 1;
}
else if(obj_pl1.assult_rifle)
{
	obj_pl1.reload_sp = 1*room_speed;
	obj_pl1.shoot_sp = 2;
	obj_pl1.dmg = 2;
	obj_pl1.bullet_capacity = 30;
	obj_pl1.weapon_weight = .5;
}
else if(obj_pl1.pulse_cannon)
{
	obj_pl1.reload_sp = 4*room_speed;
	obj_pl1.shoot_sp = 2;
	obj_pl1.dmg = 3;
	obj_pl1.bullet_capacity = 100;	
	obj_pl1.weapon_weight = 1;
}