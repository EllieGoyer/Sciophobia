/// @description Interact to gain Health
if(obj_pl1.key_interact){
	obj_pl1.currentHP += health_increase;
	if(obj_pl1.currentHP > obj_pl1.maxHP)
	{
		obj_pl1.currentHP = obj_pl1.maxHP;
	}
	audio_play_sound(clothing_movement_01,1,false);
	instance_destroy();
}