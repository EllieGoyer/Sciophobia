/// @description Hurt Player

damageAmount = 3;

var effect = instance_create_layer(x, y - 35, "Instances", obj_damage_effect); 
effect.damagedDealt = damageAmount;

obj_pl1.currentHP -= damageAmount; //set damage variable later

instance_destroy();