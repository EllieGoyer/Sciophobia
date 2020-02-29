/// @description scr_enemy_standard_attack()
//Directly from alert state, loops back into it

//scr_melee_attack();

//Temp Melee Attack Implementation
if (!hasAttacked)
{
	hasAttacked = true;
	attackCooldown = attackSpeed;		//reset cooldown
	
	//Attack Implementation
	//If player is in range
	if (point_distance(x, y, obj_pl1.x, obj_pl1.y) <= attackRadius)
	{
		
		
		//get end point
		//get mid point
		//get seconday mid points
		

	}
	else
	{
		
	}
	
	isAttacking = true;
}

if (isAttacking)
{
	//have parts move to points
	
	//end condition is when they hit that point
	alarm[0] = moveTimer; //Pause before moving again
}



