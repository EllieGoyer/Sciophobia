//in step

//look for gamepad
var maxpads = gamepad_get_device_count();
padid = 0;
for(var i = 0; i<maxpads; i++)
{
	if(gamepad_is_connected(i))
	{
		padid = i;
	}
}

//get player input
if(gamepad_is_connected(padid)) //gamepad
{
	key_right = gamepad_button_check(padid, gp_padr);
	key_left = -gamepad_button_check(padid, gp_padl);
	key_up = -gamepad_button_check(padid, gp_padu);
	key_down = gamepad_button_check(padid, gp_padd);
	key_shoot = gamepad_button_check_pressed(padid, gp_shoulderrb);
	key_shoot_auto = gamepad_button_check(padid, gp_shoulderrb);
	key_aim = gamepad_button_check(padid, gp_shoulderl);
	key_dash = gamepad_button_check_pressed(padid, gp_face2);
	key_interact = gamepad_button_check_pressed(padid, gp_face1);
	key_show_inventory = gamepad_button_check(padid, gp_shoulderlb);
	var haxis = gamepad_axis_value(padid, gp_axislh);
	var vaxis = gamepad_axis_value(padid, gp_axislv);
	aim_angle = point_direction(0, 0, haxis, vaxis);
}
else //keyboard and mouse
{
	key_right = keyboard_check(ord("D"));
	key_left = -keyboard_check(ord("A"));
	key_up = -keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_shoot = mouse_check_button_pressed(mb_left);
	key_shoot_auto = mouse_check_button(mb_left);
	key_aim = mouse_check_button(mb_right);
	key_dash = keyboard_check_pressed(vk_space);
	key_interact = keyboard_check(ord("F"));
	key_show_inventory = keyboard_check(ord("Q"));
	aim_angle = point_direction(x, y, mouse_x, mouse_y);
	
}

//calculate movement
if(dash_states != dash_states.dashing)
{
	hmove = key_left + key_right;
}
hsp = hmove * movespeed;

//ladder
if(distance_to_object(obj_DummyLadder) < 4)
{
	vsp = key_up + key_down;
	grv = 0;
}
else if(dash_states != dash_states.dashing)
{
	grv = basegrv;
}

vsp += grv;

//horizontal collision
if(place_meeting(x+hsp, y, obj_wall))
{
	while(!place_meeting(x+sign(hsp), y, obj_wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
if(place_meeting(x+hsp, y, obj_DummyDoor))
{
	while(!place_meeting(x+sign(hsp), y, obj_DummyDoor))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//vertical collision
if(place_meeting(x, y+vsp, obj_wall))
{
	while(!place_meeting(x,y+sign(vsp), obj_wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
if(place_meeting(x, y+vsp, obj_DummyDoor))
{
	while(!place_meeting(x,y+sign(vsp), obj_DummyDoor))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

//walking sounds
/*
if ((key_left || key_right) && (count_footsteps<1))
{
    audio_play_sound(step_concrete_single_01, 8, true);
    count_footsteps = 60; // number of steps to wait before trying to play the sound again
}
if(!key_left && !key_right) 
{
	audio_stop_sound(step_concrete_single_01);
}
else if (count_footsteps>0) count_footsteps--;
*/

//shoot
scr_weapon_attack();
if((normal_ammo < 1) && (key_shoot || key_shoot_auto))
{
	audio_play_sound(no_ammo_01,1,false);
}

//dash
scr_dash();

if(1*sign(hsp) == -1)
{
	sprite_index = spr_player_left;
	curDir = -1;
}
else if(1*sign(hsp) == 1)
{
	sprite_index = spr_player_right;
	curDir = 1;
}

if(currentHP <= 0)
{
	room_restart();
}