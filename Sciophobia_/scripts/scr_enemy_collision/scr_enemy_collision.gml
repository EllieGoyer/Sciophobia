/// @description scr_enemy_collision()
//Simple vertical and horizontal collision checker

#region Horizontal Collision

if (place_meeting(x + hSpeed, y, obj_terrainParent))
{
    while (!place_meeting(x + sign(hSpeed), y, obj_terrainParent))
	{
        x += sign(hSpeed);
    }
    hSpeed = 0;
}

if (place_meeting(x + (hSpeed), y, obj_enemyParent))
{
    while (!place_meeting(x + sign(hSpeed), y, obj_enemyParent))
	{
        x += sign(hSpeed);
    }
    hSpeed = 0;
}

x += hSpeed;

#endregion
#region Vertical Collision

if (place_meeting(x, y + vSpeed, obj_terrainParent))
{
    while (!place_meeting(x, y + sign(vSpeed), obj_terrainParent)) 
	{
        y += sign(vSpeed);
    }
    vSpeed = 0;
}

/*if (place_meeting(x, y + vSpeed, obj_enemyParent))
{
    while (!place_meeting(x, y + sign(vSpeed), obj_enemyParent)) 
	{
        y += sign(vSpeed);
    }
    vSpeed = 0;
}*/

y += vSpeed;

#endregion