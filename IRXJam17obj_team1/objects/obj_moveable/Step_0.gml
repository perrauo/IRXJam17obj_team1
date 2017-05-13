/// @description Insert description here
// You can write your code in this editor


//x1	The x coordinate of the left side of the rectangle to check.
//y1	The y coordinate of the top side of the rectangle to check.
//x2	The x coordinate of the right side of the rectangle to check.
//y2	The y coordinate of the bottom side of the rectangle to check.


//togle debug
if(keyboard_check_pressed(ord("M")))
{
	debug_enabled = !debug_enabled;

}


//////////////detect mouse
if point_in_rectangle(obj_cursor.x, obj_cursor.y, bbox_left, bbox_top, bbox_right, bbox_bottom)
{
	mouse_on_top = true;
}
else
{
	mouse_on_top = false
}		
		
		
		
////////////if mouse on top ..
if(mouse_on_top)
{
	if(pulse<pi)
	{
	pulse_over =  false; //set pulse to be donee
	}

	if(mouse_check_button(mb_any))
	{
		if(mouse_check_button_pressed(mb_any))
		{
			
		obj_cursor.selected_id = self; //set id
		obj_cursor.lockon = true;
		
		}
				
	}
	
			
}
else
pulse = 0;		
		
	
		
//if pulse is over then set to non click size (.2)
if(pulse_over)
{
	pulse_size= .2;
}

//do pulse if needed
if (!obj_cursor.lockon)
event_user(0);


//remove lock
if(mouse_check_button_released(mouse_button))
{
	obj_cursor.lockon = false;
}



//place on counter
if(room_get_name(room) == "rm_kitchen")
event_user(1);

//move
scr_click_drag();
 
