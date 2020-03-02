/// @description scr_enemy_standard_alert
//For when the enemy is alerted to the player's presence

//Make Enemy Face player
image_xscale = sign( x - obj_pl1.x );

//Attack if close enough
if (point_distance(x, y, obj_pl1.x, obj_pl1.y) <= attackRadius
	&& attackCooldown <= 0)
{
	currentState = states.attack;	
}
else //Follow Player
{
	scr_reset_pathfinding();
	scr_begin_pathfinding();//Fine for now but will need to be managed in the future
	attackCooldown--;
}
