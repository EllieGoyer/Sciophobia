/// @description scr_enemy_standard_death
//Update later with animation and sounds

scr_reset_pathfinding();

if(!audio_is_playing(enemy_death_01))
{
	audio_play_sound(enemy_death_01, 1, false);
}

visible = true;

//Set Death Anim/sprite 
image_speed = 0.4;
sprite_index = anim_Death;

//Destroy when animation is over
if (image_index > image_number - 1) 
{
    instance_destroy();

}
