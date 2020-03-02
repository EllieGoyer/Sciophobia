/// @description scr_melee_attack();
//Basic implementation for melee attack

if (sprite_index != anim_Attack)
{
	sprite_index = anim_Attack;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

//Check for hits with hitbox
mask_index = hitboxMask;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x, y, obj_pl1, hitByAttackNow, false);
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		//If instance has not been hit yet
		var hitID = hitByAttackNow[| i];
		if (ds_list_find_index(hitByAttack, hitID) == -1)
		{
			ds_list_add(hitByAttack, hitID)
			//Interact with object getting hit
			var damage = attackDamage;
			with (hitID)
			{
				currentHP -= damage;
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = anim_Idle;

if (scr_animation_end())
{
	sprite_index = anim_Idle;
}	