/// @description init cam
// You can write your code in this editor


//Properties
debug_enabled = true;


//STATES
/*
	DELAY_TRACKING_PLAYER, 
	SMOOTH_TRACKING_PLAYER,
	PERFECT_TRACKING_PLAYER,
	PERFECT_TRACKING_MOUSE
	*/
STATE = "SMOOTH_TRACKING_PLAYER" 
state_txt_alpha = 1;


//object references
cam_id = view_get_camera(0); //get default cam_id
player = instance_find(obj_player,0);


//cam tracker boundaries
cam_wbound = 256;
cam_hbound = 192;
in_cam_bound = true;//inside cam boundaries
in_bound_delay = 10;


//adjust obj pos relat to the cam
x = camera_get_view_x(cam_id) + camera_get_view_width(cam_id)/2;
y = camera_get_view_y(cam_id) + camera_get_view_height(cam_id)/2;


//TODO add global access
//put in cam controller (global.cam_width, global_height...id)
//var cam_id = view_get_camera(0); //get default cam_id
//var width = camera_get_view_width(cam_id);
//var height = camera_get_view_height(cam_id);

