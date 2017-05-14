/// @description Insert description here
// You can write your code in this editor

event_inherited(); //inherit obj_moveable's step;

//receiving ingredients
event_user(2);

//determine state
event_user(3);

//state machine
event_user(4);


//emit particles if contains cofee
timer1 += .5;

smoke_xoffset = sin(timer1)*5;

show_debug_message(mug_state);


if(!mug_empty)
{
	part_emitter_region(global.ps_smoke, global.em_smoke,x+smoke_xoffset+2,x+smoke_xoffset+2,y-sprite_height+10,y-sprite_height+10,0,0);
	part_emitter_burst(global.ps_smoke, global.em_smoke, global.pt_smoke1,1);

}

