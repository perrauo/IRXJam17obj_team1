/// @description receiving


//check if receiving 
//we are not holding the mug and an ingr is on top
if(place_meeting(x,y, obj_ingredient))
receiving = true;
else
receiving = false


//when receiving an ingredient
if(receiving) 
{
	var ingredient = instance_place(x,y, obj_ingredient);
	
	if(mouse_check_button_released(mb_any))//add ingre when mouse butt releas
	{
		ds_list_add(list_ingredient, ingredient.name);
		instance_destroy(ingredient);
	
	}

}


