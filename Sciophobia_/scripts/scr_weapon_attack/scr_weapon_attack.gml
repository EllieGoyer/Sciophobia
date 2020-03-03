//sound timer script
//general sound timer reset
can_play_sound = true;
sound_timer = 0;

if(can_play_sound == false)
{
	sound_timer--;
}

if(sound_timer <= 0)
{
	can_play_sound = true;
}


//change direction based on aim when moving
if(obj_pl1.hmove == 0)
{
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
}

//able to shoot when standing still or when mouse is in same direction as player
if((obj_pl1.hmove > 0 && mouse_x >= obj_pl1.x) || (obj_pl1.hmove < 0 && mouse_x <= obj_pl1.x) || obj_pl1.hmove == 0)
{
	if(obj_pl1.knife)
	{
		if(key_shoot)
		{
			//stab animation
			if(curDir == 1)
			{
					sprite_index = spr_slash_right;
			}
			else
			{
					sprite_index = spr_slash_left;
			}
			
			//audio
			audio_play_sound(knife_swing_01, 1, false);
		}
	}
	else if(obj_pl1.hunting_rifle && obj_pl1.normal_ammo > 0)
	{
		if(key_shoot)
		{
			if(shoot_timer < 1)
			{
				instance_create_layer(x, y, "Instances", obj_bullet);
				obj_pl1.normal_ammo--;
				audio_play_sound(hunting_rifle_01, 1, false);
				shoot_timer = obj_pl1.shoot_sp;
			}
		}
	}
	else if(obj_pl1.pistol && obj_pl1.normal_ammo > 0)
	{
		if(key_shoot)
		{
			if(shoot_timer < 1)
			{
				instance_create_layer(x, y, "Instances", obj_bullet);
				obj_pl1.normal_ammo--;
				//audio
				audio_play_sound(pistol_fire_01, 1, false);
				shoot_timer = obj_pl1.shoot_sp;
			}
		}
	}
	else if(obj_pl1.shotgun && obj_pl1.normal_ammo > 0)
	{
		if(key_shoot)
		{
			if(shoot_timer < 1)
			{
				instance_create_layer(x, y, "Instances", obj_bullet);
				obj_pl1.normal_ammo--;
				shoot_timer = obj_pl1.shoot_sp;
			}
		}
	}
	else if(obj_pl1.grenade_launcher && obj_pl1.normal_ammo > 0)
	{
		if(key_shoot)
		{
			if(shoot_timer < 1)
			{
				instance_create_layer(x, y, "Instances", obj_bullet);
				obj_pl1.normal_ammo--;
				shoot_timer = obj_pl1.shoot_sp;
			}
		}	
	}
	else if(obj_pl1.assult_rifle && obj_pl1.normal_ammo > 0)
	{
		if(key_shoot_auto)
		{
			if(shoot_timer < 1)
			{
				instance_create_layer(x, y, "Instances", obj_bullet);
				obj_pl1.normal_ammo--;
				shoot_timer = obj_pl1.shoot_sp;
			}
		}
	}
	else if(obj_pl1.pulse_cannon && obj_pl1.normal_ammo > 0)
	{
		if(key_shoot_auto)
		{
			if(shoot_timer < 1)
			{
				instance_create_layer(x, y, "Instances", obj_bullet);
				obj_pl1.normal_ammo--;
				shoot_timer = obj_pl1.shoot_sp;
			}
		}	
	}
	//out of ammo
	if(!audio_is_playing(no_ammo_01) && obj_pl1.normal_ammo < 1)
	{
		if(key_shoot_auto || key_shoot && !knife)
		{
			audio_play_sound(no_ammo_01, 1, false);
		}
	}
}

shoot_timer--;