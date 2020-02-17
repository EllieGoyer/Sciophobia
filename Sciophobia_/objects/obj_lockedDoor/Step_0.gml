var is_active = variable_instance_get(my_key, "is_active");
if (is_active)
{
	instance_destroy();
	var create_door = instance_create_layer(x,y,"Terrain",obj_door);
	create_door.image_xscale = image_xscale;
	create_door.image_yscale = image_yscale;
}