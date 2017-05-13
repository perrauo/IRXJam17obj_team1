/// @description place on counter


var mov = instance_place(x,y, obj_moveable);

if(!obj_cursor.lockon)
{
	y = clamp(y, counter_top, counter_bottom);
	
	//if already an object in tha spot
		
	//x1	The x coordinate of the left side of the rectangle to check.
	//y1	The y coordinate of the top side of the rectangle to check.
	//x2	The x coordinate of the right side of the rectangle to check.
	//y2	The y coordinate of the bottom side of the rectangle to check.
		
	
		//if spot is occupied or placing on the mug: place in last good spot
		if(instance_exists(mov))&& 
		((point_in_rectangle(x,y, mov.bbox_left, mov.y-10, mov.bbox_right, mov.bbox_bottom)) ||
		(place_meeting(x,y, obj_mug)))
		{
			x = last_posx;
			y = last_posy;
	
		}
		else
		{
			y = clamp(y, counter_top, counter_bottom);
			last_posy = y; 
			last_posx = x;
	
		}	
				
}

//adjust depth
with(obj_cursor.selected_id)
{

if(!obj_cursor.lockon)
{

if(instance_exists(mov))
{
	if(mov.y > y)
	{
		depth = mov.depth+10;
			
	}
			
	if(mov.y < y)
	{
		depth = mov.depth-10;
			
	}
		
}

}
else
{
	depth = depth_foreground; 
}

}