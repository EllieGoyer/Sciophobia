/// @description scr_enemy_collision()
//
var sX = argument0;				//Starting X position
var sY = argument1;				//Starting Y 
var xGoal = argument2;			//Goal X position
var yGoal = argument3;			//Goal Y
var pathFound; pathFound= 0;	//The viable path (0 means not found)
var n;							//For falling
var a;
var test_i; test_i = 0;

//Create duplicate of global pathfinding grid
ds_grid_pathfinding_copy = ds_grid_create(ds_grid_width(global.ds_grid_pathfinding), 
											ds_grid_height(global.ds_grid_pathfinding));
ds_grid_copy(ds_grid_pathfinding_copy, global.ds_grid_pathfinding);

//Create List of Path points and add the starting point as the first
var pointList = ds_list_create();
ds_list_add(pointList, sX);
ds_list_add(pointList, sY);
ds_grid_set(ds_grid_pathfinding_copy, sX, sY, 0);

//Destroy List if path is found
for (var i = 1; i < 200; i++)
{
    if (pathFound == 1) 
	{
	    ds_list_destroy(pointList);
		//ds_grid_destroy(ds_grid_pathfinding_copy);
	    return pathFound;
	    break;
	}

	//Update Size of List to delete previous points
	var size_list = ds_list_size(pointList); 

	//When size is 0 all position have been checked. 
	if (size_list == 0)
	{   		
		ds_list_destroy(pointList);
		ds_grid_destroy(ds_grid_pathfinding_copy); 
		return pathFound; 
		break;
	}

	//Build the path when one is found
	for (var j = 0; j < size_list; j += 2)
	{
	    sX = ds_list_find_value(pointList, j)
	    sY = ds_list_find_value(pointList, j + 1)

		//Condition for Path to be constructed, Next step in pathfinding chain
	    if (sX == xGoal && sY == yGoal) 
		{		
		    pathFound = 1 ;
		    scr_build_path(xGoal, yGoal); 
		    break;
		}

		#region Individual Actions/Movements
		#region Right Side Actions

		n = 1

		//Can Enemy go right?
		if ((ds_grid_get(ds_grid_pathfinding_copy, sX + 1, sY) == -1) 
			&& (ds_grid_get(ds_grid_pathfinding_copy, sX + 1, sY + 1) ==-2))
		{
			ds_grid_set(ds_grid_pathfinding_copy, sX + 1, sY, i); 
			ds_list_add (pointList, sX + 1);
			ds_list_add (pointList, sY);
		}
		else //If enemy cannot go right:
		{
			//Can Enemy jump one block up and right?
			if ((ds_grid_get(ds_grid_pathfinding_copy,sX + 1, sY) == -2) 
				&& (ds_grid_get(ds_grid_pathfinding_copy, sX + 1, sY - 1) == -1))
		    {
		        ds_grid_set(ds_grid_pathfinding_copy, sX + 1, sY - 1, i);
		        ds_list_add (pointList, sX + 1);
		        ds_list_add (pointList, sY - 1);
		    }
			else //If Enemy cannot go right or jump up right
			{
				//Diagonal Right jump?
				if ((ds_grid_get(ds_grid_pathfinding_copy, sX + 1, sY) == -1) 
				&& (ds_grid_get(ds_grid_pathfinding_copy, sX + 2, sY) == -2)
				&& (ds_grid_get(ds_grid_pathfinding_copy, sX + 2, sY - 1) == -1))
			    {
			        ds_grid_set(ds_grid_pathfinding_copy, sX + 2, sY - 1, i);
			        ds_list_add (pointList, sX + 2);
			        ds_list_add (pointList, sY - 1);
				}
		
				//Jump Right over pit?
				if ((ds_grid_get(ds_grid_pathfinding_copy, sX + 1, sY) == -1) 
				&& (ds_grid_get(ds_grid_pathfinding_copy, sX + 2, sY) == -1)
				&& (ds_grid_get(ds_grid_pathfinding_copy, sX + 2, sY + 1) == -2))
			    {
			        ds_grid_set(ds_grid_pathfinding_copy, sX + 2, sY, i);
			        ds_list_add (pointList, sX + 2);
			        ds_list_add (pointList, sY);
				}
		
				//Enemy can fall right?
				if ((ds_grid_get(ds_grid_pathfinding_copy, sX + 1, sY) == -1) 
				&& (ds_grid_get(ds_grid_pathfinding_copy, sX + 1, sY + 1) == -1))
				{
					{
					do
					{
						n++;
						a = ds_grid_get(ds_grid_pathfinding_copy, sX + 1, sY + n);
					}
		            until (( a==-2 ) ||  (sY + n == ds_grid_height(ds_grid_pathfinding_copy)))
					}
			
					if ((ds_grid_get(ds_grid_pathfinding_copy, sX + 1, sY + n - 1) == -1) 
					&& (ds_grid_get(ds_grid_pathfinding_copy, sX + 1, sY + n) == -2))
		            {
			            ds_grid_set(ds_grid_pathfinding_copy, sX + 1 , sY + n - 1, i);
			            ds_list_add (pointList, sX + 1);
			            ds_list_add (pointList, sY + n - 1);
		            }
				}
			}
		}

		#endregion
		#region Left Side actions

		n = 1;

		//Can Enemy go Left?
		if ((ds_grid_get(ds_grid_pathfinding_copy, sX - 1, sY) == -1) 
			&& (ds_grid_get(ds_grid_pathfinding_copy, sX - 1, sY + 1) == -2))
		{			
			ds_grid_set(ds_grid_pathfinding_copy, sX - 1, sY, i); 
			ds_list_add (pointList, sX - 1);
			ds_list_add (pointList, sY);
		}
		else //If enemy cannot go left:
		{
			//Can Enemy jump one block up and left?
			if ((ds_grid_get(ds_grid_pathfinding_copy,sX - 1, sY) == -2) 
				&& (ds_grid_get(ds_grid_pathfinding_copy, sX - 1, sY - 1) == -1))
		    {
		        ds_grid_set(ds_grid_pathfinding_copy, sX - 1, sY - 1, i);
		        ds_list_add (pointList, sX - 1);
		        ds_list_add (pointList, sY - 1);
		    }
			else //If Enemy cannot go left or jump up left
			{
				//Diagonal Left jump?
				if ((ds_grid_get(ds_grid_pathfinding_copy, sX - 1, sY) == -1) 
				&& (ds_grid_get(ds_grid_pathfinding_copy, sX - 2, sY) == -2)
				&& (ds_grid_get(ds_grid_pathfinding_copy, sX - 2, sY - 1) == -1))
			    {
			        ds_grid_set(ds_grid_pathfinding_copy, sX - 2, sY - 1, i);
			        ds_list_add (pointList, sX - 2);
			        ds_list_add (pointList, sY - 1);
				}
		
				//Jump Left over pit?
				if ((ds_grid_get(ds_grid_pathfinding_copy, sX - 1, sY) == -1) 
				&& (ds_grid_get(ds_grid_pathfinding_copy, sX - 2, sY) == -1)
				&& (ds_grid_get(ds_grid_pathfinding_copy, sX - 2, sY + 1) == -2))
			    {
			        ds_grid_set(ds_grid_pathfinding_copy, sX - 2, sY, i);
			        ds_list_add (pointList, sX - 2);
			        ds_list_add (pointList, sY);
				}
		
				//Enemy can fall left?
				if ((ds_grid_get(ds_grid_pathfinding_copy, sX - 1, sY) == -1) 
				&& (ds_grid_get(ds_grid_pathfinding_copy, sX - 1, sY + 1) == -1))
				{
					{
					do
					{
						n++;
						a = ds_grid_get(ds_grid_pathfinding_copy, sX - 1, sY + n);
					}
		            until ((a == -2) ||  (sY + n == ds_grid_height(ds_grid_pathfinding_copy)))
					}
			
					if ((ds_grid_get(ds_grid_pathfinding_copy, sX - 1, sY + n - 1) == -1) 
					&& (ds_grid_get(ds_grid_pathfinding_copy, sX - 1, sY + n) == -2))
		            {
			            ds_grid_set(ds_grid_pathfinding_copy, sX - 1 , sY + n - 1, i);
			            ds_list_add (pointList, sX - 1);
			            ds_list_add (pointList, sY + n - 1);
		            }
				}
			}
		}


		#endregion
		#endregion
	}

	//Delete previous points
	for (var m = 0; m < size_list; m++) 
	{ 
		ds_list_delete(pointList, 0);	
	}
}