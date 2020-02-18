//in create

speed = 5;

t = 2*room_speed; //time from creation to deletion in seconds

image_angle = obj_pl1.aim_angle;

direction = image_angle;

damage = obj_pl1.dmg;


switch(irandom(3))
{
    case 0 : audio_play_sound(pistol_fire_01,0,false); break;
    case 1 : audio_play_sound(pistol_fire_02,0,false); break;
    case 2 : audio_play_sound(pistol_fire_03,0,false); break;
}