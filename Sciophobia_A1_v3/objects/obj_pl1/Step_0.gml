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
	key_dash = gamepad_button_check_pressed(padid, gp_face2);
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
	key_dash = keyboard_check_pressed(vk_space);
	aim_angle = point_direction(x, y, mouse_x, mouse_y);
	//key_tertiary = keyboard_check_pressed(ord("L"));
	//key_quad = keyboard_check_pressed(ord("I"));
}

//calculate movement
hmove = key_left + key_right;
hsp = hmove * movespeed;

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
y += vsp;

//shoot
scr_weapon_attack();

//dash
scr_dash();