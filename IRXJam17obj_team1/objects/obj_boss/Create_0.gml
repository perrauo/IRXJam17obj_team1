/// @description init
// You can write your code in this editor

//different interaction states
enum STATE_INTERACTION
{
	NOT, INTERACTABLE, OVER

}
interaction_state = STATE_INTERACTION.NOT;



//boss current text
curr_text = "";
next_text = "";

sub_text = "";



timeline_index = tl_boss_interaction0;
timeline_running = true;

tl_seg_pos = 0; //position on the timeline's segment

line_size = 54; //number of chars of line

//char indexes
curr_char_index = 0;
prev_char_index = 0;


//timers
timer1 = 0;
lim1 = 60;


//spr_iter
spr_iter_icon = 0;



