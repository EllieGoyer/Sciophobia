var is_active = variable_instance_get(my_key, "is_active");
if (is_active)
{
	if(image_yscale > 1)
	{
		image_yscale -= scale_factor;
	}else{
		y -= scale_factor * 50;	
	}
	
}