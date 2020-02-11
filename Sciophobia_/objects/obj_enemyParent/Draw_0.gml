/// @description Showing Enemy is alert for testing

draw_self();

if (currentState == states.alert)
{	
	draw_text_transformed(x- 10, y - 73, "!", 2, 2, 0);	
	//Draw text with current state
}