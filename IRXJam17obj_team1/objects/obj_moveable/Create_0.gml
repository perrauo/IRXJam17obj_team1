/// @description Insert description here
// You can write your code in this editor


debug_enabled = false;

counter_top = 180;
counter_bottom = 205;

//last pos
last_posx = x;
last_posy = y;



///pulsing

pulse_over = true;
scale = 1;
pulse = 0; //value used to interpolate the scale pulse

pulse_size = .5;
mouse_on_top = false;

shake_amount = 2; //shake angle to rotate tb


//timers
timer1 = 0;
lim1 = 30;


var mov = instance_place(x,y, obj_moveable);

if(instance_exists(mov)) //adjust depth
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

