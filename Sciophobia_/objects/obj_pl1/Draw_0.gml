 
draw_self();

//arms
if((key_aim || key_shoot || key_shoot_auto) && !flashlight) //if aiming or shooting
{
	if(pistol) //one handed
	{
		if(curDir == 1) //facing right
		{
			if(aim_angle >= 60 && aim_angle <= 90)
			{
				if(sprite_index == spr_player_crouch_right)
				{
					draw_sprite(spr_pistolArms_right, 0, x, y+30);
				}
				else
				{
					draw_sprite(spr_pistolArms_right, 0, x, y);
				}
			}
			else if(aim_angle < 60 && aim_angle >= 30)
			{
				if(sprite_index == spr_player_crouch_right)
				{
					draw_sprite(spr_pistolArms_right, 1, x, y+30);
				}
				else
				{
					draw_sprite(spr_pistolArms_right, 1, x, y);
				}
			}
			else if(aim_angle >= 0 && aim_angle < 30)
			{
				if(sprite_index == spr_player_crouch_right)
				{
					draw_sprite(spr_pistolArms_right, 2, x, y+30);
				}
				else
				{
					draw_sprite(spr_pistolArms_right, 2, x, y);
				}
			}
			else if(aim_angle <= 360 && aim_angle > 315)
			{
				if(sprite_index == spr_player_crouch_right)
				{
					draw_sprite(spr_pistolArms_right, 3, x, y+30);
				}
				else
				{
					draw_sprite(spr_pistolArms_right, 3, x, y);
				}
			}
			else if(aim_angle <= 315 && aim_angle > 270)
			{
				if(sprite_index == spr_player_crouch_right)
				{
					draw_sprite(spr_pistolArms_right, 4, x, y+30);
				}
				else
				{
					draw_sprite(spr_pistolArms_right, 4, x, y);
				}
			}
		}
		else if(curDir == -1) //facing left
		{
			if(aim_angle <= 270 && aim_angle > 235)
			{
				if(sprite_index == spr_player_crouch_left)
				{
					draw_sprite(spr_pistolArms_left, 4, x, y+30);
				}
				else
				{
					draw_sprite(spr_pistolArms_left, 4, x, y);
				}
			}
			else if(aim_angle <= 235 && aim_angle > 180)
			{
				if(sprite_index == spr_player_crouch_left)
				{
					draw_sprite(spr_pistolArms_left, 3, x, y+30);
				}
				else
				{
					draw_sprite(spr_pistolArms_left, 3, x, y);
				}
			}
			else if(aim_angle <= 180 && aim_angle > 150)
			{
				if(sprite_index == spr_player_crouch_left)
				{
					draw_sprite(spr_pistolArms_left, 2, x, y+30);
				}
				else
				{
					draw_sprite(spr_pistolArms_left, 2, x, y);
				}
			}
			else if(aim_angle <= 150 && aim_angle > 120)
			{
				if(sprite_index == spr_player_crouch_left)
				{
					draw_sprite(spr_pistolArms_left, 1, x, y+30);
				}
				else
				{
					draw_sprite(spr_pistolArms_left, 1, x, y);
				}
			}
			else if(aim_angle <= 120 && aim_angle > 90)
			{
				if(sprite_index == spr_player_crouch_left)
				{
					draw_sprite(spr_pistolArms_left, 0, x, y+30);
				}
				else
				{
					draw_sprite(spr_pistolArms_left, 0, x, y);
				}
			}
		}
	}
	else if (!knife) //two handed
	{
		if(curDir == 1)
		{
			if(aim_angle >= 60 && aim_angle <= 90)
			{
				if(sprite_index == spr_player_crouch_right)
				{
					draw_sprite(spr_rifleArms_right, 0, x, y+30);
				}
				else
				{
					draw_sprite(spr_rifleArms_right, 0, x, y);
				}
			}
			else if(aim_angle < 60 && aim_angle >= 30)
			{
				if(sprite_index == spr_player_crouch_right)
				{
					draw_sprite(spr_rifleArms_right, 1, x, y+30);
				}
				else
				{
					draw_sprite(spr_rifleArms_right, 1, x, y);
				}
			}
			else if(aim_angle >= 0 && aim_angle < 30)
			{
				if(sprite_index == spr_player_crouch_right)
				{
					draw_sprite(spr_rifleArms_right, 2, x, y+30);
				}
				else
				{
					draw_sprite(spr_rifleArms_right, 2, x, y);
				}
			}
			else if(aim_angle <= 360 && aim_angle > 315)
			{
				if(sprite_index == spr_player_crouch_right)
				{
					draw_sprite(spr_rifleArms_right, 3, x, y+30);
				}
				else
				{
					draw_sprite(spr_rifleArms_right, 3, x, y);
				}
			}
			else if(aim_angle <= 315 && aim_angle > 270)
			{
				if(sprite_index == spr_player_crouch_right)
				{
					draw_sprite(spr_rifleArms_right, 4, x, y+30);
				}
				else
				{
					draw_sprite(spr_rifleArms_right, 4, x, y);
				}
			}
		}
		else if(curDir == -1)
		{
			if(aim_angle <= 270 && aim_angle > 235)
			{
				if(sprite_index == spr_player_crouch_left)
				{
					draw_sprite(spr_rifleArms_left, 4, x, y+30);
				}
				else
				{
					draw_sprite(spr_rifleArms_left, 4, x, y);
				}
			}
			else if(aim_angle <= 235 && aim_angle > 180)
			{
				if(sprite_index == spr_player_crouch_left)
				{
					draw_sprite(spr_rifleArms_left, 3, x, y+30);
				}
				else
				{
					draw_sprite(spr_rifleArms_left, 3, x, y);
				}
			}
			else if(aim_angle <= 180 && aim_angle > 150)
			{
				if(sprite_index == spr_player_crouch_left)
				{
					draw_sprite(spr_rifleArms_left, 2, x, y+30);
				}
				else
				{
					draw_sprite(spr_rifleArms_left, 2, x, y);
				}
			}
			else if(aim_angle <= 150 && aim_angle > 120)
			{
				if(sprite_index == spr_player_crouch_left)
				{
					draw_sprite(spr_rifleArms_left, 1, x, y+30);
				}
				else
				{
					draw_sprite(spr_rifleArms_left, 1, x, y);
				}
			}
			else if(aim_angle <= 120 && aim_angle > 90)
			{
				if(sprite_index == spr_player_crouch_left)
				{
					draw_sprite(spr_rifleArms_left, 0, x, y+30);
				}
				else
				{
					draw_sprite(spr_rifleArms_left, 0, x, y);
				}
			}
		}
	}
}
else // idle
{
	if(pistol) //one handed
	{
		if(curDir == 1)
		{
			if(sprite_index == spr_player_crouch_right)
			{
				draw_sprite(spr_pistolArms_right, 2, x, y+30);
			}
			else
			{
				draw_sprite(spr_pistolArms_right, 2, x, y);
			}
		}
		else
		{
			if(sprite_index == spr_player_crouch_left)
			{
				draw_sprite(spr_pistolArms_left, 2, x, y+30);
			}
			else
			{
				draw_sprite(spr_pistolArms_left, 2, x, y);
			}
		}
	}
	else if(!knife && !flashlight) //two handed
	{
		if(curDir == 1)
		{
			if(sprite_index == spr_player_crouch_right)
			{
				draw_sprite(spr_rifleArms_right, 2, x, y+30);
			}
			else
			{
				draw_sprite(spr_rifleArms_right, 2, x, y);
			}
		}
		else
		{
			if(sprite_index == spr_player_crouch_left)
			{
				draw_sprite(spr_rifleArms_left, 2, x, y+30);
			}
			else
			{
				draw_sprite(spr_rifleArms_left, 2, x, y);
			}
		}
	}
}

//walking sound
if ( floor(image_index) == 3   &&   floor(image_index) != lastFrame ) {
    audio_play_sound(step_concrete_single_01, 1, 0 );
    }

lastFrame = floor(image_index);

//interact buttons
if((distance_to_object(obj_door) < 6) || (distance_to_object(obj_AmmoCrate) < 6)
|| (distance_to_object(obj_HealthCrate) < 6) || (distance_to_object(obj_switch) < 6))
{
	scr_interact_GUI();
}

