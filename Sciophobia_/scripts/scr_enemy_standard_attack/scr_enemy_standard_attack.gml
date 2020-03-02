/// @description scr_enemy_standard_attack()
//Directly from alert state, loops back into it

//Temp Melee Attack Implementation
//var swipe = instance_create_layer(x - 10, y, "Instances", obj_enemySwipe); //Create Projectile
scr_melee_attack();

//End Condition
if (sprite_index == anim_Idle)
{
	attackCooldown = attackSpeed;		
	currentState = states.alert;	
}	