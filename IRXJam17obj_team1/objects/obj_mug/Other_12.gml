/// @description receiving ingredients
// You can write your code in this editor

var receiving = false;

//check if receiving 
//we are not holding the mug and an ingr is on top
if(place_meeting(x,y, obj_ingredient)) && (obj_cursor.selected_id != self) && (!mug_empty)
receiving = true;
else
receiving = false



//when receiving an ingredient
if(receiving) 
{
	scale = lerp(scale, receiving_size, .2);
	var ingredient = instance_place(x,y, obj_ingredient);
	
	if(mouse_check_button_released(mb_any))//add ingre when mouse butt releas
	{
		ds_list_add(list_ingredient, ingredient.name);
	
	}

}
else 
scale = lerp(scale, 1, .2);




//////print ingr
//var i = 0;
//var s = "";
//repeat(ds_list_size(list_ingredient))
//{
//	s += ds_list_find_value(list_ingredient, i)+", "
	
//	i++
//}

//show_debug_message(s);
	

