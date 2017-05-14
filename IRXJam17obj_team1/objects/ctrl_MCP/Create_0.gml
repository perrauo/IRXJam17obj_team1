/// @description MASTER CONTROL PROGRAM
//persistent across levels

#macro depth_background 400
#macro depth_middleground 0;
#macro depth_foreground -400
#macro depth_UI -500


global.ctrl_timelines_first_init = true;
global.cups_count = 0;


instance_create_depth(0,0,depth_UI, ctrl_timelines);






