/// @description Insert description here
// You can write your code in this editor

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

}