/// @description Delay to snare player on Center
// You can write your code in this editor

//set timer to re-activate
alarm[0] = room_speed * damageDelay;

//play animation, catch animation in Step()
image_speed = 1;

//set player stats
obj_pl1.trapped = true;
obj_pl1.alarm[0] = room_speed * damageDelay/2;