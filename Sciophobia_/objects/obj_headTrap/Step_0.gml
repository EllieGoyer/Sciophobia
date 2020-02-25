/// @description Override
//No gravity

#region -----Main Finite State Machine-----


switch (currentState)
{
	case states.idle:
        scr_enemy_standard_idle();
		break;
		
	case states.alert:
		scr_enemy_standard_alert();
		break;
		
	case states.attack:
		scr_enemy_head_trap_attack(); 
		break;
		
	case states.death:
        scr_enemy_standard_death(); 
		break;
		
	case states.knockback:
        scr_enemy_standard_knockback();
		break;
}

#endregion --------------------------------

//Follow Path if one exists
if (path_exists(pathBuilding)) { scr_follow_path(pathBuilding); }

scr_enemy_collision();

scr_check_HP();

//Make light pause it
if (isInLight) { moveTimer = 80; }