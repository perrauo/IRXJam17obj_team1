/// @description Insert description here
// You can write your code in this editor

text_size = string_length(curr_text); //size of the full text

tl_seg_pos = (timeline_position-1) % 100;
var norm_tl_pos = tl_seg_pos/100;//normalized timer 0 -> 1;


//calc index of current character
curr_char_index = ceil(lerp(0, string_length(curr_text), norm_tl_pos));	
sub_text = string_delete(curr_text, curr_char_index+1, text_size-curr_char_index);


//evoke state machine
event_user(0);





//timers update
if(timer1 >= lim1)
{
	timer1 = 0;
	
	//increase sprite iterator
	spr_iter_icon = (spr_iter_icon + 1)% 4;
	
}
timer1 += delta_time/1000;


