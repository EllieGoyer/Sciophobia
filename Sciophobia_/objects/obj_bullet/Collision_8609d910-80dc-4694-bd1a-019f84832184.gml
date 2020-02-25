/// @description When an enemy is hit in general

other.currentState = states.knockback;
other.currentHP -= 3; //set damage variable later
audio_play_sound(player_damage_01, 1, false);
instance_destroy();

