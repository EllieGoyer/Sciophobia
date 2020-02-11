draw_text(0, 0, "1 = Knife");
draw_text(0, 20, "2 = Hunting Rifle");

if(obj_pl1.pistol != -1)
{
	draw_text(0, 40, "3 = Pistol");
}
if(obj_pl1.pistol != -1)
{
	draw_text(0, 60, "4 = Shotgun");
}
if(obj_pl1.pistol != -1)
{
	draw_text(0, 80, "5 = Grenade Launcher");
}
if(obj_pl1.pistol != -1)
{
	draw_text(0, 100, "6 = Assult Rifle");
}
if(obj_pl1.pistol != -1)
{
	draw_text(0, 120, "7 = Pulse Cannon");
}

if(keyboard_check_pressed(vk_numpad1))
{
	scr_weapon_switch(1); //knife
}
if(keyboard_check_pressed(vk_numpad2))
{
	scr_weapon_switch(2); //hunting rifle
}
if(keyboard_check_pressed(vk_numpad3))
{
	scr_weapon_switch(3); //pistol
}
if(keyboard_check_pressed(vk_numpad4))
{
	scr_weapon_switch(4); //shotgun
}
if(keyboard_check_pressed(vk_numpad5))
{
	scr_weapon_switch(5); //grenade launcher
}
if(keyboard_check_pressed(vk_numpad6))
{
	scr_weapon_switch(6); //assult rifle
}
if(keyboard_check_pressed(vk_numpad7))
{
	scr_weapon_switch(7); //pulse cannon
}