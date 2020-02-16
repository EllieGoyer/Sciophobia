/// @description Interact to gain Health
if(obj_pl1.key_interact){
	//obj_pl1.health += health_increase;
	audio_play_sound(clothing_movement_01,1,false);
	instance_destroy();
}