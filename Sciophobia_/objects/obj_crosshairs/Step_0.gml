/// @description Insert description here
// You can write your code in this editor

if(obj_pl1.key_aim)
{
	image_alpha = 100;
	x = obj_pl1.x + dcos(obj_pl1.aim_angle)*120;
	y = obj_pl1.y + -dsin(obj_pl1.aim_angle)*120;
}
else
{
	image_alpha = 0;
}