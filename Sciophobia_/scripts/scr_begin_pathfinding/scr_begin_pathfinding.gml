/// @description scr_begin_pathfinding()
//Must be run from enemy object

scr_fill_grid(floor(x / obj_grid.cellDimension), floor(y / obj_grid.cellDimension), 
					floor(obj_pl1.x / obj_grid.cellDimension), floor(obj_pl1.y / obj_grid.cellDimension));