/// @description Insert description here
// You can write your code in this editor

if(active)
{
	//de-activate in parent/inherit

	//delay to catch player mid-trap
	alarm[1] = room_speed * 0.25;
}

// Inherit the parent event
event_inherited();

