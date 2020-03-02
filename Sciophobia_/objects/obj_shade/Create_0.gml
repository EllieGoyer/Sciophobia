/// @description Inherited 
event_inherited();

image_speed = 0.2;

maxSpeed = 1.2;
sightDetectRadius = 100;

maxHP = 4;
currentHP = maxHP;

//Invisibility
image_alpha = 0.15;

anim_Idle = spr_shade_idle;
anim_Attack = spr_shade_attack;
anim_Chase = spr_shade_idle;

attackRadius = 35;
attackDamage = 2;
hitboxMask = spr_shade_attack_hitbox;	

attackSpeed = 50;				
attackCooldown = attackSpeed;	