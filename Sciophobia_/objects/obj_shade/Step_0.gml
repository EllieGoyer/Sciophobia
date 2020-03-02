/// @description Inherited
event_inherited();

if (isInLight) { currentState = states.death; }

if (sprite_index == anim_Attack) { image_speed = 0.9 }
else { image_speed = 0.2; }