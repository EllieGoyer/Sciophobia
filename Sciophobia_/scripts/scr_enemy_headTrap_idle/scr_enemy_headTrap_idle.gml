/// @description scr_enemy_standard_idle()
//What the enemy does when a player is not detected. Update later

//Patrol Path
//Sound
//Animation
//Any extra effects

//Distance and Line of Sight check
if ((point_distance(x, y, obj_pl1.x, obj_pl1.y) <= attackRadius)
	&& (collision_line(x, y, obj_pl1.x, obj_pl1.y, obj_terrainParent, 1, 0) == noone))
{	
	currentState = states.alert;	
}

//Idle anim
if (theta == 360) { theta = 0; }
theta += 0.1;

spinePiece_1.x += sin(360-theta) * 0.3;
spinePiece_2.x += cos(theta) * 0.4;
spinePiece_3.x += sin(360-theta) * 0.4;
headPiece.x += cos(theta) * 0.5;
