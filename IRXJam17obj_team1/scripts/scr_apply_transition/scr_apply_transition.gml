/// @description apply a transition shader (in or out)
///@param shader (in/out shader trans)
///@param frames_elapsed (amount of frames since applied)

var shd_trans = argument0 //transition in or out

shader_set(shd_trans);//set shader so we can apply uniif

////////////Time since clicked
//save time
var fE = argument1; //amount frames elapsed since applied

var u_framesElapsed = shader_get_uniform(shd_trans,"u_framesElapsed");//set curr time as unif

shader_set_uniform_f(u_framesElapsed, fE);

shader_reset();//reset shader after script is over


