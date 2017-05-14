/// @description init
// You can write your code in this editor

//different interaction states
enum STATE_BOSS
{
	 FREE, TALKING, INTERACTABLE, TOCLOSE, OVER

}
boss_state = STATE_BOSS.FREE;


//boss current text
curr_text = "";
next_text = "";
sub_text = "";
tl_seg_pos = 0; //position on the timeline's segment


//textbox properties
line_size = 64; //number of chars of line
textbox_alpha = .8;


//char indexes
curr_char_index = 0;
prev_char_index = 0;


//timers
timer1 = 0;
lim1 = 60;

//textbox shake
timer2 = 0;
lim2 = 30;

//reset tb pos
timer3 = 0;
lim3 = 60;


timer_text = 0;
scrolling_spd = .5;


//spr_iter
spr_iter_icon = 0;


//receiving mug
receiving_size = 1.05; //size when maker is scaled up to receive stuff
scale = 1;


//talking sprite
green = make_color_rgb(102, 153, 0);

spr_idle = spr_boss_idle;
spr_talking = spr_boss_talking;


//shake

shake_amount = 2; //shake angle to rotate tb


init_tb_posx =  0+5; 
init_tb_posy =  room_height - sprite_get_height(spr_textbox)- 5; 

tb_posx = 0+5;
tb_posy = room_height - sprite_get_height(spr_textbox)- 5; 



