/// @description Drag movable object while holding any mouse button
/// @param noone
/// @return noone

//curs coord
var cursor_x = obj_cursor.x;
var cursor_y = obj_cursor.y;



if(obj_cursor.lockon) //if mouse on top
{
	//if click held
	if(mouse_check_button(mb_any)) && (self == obj_cursor.selected_id)
	{
	
		x = obj_cursor.x;
		y = obj_cursor.y; 
	
	}
	
	
}