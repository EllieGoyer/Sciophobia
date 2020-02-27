/// @description Insert description here
// You can write your code in this editor
if(obj_pl1.key_interact && trigger_value == 0)
{
	is_active = !is_active;
	trigger_value = trigger_cooldown;
	audio_play_sound(switch_on_01, 1, false);
}