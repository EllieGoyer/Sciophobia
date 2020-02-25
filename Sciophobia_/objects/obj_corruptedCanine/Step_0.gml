/// @description Inherited
event_inherited();


if (!hasAggroed && isInLight)
{
	hasAggroed = true;
	maxSpeed += 1;
	currentSpeed = maxSpeed;
}

//Slowed in Light
if (isInLight) { currentSpeed = maxSpeed - 1; }
else { currentSpeed = maxSpeed; }
