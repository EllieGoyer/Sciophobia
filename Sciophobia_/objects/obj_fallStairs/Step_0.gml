/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_pl1) < 1000) 
{ 
	if(obj_pl1.key_down && collisionReturnTimer == 0)
	{
		mask_index = spr_empty; //uses second sprite in index to use as collision mask
		collisionReturnTimer = timerMax;
		show_debug_message("downing");
	}	
}


if(collisionReturnTimer > 0)
{
	collisionReturnTimer--;
	
	if(collisionReturnTimer < 1)
	{
		mask_index = spr_stairs2;
		collisionReturnTimer = 0;
		show_debug_message("normalizing");
	}
}