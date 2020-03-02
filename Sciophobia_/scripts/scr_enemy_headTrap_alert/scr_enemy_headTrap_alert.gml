/// @description scr_enemy_headTrap_alert
//For when the enemy is alerted to the player's presence

//Attack if close enough
if (point_distance(x, y, obj_pl1.x, obj_pl1.y) <= attackRadius
	&& collision_line(x, y, obj_pl1.x, obj_pl1.y, obj_terrainParent, 1, 0) == noone
	&& point_direction(x, y, obj_pl1.x, obj_pl1.y) <= (270 + 45) 
	&& point_direction(x, y, obj_pl1.x, obj_pl1.y) >= (270 - 45)
	&& attackCooldown <= 0)
{
	currentState = states.attack;	
}
else 
{
	attackCooldown--;
}

//Idle anim
if (theta == 360) { theta = 0; }
theta += 0.1;

spinePiece_1.x += sin(360-theta) * 0.5;
spinePiece_2.x += cos(theta) * 0.5;
spinePiece_3.x += sin(360-theta) * 0.5;
headPiece.x += cos(theta) * 0.5;

spinePiece_1.y += sin(360-theta) * 0.2;
spinePiece_2.y += sin(theta) * 0.2;
spinePiece_3.y += sin(360-theta) * 0.2;
headPiece.y += sin(theta) * 0.2;