 /// @description Main Functiomality
if(!obj_gui.pauseMenu)
{

#region -----Main Finite State Machine-----

//Override and add additional functionality in exact enemy units as needed
//Keep state functionality in scripts for modularity

switch (currentState)
{
	case states.idle:
        scr_enemy_standard_idle();
		break;
		
	case states.alert:
        scr_enemy_standard_alert(); 
		break;
		
	case states.attack:
        scr_enemy_standard_attack(); 
		break;
		
	case states.death:
        scr_enemy_standard_death(); 
		break;
		
	case states.knockback:
        scr_enemy_standard_knockback();
		break;
	
	case states.stunned:
        //scr_standard_enemy_stunned(); //switch isInteractable variable for enemy
		break;
}

#endregion --------------------------------

//Pathfinding Testing 
if (keyboard_check(ord("X"))) 
{ 
	scr_reset_pathfinding(); 
	scr_begin_pathfinding();
}

//Follow Path if one exists
if (path_exists(pathBuilding)) { scr_follow_path(pathBuilding); }

//Apply Enemy-specific Physics 
if (!place_meeting (x, y + 1, obj_terrainParent)) { vSpeed += enemyGravity; }

scr_enemy_collision();

scr_check_HP();

//Lighting Update
//polygon = polygon_from_instance(id);

}