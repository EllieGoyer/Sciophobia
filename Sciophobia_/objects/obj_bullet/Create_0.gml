//in create

speed = 20;

t = 4 * room_speed; //time from creation to deletion in seconds


//direction to go in
if(obj_pl1.key_aim)
{
	image_angle = obj_pl1.aim_angle;
}
else
{
	if(obj_pl1.curDir = 1)//facing right
	{
		image_angle = 0;
	}
	else //facing left
	{
		image_angle = 180;
	}
}
direction = image_angle;

damage = obj_pl1.dmg;



