/// @description Inherited
event_inherited();

//Stun when first exposed to Light
/* if (!hasAggroed && isInLight) { hasAggroed = true; } */
if(!obj_gui.pauseMenu)
{

//Canine Effects in Light
if (isInLight) 
{ 
	//Slowed in Light
	currentSpeed = maxSpeed - canineLightSpeedHandicap; 
	
	//Gaining Potential Speed
	if (maxSpeed <= canineUltraMaxSpeed) { maxSpeed += 0.005; }
}
else 
{ 
	currentSpeed = maxSpeed; 
}

}