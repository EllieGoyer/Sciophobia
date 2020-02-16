switch (dash_states)
{
	case dash_states.dashing:
		hmove = tempDirection;
		movespeed = fastspeed;
		tempDash--;
		tempCooldown = dash_cooldown_time;
		grv = 0;
	break;
	case dash_states.dash_cooldown:
		checkedDirection = false;
		movespeed = cooldownspeed;;
		tempCooldown--;
		grv = basegrv;
	break;
	case dash_states.not_dashing:
		movespeed = basespeed;
		tempCooldown = 0;
		tempDash = dash_time;
		grv = basegrv;
	break;
}

if(key_dash && tempCooldown <= 0)
{
	if(!checkedDirection)
	{
		tempDirection = hmove;
		checkedDirection = true;
	}
	dash_states = dash_states.dashing;
}
if(obj_pl1.tempDash < 0)
{
	dash_states = dash_states.dash_cooldown;
}
if(tempCooldown <= 0 && tempDash <= 0)
{
	dash_states = dash_states.not_dashing;
}