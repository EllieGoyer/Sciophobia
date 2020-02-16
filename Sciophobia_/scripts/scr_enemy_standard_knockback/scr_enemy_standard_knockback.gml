/// @description scr_enemy_standard_knockback
//knockbacks from whatever state, automatically goes into alert state after

scr_reset_pathfinding();

//---Visual Work---
//set sprite
//image_xscale = -sign(knockbackSpeed);

//---Apply knockback---
scr_enemy_collision();
if (image_xscale >= 0) { x += knockbackSpeed; }
else { x -= knockbackSpeed; }
knockbackSpeed = scr_approach(knockbackSpeed, 0, enemyFriction);

//---End Conditions---
if (knockbackSpeed <= 0) 
{ 
	knockbackSpeed = knockbackMax;	//reset
	currentState = states.alert;	//aggros if shot (change to next state?)
} 