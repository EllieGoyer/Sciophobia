/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(active)
{
	//de-activate
	active = false;
	
	//set timer to re-activate
	alarm[0] = room_speed * damageDelay;
	
	//play animation, catch animation in Step()
	image_speed = 1;
	
	//set player stats
	other.trapped = true;
	other.alarm[0] = room_speed * damageDelay/2;
}