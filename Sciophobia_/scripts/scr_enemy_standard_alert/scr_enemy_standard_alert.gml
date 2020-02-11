/// @description scr_enemy_standard_alert
//For when the enemy is alerted to the player's presence

//Make Enemy Face player
image_xscale = sign(x - obj_pl1.x);

//Attack if close enough
if (point_distance(x, y, obj_pl1.x, obj_pl1.y) <= sightDetectRadius
	&& attackCooldown <= 0)
{
	//scr_melee_attack();
	
	#region Temporary implementation
	
	var swipe = instance_create_layer(x - 10, y, "Instances", obj_enemySwipe); //Create Projectile
	attackCooldown = attackSpeed;		//reset cooldown
	
	#endregion
}
else //Follow Player
{
	scr_reset_and_begin_pathfinding();//Fine for now but will need to be managed in the future
	attackCooldown--;
}
