/// @description Insert description here
// You can write your code in this editor
event_inherited()

//draw coffee that changes color
if(!mug_empty)
draw_sprite_ext(spr_coffee,0,x,y,scale,scale,0,coffee_color,1);


//debug 
b = c_blue;
if(debug_enabled)
{
	draw_text_color(x,y, deb_text, b,b,b,b,1);
}
