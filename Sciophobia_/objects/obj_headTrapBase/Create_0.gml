/// @description Inherited

event_inherited();

maxHP = 9;
currentHP = maxHP;
maxSpeed = 1.5;
sightDetectRadius = 350;	

//Unique
hasAttacked = false;
attackRadius = 220;
attackSpeed = 100;				
attackCooldown = attackSpeed;	
isAttacking = false;			

theta = 0; //For idle animations

//Create Spine and Head
initialSpacer = 20;
spineSpacer = 15;
headSpacer = 8;

spinePiece_1 = instance_create_layer(x, y + initialSpacer, "Enemies", obj_headTrapSpine);
spinePiece_1.parentBase = id;
spinePiece_2 = instance_create_layer(x, y + initialSpacer + spineSpacer*1, "Enemies", obj_headTrapSpine);
spinePiece_2.parentBase = id;
spinePiece_3 = instance_create_layer(x, y + initialSpacer + spineSpacer*2, "Enemies", obj_headTrapSpine);
spinePiece_3.parentBase = id;
headPiece = instance_create_layer(x, y + initialSpacer + spineSpacer*2 + headSpacer, "Enemies", obj_headTrapHead);
headPiece.parentBase = id;

//Coordinates for Snapping Attack
endX = -1; endY = -1;			//Coordinate for Head	
midX = -1; midY = -1;			//Coordinate for Middle Vertebra 	
quarterX = -1; quarterY = -1;	//Coordinate for 1/4 Vertebra 
thirdX = -1; thirdY = -1;		//Coordinate for 3/4s Vertebra 
dir = -1;						//Direction for Attack
dist = -1;						//Max Attack Range
pieceMoveSpeed = 10;			//Speed to snap