///@edescription collision_line_first(x1,y1,x2,y2,object,prec,notme)
//Finds y of object collision closest to first point.
var ox,oy,dx,dy,object,prec,notme,sx,sy,inst,i;
ox = argument0;		//point 1 coordinates
oy = argument1;
dx = argument2;		//point 2 coordinates
dy = argument3;
object = argument4; //object to check
prec = argument5;	//precise collision
notme = argument6;	//ignore calling instance?

sx = dx - ox;
sy = dy - oy;

inst = collision_line(ox, oy, dx, dy ,object, prec, notme);

if (inst != noone) 
{
    while ((abs(sx) >= 1) || (abs(sy) >= 1)) 
	{
        sx /= 2;
        sy /= 2;
		
        i = collision_line(ox,oy,dx,dy,object,prec,notme);
		
        if (i) 
		{
            dx -= sx;
            dy -= sy;
            inst = i;
        }
		else
		{
            dx += sx;
            dy += sy;
						
			return dy + sy / 2;
        }
    }
}
