/// @description 

light[| eLight.Type] = eLightType.Spot;		

//Set Origin to player
light[| eLight.X] = obj_pl1.x;				
light[| eLight.Y] = obj_pl1.y;

///Short Beam Tracket to player, bright
light[| eLight.Angle] = 20;					
light[| eLight.Direction] = point_direction(obj_pl1.x, obj_pl1.y, mouse_x, mouse_y);

//Toggle Light (Alter this for flickering?)
if(keyboard_check_pressed(ord("V")))
{ 
	if (lightIntensity > 0) { lightIntensity = 0; }
	else { lightIntensity = 1; } 
}
light[| eLight.Intensity] = lightIntensity;


// Needed for Dynamic Parts
light[| eLight.Flags] |= eLightFlags.Dirty; 
