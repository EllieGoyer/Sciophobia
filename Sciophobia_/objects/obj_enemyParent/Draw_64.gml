/// @description Path Visualization

draw_set_color(c_white);

#region Draw grid testing
/*
if (ds_exists(ds_grid_pathfinding_copy, ds_type_grid)) 
{	
    for (var i  = 0; i < ds_grid_width(ds_grid_pathfinding_copy); i++)
    {
        for (var j = 0; j < ds_grid_height(ds_grid_pathfinding_copy); j++)
        {
            var value = ds_grid_get(ds_grid_pathfinding_copy, i, j);
            draw_text_transformed(i * obj_grid.cellDimension + 8, j * obj_grid.cellDimension + 8, string(value), 1, 1, 0);
 }
*/
#endregion

/// Draw path
if (path_exists(pathBuilding))
{
    draw_path(pathBuilding, floor(x / obj_grid.cellDimension), floor(y / obj_grid.cellDimension),true) ;
}

