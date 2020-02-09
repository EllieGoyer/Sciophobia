/// @description scr_enemy_collision()
//Simple vertical and horizontal collision checker

//Horizontal Collision
if place_meeting(x + hSpeed, y, obj_terrainParent) 
{
    while !place_meeting(x + sign(hSpeed), y, obj_terrainParent) 
	{
        x += sign(hSpeed);
    }
    hSpeed = 0;
}
x += hSpeed;

//Vertical Collision
if place_meeting(x, y+vSpeed, obj_terrainParent) 
{
    while !place_meeting(x, y + sign(vSpeed), obj_terrainParent) 
	{
        y += sign(vSpeed);
    }
    vSpeed = 0;
}
y += vSpeed;