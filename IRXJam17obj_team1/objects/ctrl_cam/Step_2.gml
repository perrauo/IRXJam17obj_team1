/// @description post update (cam)
// You can write your code in this editor


var cam_width = camera_get_view_width(cam_id);
var cam_height = camera_get_view_height(cam_id);
camera_set_view_pos(cam_id,x-cam_width/2,y-cam_height/2); //set cam to obj pos


//zooming w/ mouse scroll
 // scr_view_zoom(AMOUNT ,CAMID	)
if(mouse_wheel_up())
{
scr_view_zoom(-.1,cam_id);
}

if(mouse_wheel_down())
{
scr_view_zoom(.1,cam_id);
}
