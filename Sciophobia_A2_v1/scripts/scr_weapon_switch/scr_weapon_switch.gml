//on weapon switch
//set selected weapon to true and rest to false
//call weapon stats

//set all weapons to unequipped
obj_pl1.knife = 0;
obj_pl1.hunting_rifle = 0;
if(obj_pl1.pistol != -1)
{
	obj_pl1.pistol = 0;
}
if(obj_pl1.shotgun != -1)
{
	obj_pl1.shotgun = 0;
}
if(obj_pl1.grenade_launcher != -1)
{
	obj_pl1.grenade_launcher = 0;
}
if(obj_pl1.assult_rifle != -1)
{
	obj_pl1.assult_rifle = 0;
}
if(obj_pl1.pulse_cannon != -1)
{
	obj_pl1.pulse_cannon = 0;
}

//set selected weapon to equipped
if(argument0 == 1)
{
	obj_pl1.knife = 1;
}
else if(argument0 == 2)
{
	obj_pl1.hunting_rifle = 1;
}
else if(argument0 == 3 && obj_pl1.pistol != -1)
{
	obj_pl1.pistol = 1
}
else if(argument0 == 3 && obj_pl1.shotgun != -1)
{
	obj_pl1.shotgun = 1
}
else if(argument0 == 3 && obj_pl1.grenade_launcher != -1)
{
	obj_pl1.grenade_launcher = 1
}
else if(argument0 == 3 && obj_pl1.assult_rifle != -1)
{
	obj_pl1.assult_rifle = 1
}
else if(argument0 == 3 && obj_pl1.pulse_cannon != -1)
{
	obj_pl1.pulse_cannon = 1
}

//call weapon stats to update
scr_weapon_stats();