/// @description Insert description here
// You can write your code in this editor

var bla =  make_color_rgb(96, 104, 120);


////////draw boss/////
draw_sprite(sprite_index, 0,x,y);


///////draw textbox///////
var tb_posx = 0+5;
var tb_posy = room_height - sprite_get_height(spr_textbox)- 5;

//box//
draw_sprite(spr_textbox, 0,tb_posx,tb_posy);

//text//
draw_set_font(fnt_small);
draw_set_color(bla);
var text_size = string_length(curr_text); //size of the full text
draw_text(tb_posx+20,tb_posy+15, sub_text);


//interactable indicator//
if(interaction_state = STATE_INTERACTION.INTERACTABLE)
draw_sprite(spr_icon_spacebar, spr_iter_icon,room_width-50, room_height-40);



