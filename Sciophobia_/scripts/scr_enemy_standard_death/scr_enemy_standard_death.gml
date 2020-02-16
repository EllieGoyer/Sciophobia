/// @description scr_enemy_standard_death
//Update later with animation and sounds

scr_reset_pathfinding();

//Set Death Anim/sprite 
image_speed = 0.3;
sprite_index = anim_Death;

//Destroy when animation is over
if (image_index > image_number - 1) 
{
    instance_destroy();
}
