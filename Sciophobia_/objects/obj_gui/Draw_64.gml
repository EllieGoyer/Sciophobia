
if(title)
{
	draw_sprite_stretched(spr_black, 0, 0, 0, 720, 480);
	draw_text(200, 100, "Sciophobia");
	if(gamepad_is_connected(obj_pl1.padid))
	{
		draw_text(200, 200, "Press A to start");
		draw_text(200, 220, "Press B to exit");
		if(obj_pl1.key_interact)
		{
			title = false;
		}
		if(obj_pl1.key_dash)
		{
			game_end();
		}
		//controls
		draw_text(200, 300, "Controls");
		draw_text(200, 320, "Interact: A");
		draw_text(200, 340, "Inventory: Left Bumper");
		draw_text(200, 360, "Aim: Left Trigger");
		draw_text(200, 380, "Shoot: Right Trigger");
		draw_text(200, 400, "Dash: B");
	}
	else
	{
		draw_text(200, 200, "Press ENTER to start");
		draw_text(200, 220, "Press ESCAPE to exit");
		if(keyboard_check_pressed(vk_enter))
		{
			title = false;
		}
		if(keyboard_check_pressed(vk_escape))
		{
			game_end();
		}
		//controls
		draw_text(200, 300, "Controls");
		draw_text(200, 320, "Interact: F");
		draw_text(200, 340, "Inventory: Q");
		draw_text(200, 360, "Aim: Right Mouse");
		draw_text(200, 380, "Shoot: Left Mouse");
		draw_text(200, 400, "Dash: Space");
	}
}

if(pauseMenu)
{
	//pause menu here
}

if(title=false && pauseMenu = false && keyboard_check_pressed(vk_escape)){title=true;}

//during game play
if(title == false && pauseMenu == false)
{
	draw_text(10, 430, "HP: " + string(obj_pl1.currentHP) + "/" + string(obj_pl1.maxHP));
	//add different ammo later
	draw_text(10, 450, "Ammo: " + string(obj_pl1.normal_ammo));
}