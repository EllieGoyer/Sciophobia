var is_active = variable_instance_get(my_key, "is_active");
if (is_active)
{
	obj_grid.alarm[0]= 1;	//Signal for walkable grid to be rebuilt
	instance_destroy();
	var create_door = instance_create_layer(x,y,"Terrain",obj_door);
	create_door.image_xscale = image_xscale;
	create_door.image_yscale = image_yscale;
}