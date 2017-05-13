/// @description Insert description here
// You can write your code in this editor

//move curso before being locked


//TODO
//fix loose object when moving cursor fast

if(!lockon)
{
x =mouse_x;
y =mouse_y;
}
else
{
	x = lerp(x, mouse_x,.5);
	y = lerp(y, mouse_y,.5);
	
}

