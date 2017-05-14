/// @description Insert description here
// You can write your code in this editor

text_size = string_length(curr_text); //size of the full text

var norm_tl_pos = timer_text/100;//normalized timer 0 -> 1;

//if all text is displayed accelerate timeline to reach next event
if(norm_tl_pos > 1)
timeline_speed += 10;



//calc index of current character
curr_char_index = ceil(lerp(0, string_length(curr_text), norm_tl_pos));	
sub_text = string_delete(curr_text, curr_char_index+1, text_size-curr_char_index);


//evoke state machines
event_user(0);	//interactions
event_user(2); //textbox wobble
event_user(3); //textbox shake



//////////////////////////////////timers update///////////////////
if(timer1 >= lim1) //spacebar icon 
{
	timer1 = 0;
	
	//increase sprite iterator
	spr_iter_icon = (spr_iter_icon + 1)% 4;
	
}
timer1 += delta_time/1000;


//////////////////////////////////timers update///////////////////
if(timer2 >= lim2) //spacebar icon 
{
	timer2 = 0;
			
}
timer2 += delta_time/1000;


//////////////////////////////////timers update///////////////////
if(timer3 >= lim3) //spacebar icon 
{
	timer3 = 0;
			
}
timer3 += delta_time/1000;




//increase scrooling spd if space is pressed
var increase_fac = 1
if(keyboard_check(vk_space))
{
	increase_fac = 4;
}
else
increase_fac = 1;


timer_text += scrolling_spd*increase_fac; //scrolling texts



