/// @description Insert description here
// You can write your code in this editor
if(active)
{
	obj_pl1.currentHP -= damageValue;
	active = false;
	selfTimer = room_speed * damageDelay;
}