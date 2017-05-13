/// @description step
// You can write your code in this editor

//Toggle debug
if(keyboard_check_pressed(ord("C")))
debug_enabled = !debug_enabled;


if(keyboard_check_pressed(vk_f1))
{
	STATE= "DELAY_TRACKING_PLAYER";
	state_txt_alpha =1; //reset message alpha
}

if(keyboard_check_pressed(vk_f2))
{
	STATE= "SMOOTH_TRACKING_PLAYER"
	state_txt_alpha =1;
}

if(keyboard_check_pressed(vk_f3))
{
	STATE= "PERFECT_TRACKING_PLAYER";
	state_txt_alpha =1;
}

if(keyboard_check_pressed(vk_f4))
{
	STATE= "PERFECT_TRACKING_MOUSE";
	state_txt_alpha =1;

}

if(state_txt_alpha > 0) //decrease txt alpha
state_txt_alpha -= .1;


//STATE MACHINE
switch(STATE)
{
case "SMOOTH_TRACKING_PLAYER":

if(!collision_rectangle(x-cam_wbound/2, y-cam_hbound/2, x+cam_wbound/2, y+cam_hbound/2, player, true, true)) //if not in cam bound
{
		//in_cam_bound = false;
		//alarm_set(0,in_bound_delay); //if 30 frames inside bound then in_boun = true
		
		//if(x != player.x)
		x += (player.x - x) *.01; 
		//if(y != player.y) 
		y += (player.y - y) *.01;
		
}
	
break;

case "DELAY_TRACKING_PLAYER":

if(!collision_rectangle(x-cam_wbound/2, y-cam_hbound/2, x+cam_wbound/2, y+cam_hbound/2, player, true, true)) //if not in cam bound
{
		in_cam_bound = false;
		alarm_set(0,in_bound_delay); //if 30 frames inside bound then in_boun = true
		
		
}
	if(!in_cam_bound) //if outside of bound readjust
	{
	//increment until reached
		if(x != player.x)
		x += (player.x - x) *.1; 
		if(y != player.y) 
		y += (player.y - y) *.1;
	}
	
break;

case "PERFECT_TRACKING_PLAYER":

		x = player.x;
		y = player.y;





case "PERFECT_TRACKING_MOUSE":
//track player
x = mouse_x
y = mouse_y;

break;


}




