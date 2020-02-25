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
else if(obj_pl1.vsp > 2)
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
else if(obj_pl1.key_down && distance_to_object(obj_ladder) > 4)
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
//standing
else if(obj_pl1.hsp == 0 && obj_pl1.vsp == 0)
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
