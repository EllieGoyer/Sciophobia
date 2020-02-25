/// @description scr_enemy_standard_attack()
//Directly from alert state, loops back into it

//scr_melee_attack();

//Temp Melee Attack Implementation
if (!hasAttacked)
{
	hasAttacked = true;
	var swipe = instance_create_layer(x - 10, y, "Instances", obj_enemySwipe); //Create Projectile
	attackCooldown = attackSpeed;		//reset cooldown
	alarm[0] = moveTimer; //Pause before moving again
}



