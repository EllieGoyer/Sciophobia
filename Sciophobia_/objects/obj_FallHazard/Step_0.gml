/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if(selfTimer <= 0)
{
	//create the litteral hazard
	instance_create_layer(x,y,"Instances", obj_FallRock);
	selfTimer = room_speed * timerMax;
}

selfTimer--;