/// @description scr_view_zoom
/// @param amount
/// @param cam_index



var amount = 1+argument0; // amount +1 since ltets say 
//they pass -.5 itl reduce the amount from 1 to .5
//amount should be neg number > -1 or pos <1

var cam = argument1; //in case multiple view


//lim how much they can zoom
if(camera_get_view_width(cam) <= 64 && amount < 1) 
return; //exit script (min reached)

if(camera_get_view_width(cam) >= 1280 && amount > 1) 
return; //exit script (max reached)


//get the offsets
var offx = abs(camera_get_view_width(cam)*amount -camera_get_view_width(cam));
var offy = abs(camera_get_view_height(cam)*amount -camera_get_view_height(cam));

//scale the view
var curr_width = camera_get_view_width(cam);
var curr_height = camera_get_view_height(cam);
camera_set_view_size(cam, curr_width*amount, curr_height*amount); 


//adjust the view pos based on offset
var curr_xpos = camera_get_view_x(cam);
var curr_ypos = camera_get_view_y(cam);


if(amount < 1) //add to the views x coor d by offset
{
	camera_set_view_pos(cam,curr_xpos+offx/2, curr_ypos+offy/2);
}
else if (amount > 1) //then subract from x y pos
{
	 camera_set_view_pos(cam,curr_xpos-offx/2, curr_ypos-offy/2);
}



