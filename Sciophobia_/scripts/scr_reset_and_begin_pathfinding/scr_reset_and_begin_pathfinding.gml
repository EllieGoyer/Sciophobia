/// @description scr_reset_and_begin_pathfinding()
//Must be run from enemy object

hSpeed = 0;
vSpeed = 0;
if (path_exists(pathBuilding)) { path_delete(pathBuilding); }
pathPoint = 0;
action = 0;
jumpAction = 0;

scr_fill_grid(floor(x / obj_grid.cellDimension), floor(y / obj_grid.cellDimension), 
					floor(obj_pl1.x / obj_grid.cellDimension), floor(obj_pl1.y / obj_grid.cellDimension));