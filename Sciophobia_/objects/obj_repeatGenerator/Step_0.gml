 /// @description Insert description here
// You can write your code in this editor
event_inherited();

if(is_active)
{
	timer--;
	if(timer<=0)
	{
		is_active = false;
		timer = timer_full;
	}
}