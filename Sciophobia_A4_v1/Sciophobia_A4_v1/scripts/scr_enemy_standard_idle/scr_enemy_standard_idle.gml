/// @description scr_enemy_standard_idle()
//What the enemy does when a player is not detected. Update later

//Patrol Path
//Sound
//Animation
//Any extra effects

//Distance and Line of Sight check
if ((point_distance(x, y, obj_pl1.x, obj_pl1.y) <= sightDetectRadius)
	&& (collision_line(x, y, obj_pl1.x, obj_pl1.y, obj_terrainParent, 1, 0) == noone))
{	
	currentState = states.alert;	
}

//Incorporate Sound later