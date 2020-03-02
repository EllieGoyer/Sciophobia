/// @description Override
//No gravity

#region -----Main Finite State Machine-----

switch (currentState)
{
	case states.idle:
        scr_enemy_headTrap_idle();
		break;
		
	case states.alert:
		scr_enemy_headTrap_alert();
		break;
		
	case states.attack:
		scr_enemy_head_trap_attack(); 
		break;
		
	case states.death:
        scr_enemy_standard_death(); 
		break;
		
	case states.knockback:
        currentState = states.alert;
		break;
}

#endregion --------------------------------

scr_enemy_collision();

//Make light pause it
//if (isInLight) { moveTimer = 80; }

#region HP sync

if (instance_exists(spinePiece_1))
{
if (spinePiece_1.currentHP < currentHP) { currentHP = spinePiece_1.currentHP; }
else { spinePiece_1.currentHP = currentHP; }
}

if (instance_exists(spinePiece_2))
{
	if (spinePiece_2.currentHP < currentHP) { currentHP = spinePiece_2.currentHP; }
	else { spinePiece_2.currentHP = currentHP; }
}
if (instance_exists(spinePiece_3))
{
if (spinePiece_3.currentHP < currentHP) { currentHP = spinePiece_3.currentHP; }
else { spinePiece_3.currentHP = currentHP; }
}

if (instance_exists(headPiece))
{
	if (headPiece.currentHP < currentHP) { currentHP = headPiece.currentHP; }
	else { headPiece.currentHP = currentHP; }
}

#endregion

scr_check_HP();