/// @description Insert description here
// You can write your code in this editor
event_inherited(); 

depth = depth_middleground;

receiving_size = 1.2; //size when mug is scaled up to receive stuff

list_ingredient = ds_list_create(); //list of ingredients
mug_empty = true; //if mug is empty


//ANNOYED: empty
//PISSED: milk, sugar (only)
//DRUNK: alcohol
//FIRE: hotsauce
//WEIRD: alcohol, hotsauce, pickles, energy
//SPEEDY: energy

enum STATE_MUG
{
	ANNOYED, PISSED, DRUNK, FIRE, WEIRD, SPEEDY
}
mug_state = STATE_MUG.ANNOYED;


coffee_color = c_maroon;

smoke_xoffset = 0;
timer1 = 0;


//debug txt
deb_text = "";

