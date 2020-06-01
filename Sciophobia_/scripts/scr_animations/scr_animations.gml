//dash
if(dash_states == dash_states.dashing)
{
	if(obj_pl1.curDir) //right
	{
		sprite_index = spr_player_dash_right;
	}
	else //left
	{
		sprite_index = spr_player_dash_left;
	}
}
//fall
else if(obj_pl1.vsp > 3)
{
	if(obj_pl1.curDir) //right
	{
		sprite_index = spr_player_fall_right;
	}
	else //left
	{
		sprite_index = spr_player_fall_left;
	}
}
//crouch
else if(obj_pl1.key_down && !place_meeting(x, y, obj_ladder))
{
	if(obj_pl1.curDir) //right
	{
		sprite_index = spr_player_crouch_right;
	}
	else //left
	{
		sprite_index = spr_player_crouch_left;
	}
}
//stabbing
else if(obj_pl1.key_shoot && obj_pl1.knife)
{
	if(curDir == 1)
	{
			sprite_index = spr_slash_right;
	}
	else
	{
			sprite_index = spr_slash_left;
	}
}
//standing
else if(obj_pl1.hsp == 0)
{
	if(obj_pl1.curDir) //right
	{
		sprite_index = spr_player_stand_right;
	}
	else //left
	{
		sprite_index = spr_player_stand_left;
	}
}
//moving
else
{
	if(obj_pl1.curDir) //right
	{
		sprite_index = spr_player_right;
	}
	else //left
	{
		sprite_index = spr_player_left;
	}
}
