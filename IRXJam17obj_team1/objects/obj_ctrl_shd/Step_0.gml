/// @description apply transition shaders
// You can write your code in this editor




if(time != noone)
{
//frames elapsed since instance created
framesElapsed = scr_frames_elapsed(time);

//apply shaders
scr_apply_transition(shd_transition_in, framesElapsed); //trans in


//turn off shaders if needed
//if 240 frames elapse: turn off shader
if(framesElapsed>120.0)
obj_ctrl_shd.toggle_shd_transition_in = false;

//end application of transition
}

