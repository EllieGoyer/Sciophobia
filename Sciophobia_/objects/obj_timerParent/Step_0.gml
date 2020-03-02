/// @description Insert description here
// You can write your code in this editor
if(selfTimer <= 0)
{
	active = !active;
	selfTimer = room_speed * timerMax;
}

selfTimer--;