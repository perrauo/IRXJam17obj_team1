/// @description receiving mug
// You can write your code in this editor


var receiving = false;

//check if receiving 
//we are not holding the mug and an ingr is on top
if(place_meeting(x,y, obj_mug) && obj_mug.mug_empty)
receiving = true;
else
receiving = false


//when receiving an ingredient
if(receiving) 
{
	scale = lerp(scale, receiving_size, .2);
		
	if(mouse_check_button_released(mouse_button))//on relaease
	{
		obj_mug.mug_empty = false; //fill the cup with coffee
	
	}

}
else 
scale = lerp(scale, 1, .2);
