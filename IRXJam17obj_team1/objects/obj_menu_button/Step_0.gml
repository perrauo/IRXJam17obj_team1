/// @description interaction
// You can write your code in this editor

//x1	The x coordinate of the left side of the rectangle to check.
//y1	The y coordinate of the top side of the rectangle to check.
//x2	The x coordinate of the right side of the rectangle to check.
//y2	The y coordinate of the bottom side of the rectangle to check.

//timers update
if(timer1 >= lim1)
{
	timer1 = 0;
}
timer1 += delta_time/1000;


//detect mouse
if point_in_rectangle(mouse_x, mouse_y, text_posx, text_posy, text_posx+box_width, text_posy+box_height)
{
	if(pulse<pi)
	{
	pulse_over =  false; //set pulse to be donee
	}
	
	mouse_on_top = true;
}
else
{
pulse = 0;
mouse_on_top = false
}		
		
//if pulse is over then set to non click size (.2)
if(pulse_over)
{
	pulse_size= .2;
}

//do pulse if needed
event_user(0);

//if mouse on top open up GUI is clicked
if(mouse_on_top)
{
	event_user(1);
	
	if(timer1 >= lim1) //if timer fires
	{
	//choose box ang rotation
	var shake = irandom_range(-shake_amount,shake_amount);
	
	text_posx = clamp(text_posx+shake, x-shake_amount, x+shake_amount);
	text_posy = clamp(text_posy+shake, y-shake_amount, y+shake_amount);
	}
}
else //reset to original
{
	text_posx = x;
	text_posy = y;
}

