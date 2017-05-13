/// @description determine state
// You can write your code in this editor

//STATES

//ANNOYED: empty
//PISSED: milk, sugar (only)
//DRUNK: alcohol
//FIRE: hotsauce
//WEIRD: alcohol, hotsauce, pickles, energy
//SPEEDY: energy

//Quantity list
//milk, sugar, alcohol, hotsauce, energy, pickle

var ing_quant = [0, 0, 0, 0, 0, 0]; //reset quantity
var list_size = ds_list_size(list_ingredient);

for(var i = 0; i< list_size; i++)
{
	var ing = ds_list_find_value(list_ingredient, i); //get ingr 
	
	switch ing //increase quantities
	{
		case "milk":
			ing_quant[0]++;
			
		break;
		
		case "sugar":
			ing_quant[1]++;
				
		break;
		
		case "alcohol":
			ing_quant[2]++;
		
		break;
		
		case "hotsauce":
			ing_quant[3]++;
		
		break;
		
		case "energy":
			ing_quant[4]++;
		
		break;
		
		case "pickle":
			ing_quant[5]++;
		
		break;
	
	}

}

//empty
if(mug_empty)
{
	mug_state = STATE_MUG.ANNOYED;

}
else //no ingr
if (ing_quant[0]==0) && (ing_quant[1]==0) && (ing_quant[2] == 0)
&& (ing_quant[3] == 0) && (ing_quant[4] == 0) && (ing_quant[5] == 0)
{
	mug_state = STATE_MUG.PISSED;

}

//milk and/or sugar
if ((ing_quant[0]>0) || (ing_quant[1]>0)) && (ing_quant[2] == 0)
&& (ing_quant[3] == 0) && (ing_quant[4] == 0) && (ing_quant[5] == 0)
{
	mug_state = STATE_MUG.PISSED;

}

//high alcohol
if(ing_quant[2]> ing_quant[3]) && (ing_quant[2]> ing_quant[4]) && (ing_quant[5] == 0)
{
	mug_state = STATE_MUG.DRUNK;

}

//high hotsause
if(ing_quant[3]> ing_quant[2]) && (ing_quant[3]> ing_quant[4]) && (ing_quant[5] == 0)
{
	mug_state = STATE_MUG.FIRE;

}


//high energy
if(ing_quant[4]> ing_quant[2]) && (ing_quant[4]> ing_quant[3]) && (ing_quant[5] == 0)
{
	mug_state = STATE_MUG.SPEEDY;

}

if(ing_quant[5] > 0)
{
	mug_state = STATE_MUG.WEIRD;

}


//determine coffee color
var c_brown = make_color_rgb(51, 18, 0); //base color

var color0 = merge_color(c_brown, c_white, ing_quant[0]/10);
var color1 = merge_color(color0, c_white, ing_quant[1]/20);
var color2 = merge_color(color1, c_white, ing_quant[2]/50);
var color3 = merge_color(color2, c_red, ing_quant[3]/5);
var color4 = merge_color(color3, c_blue, ing_quant[4]/5);
var color5 = merge_color(color4, c_green, ing_quant[5]/5);

//set right color
coffee_color = color5;


