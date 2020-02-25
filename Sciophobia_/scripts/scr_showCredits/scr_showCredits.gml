draw_sprite_stretched(spr_darkermaincolor, 0, 0,0,720,480);

draw_text(300, 80, "Credits:");
draw_text(200, 150, "Creative Director - Ellie Goyer");
draw_text(200, 170, "Producer - Joseph Leblanc");
draw_text(200, 190, "Game Design | Systems Design - Aiden Montgomery");
draw_text(200, 210, "Game Design | Level Design - Benjamin Friedman");
draw_text(200, 230, "2D Character Art/Animator- Teni Fayiga");
draw_text(200, 250, "Sound - Carrie Patterson");
draw_text(200, 270, "Programming - Nicole Shadley");

if(gamepad_is_connected(1))
{	
	draw_text(200, 400, "Press Left Trigger to go back");
}
else
{
	draw_text(200, 400, "Press Right Mouse to go back");
}