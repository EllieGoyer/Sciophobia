/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_pl1) < 20 && obj_pl1.key_interact)
{
	obj_grid.alarm[0]= 1;	//Signal for walkable grid to be rebuilt
	audio_play_sound(door_open_01, 1, false);
	instance_destroy();
}