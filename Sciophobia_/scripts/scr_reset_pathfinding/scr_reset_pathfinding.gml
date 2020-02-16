/// @description scr_reset_pathfinding()
//Must be run from enemy object

hSpeed = 0;
vSpeed = 0;
if (path_exists(pathBuilding)) { path_delete(pathBuilding); }
pathPoint = 0;
action = 0;
jumpAction = 0;