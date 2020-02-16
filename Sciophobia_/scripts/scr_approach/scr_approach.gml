/// @description scr_approach(current, target, delta)
//Friction
var current = argument0;
var target = argument1;
var delta = argument2;

if (current < target)
{
	current += delta;
	current = min(current, target);
}
else
{
	current -= delta;
	current = max(current, target);
}

return current;