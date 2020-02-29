/// @description Inherited

event_inherited();

maxHP = 9;
currentHP = maxHP;
maxSpeed = 1.5;
sightDetectRadius = 350;	

//Unique
hasAttacked = false;
attackRadius = 200;
attackSpeed = 200;				
attackCooldown = attackSpeed;	
isAttacking = false;

theta = 0;

//Create Spine and Head
initialSpacer = 20;
spineSpacer = 15;
headSpacer = 8;

spinePiece_1 = instance_create_layer(x, y + initialSpacer, "Enemies", obj_headTrapSpine);
spinePiece_2 = instance_create_layer(x, y + initialSpacer + spineSpacer*1, "Enemies", obj_headTrapSpine);
spinePiece_3 = instance_create_layer(x, y + initialSpacer + spineSpacer*2, "Enemies", obj_headTrapSpine);
headPiece = instance_create_layer(x, y + initialSpacer + spineSpacer*2 + headSpacer, "Enemies", obj_headTrapHead);
