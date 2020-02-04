switch (dash_states)
{
	case dash_states.dashing:
		obj_pl1.movespeed = 6;
		obj_pl1.dash_time--;
		obj_pl1.dash_cooldown_time = 4*room_speed;
		obj_pl1.grv = 0;
	break;
	case dash_states.dash_cooldown:
		obj_pl1.movespeed = 3;
		obj_pl1.dash_cooldown_time--;
		obj_pl1.grv = .1;
	break;
	case dash_states.not_dashing:
		obj_pl1.movespeed = 3;
		obj_pl1.dash_cooldown_time = 0;
		obj_pl1.dash_time = 1*room_speed;
		obj_pl1.grv = .1;
	break;
}

if(obj_pl1.key_dash && obj_pl1.dash_cooldown_time <= 0)
{
	dash_states = dash_states.dashing;
}
if(obj_pl1.dash_time < 0)
{
	dash_states = dash_states.dash_cooldown;
}
if(obj_pl1.dash_cooldown_time <= 0 && obj_pl1.dash_time <= 0)
{
	dash_states = dash_states.not_dashing;
}