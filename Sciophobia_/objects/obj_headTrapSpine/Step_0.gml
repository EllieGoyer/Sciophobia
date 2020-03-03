/// @description Override

if(!obj_gui.pauseMenu)
{
	
if (currentHP <= 0) 
{ 
	//Set Death Anim/sprite 
	image_speed = 0.4;
	sprite_index = spr_tempGeneralDeath;

	//Destroy when animation is over
	if (scr_animation_end()) { instance_destroy(); } 
} 

}