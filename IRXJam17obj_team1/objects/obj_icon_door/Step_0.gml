/// @description receiving mug
// You can write your code in this editor


var receiving = false;

//check if receiving 
//we are not holding the mug and an ingr is on top
if(place_meeting(x,y, obj_mug))
receiving = true;
else
receiving = false



//when receiving an ingredient
if(receiving) 
{
	scale = lerp(scale, receiving_size, .2);
		
	if(mouse_check_button_released(mb_any))//on relaease
	{
		
		if(room_get_name(room) == "rm_kitchen")
		room_goto(rm_office);
		
		if(room_get_name(room) == "rm_office")
		room_goto(rm_kitchen);
	
	}

}
else 
scale = lerp(scale, 1, .2);
