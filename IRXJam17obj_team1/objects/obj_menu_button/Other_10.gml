/// @description pulse button size
// You can write your code in this editor

if(!pulse_over)
{
	
	if(pulse > pi)
	{
		pulse_over = true;
	}
	
	scale = 1+sin(pulse)*pulse_size;
	
	pulse += .5;
	

}
