/// @description Insert description here
// You can write your code in this editor
event_inherited();

var is_active = variable_instance_get(my_key, "is_active");
if (is_active == share_active)
{
	//if switch is on, warm up
	warm++;
	if(warm >= warmup_time)
	{
		//once we're warm, enable the cooldown timer
		warm = warmup_time;
		cool = cooldown_time;
		light[| eLight.Intensity] = 1.75;
	}
}else if(cool > 0)
{
	//if switch is off, but we've warmed up, use the cooldown timer
	light[| eLight.Intensity] = 1.75;
	cool--;
	if(cool <= 0) {warm = 0;}	//once we're off, reset warm to 0
}else{ light[| eLight.Intensity] = 0; }