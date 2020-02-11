/// @description scr_melee_attack();

//Enemy iniates attack and switches to alert state
//Clear a ds_list that stores hits to prevent double hiting
//Each frame, exchange collision mask for hitbox sprite(s)
//instance_place_list
//check each hit instance that hasn't already been hit during attack
//if hasn't been hit, add to list and deal damage
//go back to alert state