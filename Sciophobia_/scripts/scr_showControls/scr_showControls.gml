if(room == "Title")
{
	draw_sprite_stretched(spr_darkermaincolor, 0, 0,0,720,480);
	if(gamepad_is_connected(1))
	{
		//controls
		draw_text(200, 80, "Controls");
		draw_text(200, 120, "Interact: A");
		draw_text(200, 140, "Inventory: Left Bumper");
		draw_text(200, 160, "Aim: Left Trigger");
		draw_text(200, 180, "Shoot: Right Trigger");
		draw_text(200, 200, "Dash: B");
		draw_text(200, 200, "Pause: Start");
	
		draw_text(200, 400, "Press Left Trigger to go back");
	}
	else
	{
		//controls
		draw_text(200, 80, "Controls");
		draw_text(200, 120, "Interact: F");
		draw_text(200, 140, "Inventory: Q");
		draw_text(200, 160, "Aim: Right Mouse");
		draw_text(200, 180, "Shoot: Left Mouse");
		draw_text(200, 100, "Dash: Space");
		draw_text(200, 200, "Pause: Escape");
	
		draw_text(200, 400, "Press Right Mouse to go back");
	}
}
else
{
	draw_sprite_stretched(spr_darkermaincolor, 0, camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),720,480);
	if(gamepad_is_connected(1))
	{
		//controls
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+80, "Controls");
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+120, "Interact: A");
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+140, "Inventory: Left Bumper");
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+160, "Aim: Left Trigger");
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+180, "Shoot: Right Trigger");
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+200, "Dash: B");
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+200, "Pause: Start");
	
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+400, "Press Left Trigger to go back");
	}
	else
	{
		//controls
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+80, "Controls");
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+120, "Interact: F");
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+140, "Inventory: Q");
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+160, "Aim: Right Mouse");
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+180, "Shoot: Left Mouse");
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+100, "Dash: Space");
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+200, "Pause: Escape");
	
		draw_text(camera_get_view_x(view_camera[0])+200, camera_get_view_y(view_camera[0])+400, "Press Right Mouse to go back");
	}
}