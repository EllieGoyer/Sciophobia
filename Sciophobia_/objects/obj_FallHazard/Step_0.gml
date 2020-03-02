/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if(selfTimer <= 0)
{
	active = true;
	selfTimer = room_speed * timerMax;
}

selfTimer--;

//instantiate a Drop/Fall Rock
if(active)
{
	instance_create_layer(x,y,"Instances", obj_FallRock);
	active = false;
}