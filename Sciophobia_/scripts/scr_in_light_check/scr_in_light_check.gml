/// @description scr_in_light_check()
//Run from Enemy Step, whether or not the enemy is exposed to enough light

#region Temporary Implementation
/*
var isLit;					//return
var lightDistance;			//Dsitance from enemy to light (pixels), set to default
var spotLightMod = 100;		//Mulitply by light's intensity to get distance
var currentX = x;			//The enemy's current coordinates 
var currentY = y;

//Check against each light
with (obj_light)
{
	//Set test variables per type of light
	if (light[| eLight.Type] == eLightType.Spot)
	{
		//Currently only for overhead lights
		lightDistance = light[| eLight.Intensity] * spotLightMod;	//Set distance based on intensity
	}
	if (light[| eLight.Type] == eLightType.Area)
	{
		lightDistance = 200;
	}
	
	//Test Conditions (distance, line of sight, angle)
	if((point_distance(x, y, currentX, currentY) <= lightDistance)
		&& (collision_line(x, y, currentX, currentY, obj_terrainParent, 1, 0) == noone))
	{
		isLit = true;
		break;
	}
	
	isLit = false;
}

isInLight = isLit; //Set enemy variable to light check
*/
#endregion

//-----------------------------------------
//               WARNING
//------------------------------------------
#region //Point in Triangle Implmentation 

//Only worry about light if player is within distance
var distanceCheck = 500;
if (point_distance(x, y, obj_pl1.x, obj_pl1.y) <= distanceCheck
	&& collision_line(x, y, obj_pl1.x, obj_pl1.y, obj_terrainParent, 1, 0) == noone)
{
	var isLit;						//return

	var currentX = x, currentY = y;	//The enemy's current coordinates 
	var bX, bY;						//Coodinates of 2nd vertex
	var cX, cY;						//Coodinates of 2nd vertex

	var lightAngle;					//Pull from object
	var lightDirection;				//Pull from object

	//Check against each light
	with (obj_light)
	{
		lightAngle = light[| eLight.Angle] / 2;				
		lightDirection = light[| eLight.Direction];	
	
		//Set coordinates per light
		if (light[| eLight.Type] == eLightType.Spot)
		{		
			//Find points for collission line
			var bXTemp = x + lengthdir_x(1000, lightDirection - lightAngle);
			var bYTemp = y + lengthdir_y(1000, lightDirection - lightAngle);
			var cXTemp = x + lengthdir_x(1000, lightDirection + lightAngle);
			var cYTemp = y + lengthdir_y(1000, lightDirection + lightAngle);
		
			//Find point of collision
			var bX = scr_collision_line_x(x, y, bXTemp, bYTemp, obj_terrainParent, 0, 0);
			var bY = scr_collision_line_y(x, y, bXTemp, bYTemp, obj_terrainParent, 0, 0);
			var cX = scr_collision_line_x(x, y, cXTemp, cYTemp, obj_terrainParent, 0, 0);
			var cY = scr_collision_line_y(x, y, cXTemp, cYTemp, obj_terrainParent, 0, 0);

			//Test Conditions
			if(point_in_triangle(currentX, currentY, x, y, bX, bY, cX, cY)
				&& collision_line(x, y, currentX, currentY, obj_terrainParent, 1, 0) == noone)
			{		
				isLit = true;
				break;
			}
	
			isLit = false; //else
	
			//For Testing
			//draw_triangle(x, y, bX, bY, cX, cY, 1);
		}
	}

	isInLight = isLit; //Set enemy variable to light check
}

#endregion
//------------------------------------------
//              Warning
//------------------------------------------

#region //Cheaper Point in Triangle Implmentation 
/*
var isLit;						//return

var currentX = x, currentY = y;	//The enemy's current coordinates 
var bX, bY;						//Coodinates of 2nd vertex
var cX, cY;						//Coodinates of 2nd vertex

var lightDistance = 200;		//Distance to calculate points
var lightAngle;					//Pull from object
var lightDirection;				//Pull from object

//Check against each light
with (obj_light)
{
	lightAngle = light[| eLight.Angle] / 2;				
	lightDirection = light[| eLight.Direction];	
	
	//Set coordinates per light
	if (light[| eLight.Type] == eLightType.Spot)
	{		
		//Find points for collission line
		var bX = x + lengthdir_x(lightDistance, lightDirection - lightAngle);
		var bY = y + lengthdir_y(lightDistance, lightDirection - lightAngle);
		var cX = x + lengthdir_x(lightDistance, lightDirection + lightAngle);
		var cY = y + lengthdir_y(lightDistance, lightDirection + lightAngle);

		//Test Conditions
		if(point_in_triangle(currentX, currentY, x, y, bX, bY, cX, cY)
			&& collision_line(x, y, currentX, currentY, obj_terrainParent, 1, 0) == noone)
		{		
			isLit = true;
			break;
		}
	
		isLit = false; //else
	
		//For Testing
		draw_triangle(x, y, bX, bY, cX, cY, 1);
	}
}

isInLight = isLit; //Set enemy variable to light check
*/
#endregion