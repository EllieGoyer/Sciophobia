/// @description Showing Enemy is alert for testing

draw_self();

if (currentState == states.alert)
{	
	draw_text_transformed(x- 10, y - 73, "!", 2, 2, 0);	
	//Draw text with current state
}

//---Light testing---
var lightTestText = "";
if (isInLight) { lightTestText = "Light!"; }
else { lightTestText = "Dark!"; }
draw_text_transformed(x- 10, y - 100, lightTestText, 2, 2, 0);

scr_in_light_check();