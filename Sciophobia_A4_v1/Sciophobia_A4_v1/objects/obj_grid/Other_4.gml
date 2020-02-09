/// @description Build Walkable Grid

//Get number of horizontal and vertical cells
var hCells = ceil (room_width / cellDimension); 
var vCells = ceil (room_height / cellDimension) 

//Create Grid
global.ds_grid_pathfinding = ds_grid_create(hCells, vCells); 

//Build grid by cycling through each cell and checking collision 
for (var i = 0; i < hCells; i++) //Rows
{
	for (var j = 0; j < vCells; j++) //Columns
	{
		if (place_meeting(i * cellDimension, j * cellDimension, obj_terrainParent))
		{
			ds_grid_add(global.ds_grid_pathfinding, i, j, -2);
		}
		else
		{
			ds_grid_add(global.ds_grid_pathfinding, i, j, -1);
		}
	}
}