/// @description scr_enemy_headTrap_attack()
//Directly from alert state, loops back into it

//Determine Goal Coordinates
if (!hasAttacked && !isAttacking)
{
	hasAttacked = true;

	//Setting Distance and direction
	if (point_distance(x, y, obj_pl1.x, obj_pl1.y) <= attackRadius)
	{
		//Get Distance and Direction
		dir = point_direction(x, y, obj_pl1.x, obj_pl1.y);
		dist = point_distance(x, y, obj_pl1.x, obj_pl1.y);
	}
	else
	{
		dir = point_direction(x, y, obj_pl1.x, obj_pl1.y);
		dist = attackRadius;
	}
	
	//Setting Goal Points
	endX = x + lengthdir_x(dist, dir);
	endY = y + lengthdir_y(dist, dir);
	quarterX = x + lengthdir_x((dist/4), dir);
	quarterY = y + lengthdir_y((dist/4), dir);
	midX = x + lengthdir_x((dist/2), dir);
	midY = y + lengthdir_y((dist/2), dir);
	thirdX = x + lengthdir_x((dist*(3/4)), dir);
	thirdY = y + lengthdir_y((dist*(3/4)), dir);

	//Set Facing Direction
	headPiece.image_angle = dir + 90;
	spinePiece_1.image_angle = dir + 90;
	spinePiece_2.image_angle = dir + 90;
	spinePiece_3.image_angle = dir + 90;
		
	//Begin the actual attack
	isAttacking = true; 
}

var o = id;

//Move Parts to goal Coordinates and attack at location
if (isAttacking)
{
	//Move individual parts to point if not close enough to goal
	if (point_distance(headPiece.x, headPiece.y, endX, endY) > 15)
	{
		with (headPiece) { move_towards_point(o.endX, o.endY, o.pieceMoveSpeed); }
		with (spinePiece_1) { move_towards_point(o.quarterX, o.quarterY, o.pieceMoveSpeed); }
		with (spinePiece_2) { move_towards_point(o.midX, o.midY, o.pieceMoveSpeed); }
		with (spinePiece_3) { move_towards_point(o.thirdX, o.thirdY, o.pieceMoveSpeed); }
	}
	else //end condition is when they hit that point
	{		
		//Rest Speeds from movement
		headPiece.speed = 0;
		spinePiece_1.speed = 0;
		spinePiece_2.speed = 0;
		spinePiece_3.speed = 0;
		
		//headPiece.sprite_index = attack_anim;
		headPiece.meleeAttacking = true;
		isAttacking = false;
	}
}

if (hasAttacked && !isAttacking && !headPiece.meleeAttacking)
{
	//Reset Positions
	headPiece.x = headPiece.originalX;
	headPiece.y = headPiece.originalY;
	headPiece.image_angle = 0;
	spinePiece_1.x = spinePiece_1.originalX;
	spinePiece_1.y = spinePiece_1.originalY;
	spinePiece_1.image_angle = 0;
	spinePiece_2.x = spinePiece_2.originalX;
	spinePiece_2.y = spinePiece_2.originalY;
	spinePiece_2.image_angle = 0;
	spinePiece_3.x = spinePiece_3.originalX;
	spinePiece_3.y = spinePiece_3.originalY;
	spinePiece_3.image_angle = 0;
	
	//Reset State to Alert
	attackCooldown = attackSpeed;		
	hasAttacked = false;
	currentState = states.alert;
}


/*
//If attacking animation
if (headPiece.sprite_index == attack_anim)
{
	//If last frame of animation
	if (headPiece.image_index == headPiece.image_number - 1)
	{	
		//Reset Positions
		headPiece.x = headPiece.originalX;
		headPiece.y = headPiece.originalY;
		headPiece.image_angle = 0;
		spinePiece_1.x = spinePiece_1.originalX;
		spinePiece_1.y = spinePiece_1.originalY;
		spinePiece_1.image_angle = 0;
		spinePiece_2.x = spinePiece_2.originalX;
		spinePiece_2.y = spinePiece_2.originalY;
		spinePiece_2.image_angle = 0;
		spinePiece_3.x = spinePiece_3.originalX;
		spinePiece_3.y = spinePiece_3.originalY;
		spinePiece_3.image_angle = 0;
		
		attackCooldown = attackSpeed;		//reset cooldown
		hasAttacked = false;
		headPiece.sprite_index = anim_Idle;
		currentState = states.alert;
	}
}
*/


