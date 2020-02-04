/// @description Insert description here
// You can write your code in this editor

if(title)
{
	draw_sprite_stretched(spr_black, 0, 0, 0, 1280, 720);
	draw_text(300, 300, "Sciophobia");
	if(gamepad_is_connected(obj_pl1.padid))
	{
		draw_text(250, 500, "Press A to start");
		draw_text(250, 520, "Press B to exit");
	}
	else
	{
		draw_text(250, 500, "Press F to start");
		draw_text(250, 520, "Press Space to exit");
	}
	
	if(obj_pl1.key_interact)
	{
		title = false;
	}
	if(obj_pl1.key_dash)
	{
		game_end();
	}
}

if(pauseMenu)
{
	//pause menu here
}

if(title=false && pauseMenu = false && keyboard_check_pressed(vk_escape)){title=true;}