/// @description Insert description here
// You can write your code in this editor

////////draw boss/////
var boss_color = c_white;
if(instance_exists(ctrl_timelines))//if controller exists
{
	if(ctrl_timelines.state != noone)
	{
		if(ctrl_timelines.state == STATE_MUG.WEIRD)
		var boss_color = make_color_rgb(102, 153, 0); //make him green
	}
}
draw_sprite_ext(sprite_index, image_index,x,y,scale, scale, 0,boss_color,1);

////////draw table/////
draw_sprite_ext(spr_table, 0,obj_table.x,obj_table.y,1, 1, 0,c_white,1);


var bla =  make_color_rgb(96, 104, 120);
var w = c_white;


if(boss_state == STATE_BOSS.INTERACTABLE) || (boss_state == STATE_BOSS.TALKING) 
|| (boss_state == STATE_BOSS.TOCLOSE)
{
///////draw textbox///////
draw_set_alpha(textbox_alpha);


//box//
draw_sprite(spr_textbox, 0,tb_posx,tb_posy);

//text//
draw_set_font(fnt_small);
draw_set_color(bla);
var text_size = string_length(curr_text); //size of the full text
draw_text(tb_posx+20,tb_posy+15, sub_text);
}

//interactable indicator//
if(boss_state == STATE_BOSS.INTERACTABLE) || (boss_state == STATE_BOSS.TOCLOSE)
draw_sprite(spr_icon_spacebar, spr_iter_icon,room_width-50, room_height-40);

draw_set_alpha(1);





