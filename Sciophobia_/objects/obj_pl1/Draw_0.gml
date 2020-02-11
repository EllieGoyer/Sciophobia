
draw_self();

if(key_aim || key_shoot || key_shoot_auto) //if aiming or shooting
{
	if(pistol) //one handed
	{
		if(curDir == 1) //facing right
		{
			if(aim_angle >= 60 && aim_angle <= 90)
			{
				draw_sprite(spr_arms_right, 0, x, y);
			}
			else if(aim_angle < 60 && aim_angle >= 30)
			{
				draw_sprite(spr_arms_right, 1, x, y);
			}
			else if(aim_angle >= 0 && aim_angle < 30)
			{
				draw_sprite(spr_arms_right, 2, x, y);
			}
			else if(aim_angle <= 360 && aim_angle > 315)
			{
				draw_sprite(spr_arms_right, 3, x, y);
			}
			else if(aim_angle <= 315 && aim_angle > 270)
			{
				draw_sprite(spr_arms_right, 4, x, y);
			}
		}
		else if(curDir == -1) //facing left
		{
			if(aim_angle <= 270 && aim_angle > 235)
			{
				draw_sprite(spr_arms_left, 4, x, y);
			}
			else if(aim_angle <= 235 && aim_angle > 180)
			{
				draw_sprite(spr_arms_left, 3, x, y);
			}
			else if(aim_angle <= 180 && aim_angle > 150)
			{
				draw_sprite(spr_arms_left, 2, x, y);
			}
			else if(aim_angle <= 150 && aim_angle > 120)
			{
				draw_sprite(spr_arms_left, 1, x, y);
			}
			else if(aim_angle <= 120 && aim_angle > 90)
			{
				draw_sprite(spr_arms_left, 0, x, y);
			}
		}
	}
	else if (!knife) //two handed
	{
		if(curDir == 1)
		{
			if(aim_angle >= 60 && aim_angle <= 90)
			{
				draw_sprite(spr_arms_right, 5, x, y);
			}
			else if(aim_angle < 60 && aim_angle >= 30)
			{
				draw_sprite(spr_arms_right, 6, x, y);
			}
			else if(aim_angle >= 0 && aim_angle < 30)
			{
				draw_sprite(spr_arms_right, 7, x, y);
			}
			else if(aim_angle <= 360 && aim_angle > 315)
			{
				draw_sprite(spr_arms_right, 8, x, y);
			}
			else if(aim_angle <= 315 && aim_angle > 270)
			{
				draw_sprite(spr_arms_right, 9, x, y);
			}
		}
		else if(curDir == -1)
		{
			if(aim_angle <= 270 && aim_angle > 235)
			{
				draw_sprite(spr_arms_left, 9, x, y);
			}
			else if(aim_angle <= 235 && aim_angle > 180)
			{
				draw_sprite(spr_arms_left, 8, x, y);
			}
			else if(aim_angle <= 180 && aim_angle > 150)
			{
				draw_sprite(spr_arms_left, 7, x, y);
			}
			else if(aim_angle <= 150 && aim_angle > 120)
			{
				draw_sprite(spr_arms_left, 6, x, y);
			}
			else if(aim_angle <= 120 && aim_angle > 90)
			{
				draw_sprite(spr_arms_left, 5, x, y);
			}
		}
	}
}
