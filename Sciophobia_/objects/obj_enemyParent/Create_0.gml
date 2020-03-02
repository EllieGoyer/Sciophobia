/// @description Generic Enemy Variables

#region Lighting

lightCheckTimer = room_speed / 20;
lightCheck = lightCheckTimer;
isInLight = false; //Is the shadow caster's bounds within range of the light?

#endregion
#region HP

maxHP = 10;
currentHP = maxHP;

#endregion
#region States

enum states { idle, alert, attack, death, knockback, stunned }
currentState = states.idle;			//State the enemy is at given time, default is idle

#endregion
#region Movement
maxSpeed = 2;
currentSpeed = maxSpeed;
enemyGravity = 9;
acceleration = 0.3;
enemyFriction = 0.9;

jumpHeight = -16;
vSpeed = 0;
hSpeed = 0;
#endregion
#region Pathfinding
ds_grid_pathfinding_copy = noone;
pathBuilding = noone;

//Following Path
pathPoint = 0;
action = 0;
jumpAction = 0;
#endregion
#region Aggression
sightDetectRadius = 300;	//How far the player can be until detected by "sight"
soundDetectRadius = 0;		//How far the player can be until detected by "sound"
isAlert = false;			//Whether enemy has noticed player
aggression = 0;				//How "worked up" the enemy currently is

#endregion
#region Attacking and Damage
//checkIfDead = false;  //when dealt damage, have enemy check if hp <= 0, then go to death state if so
attackDamage = 3;
attackSpeed = 70;				//in frames or anim speed
attackCooldown = attackSpeed;	//time until enemy can attack again

hitByAttack = ds_list_create(); //List for hitbox implementation
hitboxMask = noone;				//Collision Mask (sprite) for attacks

attackRadius = 70;				//How close the player has to be for the enemy to attack

#endregion
#region Crowd Control and Feedback

knockbackMax = 5; //change per bullet?
knockbackSpeed = knockbackMax; 

#endregion
#region Animations

anim_Death = spr_tempGeneralDeath;
anim_Idle = noone;
anim_Attack = noone;
anim_Chase = noone;


#endregion



