/// @description scr_follow_path()
//Must be run from enemy step event only
var numPoints = path_get_number(argument0);
var pathDirection;
var cellSize = obj_grid.cellDimension;

pathDirection = sign(path_get_point_x(argument0, pathPoint + 1) - path_get_point_x(argument0, pathPoint)) ;

if (action == 0)
{
    /// Check if next point is right or left
    if (path_get_point_y(argument0, pathPoint) == path_get_point_y(argument0, pathPoint+1) 
	&& path_get_point_x(argument0, pathPoint) + cellSize * pathDirection == path_get_point_x(argument0, pathPoint+1))
    {
	    hSpeed = currentSpeed * pathDirection ;
	    action = 1;
    }
    else //check if next point is horizontal jump or jump over a pit
	{
        if (path_get_point_y(argument0, pathPoint) == path_get_point_y(argument0, pathPoint + 1) 
		&& path_get_point_x(argument0, pathPoint) + 2 * cellSize * pathDirection == path_get_point_x(argument0, pathPoint + 1))
        {
	        hSpeed = currentSpeed * pathDirection ;
	        vSpeed = jumpHeight *0.7 ;
	        action = 1;
        }
        else //Check if next is falling
		{
	        if (path_get_point_y(argument0, pathPoint) < path_get_point_y(argument0, pathPoint + 1))
	        {
	            hSpeed = currentSpeed * pathDirection;
				
	            if (x <= path_get_point_x(argument0, pathPoint + 1) && path_get_point_x(argument0, pathPoint +1 ) <(x + hSpeed * pathDirection))
	            {
	                action = 1 ;
	                hSpeed = 0 ;
	                x = path_get_point_x(argument0, pathPoint + 1);
	            }
	        }
	        else //Check if diagonal jump
			{
                if (path_get_point_x(argument0, pathPoint) == path_get_point_x(argument0, pathPoint + 1) - cellSize * 2 * pathDirection 
				&& path_get_point_y(argument0, pathPoint) == path_get_point_y(argument0, pathPoint + 1) + cellSize)
                {
	                hSpeed = currentSpeed * pathDirection * 0.625 ;
	                vSpeed = jumpHeight * 1.1 ;
	                action = 1;
                }
                else //Check if big jump straight up
				{
                    if (path_get_point_y(argument0, pathPoint) == path_get_point_y(argument0, pathPoint+1) + cellSize 
					&& path_get_point_x(argument0, pathPoint) + cellSize*pathDirection == path_get_point_x(argument0, pathPoint + 1))
                    {
						hSpeed = currentSpeed * pathDirection / 2;
						
                        if (place_meeting(x, y  +1 , obj_terrainParent) && jumpAction == 0)
                        {
	                        vSpeed = jumpHeight * 0.9 ;
	                        jumpAction = 1 ;
	                        hSpeed = currentSpeed * pathDirection ;
                        }
                    }
                }
            }
        }
	}
}


//Check if the next point was reached
if (x <= path_get_point_x(argument0, pathPoint+1) && path_get_point_x(argument0, pathPoint+1) <= x + hSpeed*pathDirection 
&& path_get_point_y(argument0, pathPoint+1)== y - sprite_yoffset - (cellSize/2 - sprite_height))
{
	pathPoint++;
	action = 0 ;
	jumpAction = 0 ;
	
	if (pathPoint == numPoints -1)  //Check if last point in path
	{
		hSpeed = 0;
		vSpeed = 0;
		path_delete (argument0);
		pathPoint = 0 ;
	}
}
