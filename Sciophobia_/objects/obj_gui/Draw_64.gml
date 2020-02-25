if(pauseMenu)
{
	//pause menu here
	draw_sprite_stretched_ext(spr_black, 0, 0, 0, 720, 480, c_black, 75);
	draw_sprite(spr_Paused, 0, 250, 100);
	instance_deactivate_all(true);
	instance_create_layer(300, 200, "GUI", obj_resumeButton);
	instance_create_layer(300, 200, "GUI", obj_controlsbutton);
	instance_create_layer(300, 200, "GUI", obj_exitButton);
	instance_create_layer(300, 200, "GUI", obj_cursor);
}

//during game play
if(!pauseMenu)
{
	draw_text(10, 430, "HP: " + string(obj_pl1.currentHP) + "/" + string(obj_pl1.maxHP));
	//add different ammo later
	draw_text(10, 450, "Ammo: " + string(obj_pl1.normal_ammo));
}