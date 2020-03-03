basespeed = 3;
speedmod = 6;
fastspeed = basespeed * speedmod;
slowspeed = 2;
cooldownspeed = 2.5;
basegrv = .2;

hsp = 0; //horizontal speed
vsp = 0; //vertical speed
movespeed = basespeed; //movement speed
grv = basegrv; //gravity modifier

//count_footsteps = 0;

curDir = -1; //current direction facing

key_shoot = 0;
key_shoot_auto = 0;
key_aim = 0;
key_dash = 0;
key_interact = 0;
key_show_inventory = 0;
key_pause = 0;

//dash_time is inverse to fastspeed, covers a roughly similar distance no matter the speedmod
distance_dash = 4;
dash_time = (distance_dash/fastspeed)*room_speed;	
dash_cooldown_time = 2*room_speed;
tempDash = 0;
tempCooldown = 0;

maxHP = 10; //health
currentHP = maxHP;

aim_angle = 0;

//inventory

//key
//-1 = don't have, 0 = have but not equipped, 1 = equipped
//weapons
knife = 0;
hunting_rifle = 1;
pistol = -1;
shotgun = -1;
grenade_launcher = -1;
assult_rifle = -1;
pulse_cannon = -1;

//permanent
flashlight = 0;
armor = 0;

//consumable
normal_ammo = 20;
batteries = 0;
glowsticks = 0;
molotovs = 0;
flashbangs = 0;
dissolver_grenade = 0;

glowsticksE = 0;
molotovsE = 0;
flashbangsE = 0;
dissolver_grenadeE = 0;

//different weapon stats
reload_sp = 1;
shoot_sp = 1;
dmg = 3;
bullet_capacity = 1;
weapon_weight = 0;

//dash states
enum dash_states
{
	dashing,
	not_dashing,
	dash_cooldown
}

dash_states = dash_states.not_dashing;

checkedDirection = false;
tempDirection = 1;

//audio timer
can_play_sound = true;
sound_timer = 0;

//trap bools
trapped = false;

shoot_timer = shoot_sp;