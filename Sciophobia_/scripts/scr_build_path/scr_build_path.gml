/// @description scr_build_path(xGoal, yGoal)
//Must be run from scr_fill_grid only
var xGoal = argument0;
var yGoal = argument1;
pathBuilding = path_add();		//Create a Path out of the points
var value;						//value in grid
var xPrevious;					//X coordinate of previous position
var a = -1;						//For falling
var b = -1;
var n = 0;
var cellSize = obj_grid.cellDimension;


//Set first Point and set value of goal position
path_add_point(pathBuilding, xGoal * cellSize + (cellSize / 2), yGoal * cellSize +(cellSize / 2), 100); 
value = ds_grid_get(ds_grid_pathfinding_copy, xGoal, yGoal); 

#region Checking Actions

for (var i = value - 1; i > 0 ; i -= 1)
{
    xPrevious = xGoal ;  
    n=0;
	
	//Check left, right, up left, or up right
    if (ds_grid_value_exists(ds_grid_pathfinding_copy, xGoal - 1, yGoal, xGoal + 1, yGoal + 1, i)) 
    {
		xGoal = ds_grid_value_x(ds_grid_pathfinding_copy, xGoal - 1, yGoal, xGoal + 1,yGoal+1,i);				//Store X in xGoal
		yGoal = ds_grid_value_y(ds_grid_pathfinding_copy, xPrevious-  1, yGoal, xPrevious + 1, yGoal + 1, i);	//Store Y in yGoal
		path_add_point(pathBuilding, xGoal * cellSize + (cellSize / 2), yGoal * cellSize + (cellSize /2 ), 100);//Add point to path
    }
    else   
    {
		//Check diagonal left, diagonal right, jump over pit right, or jump over pit left
        if (ds_grid_value_exists(ds_grid_pathfinding_copy, xGoal - 2, yGoal, xGoal + 2, yGoal + 1, i)) 
        {
			xGoal = ds_grid_value_x(ds_grid_pathfinding_copy, xGoal- 2,yGoal, xGoal + 2, yGoal + 1,i);
			
			//Check if there is something to actually jump to
            if (ds_grid_get (ds_grid_pathfinding_copy, xPrevious + sign(xGoal - xPrevious), yGoal) == -1)			
            {
				yGoal = ds_grid_value_y(ds_grid_pathfinding_copy, xPrevious - 2, yGoal, xPrevious + 2, yGoal + 1, i);
				path_add_point(pathBuilding, xGoal * cellSize + (cellSize / 2), yGoal * cellSize + (cellSize / 2), 100);
            }
            else //Collision not found so enemy falls
			{     
                {
                do
                {
                    n = n + 1 ;
                    a = ds_grid_get(ds_grid_pathfinding_copy,xPrevious - 1, yGoal - n);
                    b = ds_grid_get(ds_grid_pathfinding_copy,xPrevious + 1, yGoal - n);
                }
                until (a == i) || (b == i) || ((yGoal - n) < 0)
                }
				
                if (ds_grid_value_exists(ds_grid_pathfinding_copy, xPrevious - 1,yGoal-n, xPrevious + 1,yGoal-n, i))
                {
                    xGoal = ds_grid_value_x(ds_grid_pathfinding_copy, xPrevious-  1, yGoal - n, xPrevious + 1, yGoal,i);
                    yGoal = ds_grid_value_y(ds_grid_pathfinding_copy, xPrevious - 1, yGoal - n, xPrevious + 1, yGoal,i);
                    path_add_point(pathBuilding, xGoal*cellSize + (cellSize/2), yGoal*cellSize +(cellSize/2), 100);
                }
			}
        }
		else //For falling 
		{  
	        {
	        do
	        {
	            n = n + 1;
	            a = ds_grid_get(ds_grid_pathfinding_copy, xPrevious - 1, yGoal - n);
	            b = ds_grid_get(ds_grid_pathfinding_copy, xPrevious + 1, yGoal - n);
	        }
	        until (a == i) || (b == i) || ((yGoal - n) < 0)
	        }                
									
			if (ds_grid_value_exists(ds_grid_pathfinding_copy, xPrevious - 1, yGoal - n, xPrevious + 1, yGoal - n, i))
	        {
	            xGoal = ds_grid_value_x(ds_grid_pathfinding_copy, xPrevious - 1, yGoal - n, xPrevious + 1, yGoal, i);
	            yGoal = ds_grid_value_y(ds_grid_pathfinding_copy, xPrevious - 1, yGoal - n, xPrevious + 1, yGoal, i);
	            path_add_point(pathBuilding, xGoal * cellSize + (cellSize / 2), yGoal * cellSize +(cellSize / 2), 100);
	        }
		}
    }
}

#endregion


//Add last point (enemy location), Close path so no loop, reverse to start from real beginning 
path_add_point(pathBuilding, floor(x / cellSize) * cellSize + (cellSize / 2), floor(y / cellSize) * cellSize + (cellSize / 2), 100); 
path_set_closed (pathBuilding, 0); 
path_reverse (pathBuilding);  