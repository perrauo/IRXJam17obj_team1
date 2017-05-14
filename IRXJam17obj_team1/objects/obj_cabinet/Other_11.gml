/// @description pick objects
// You can write your code in this editor


if (mouse_check_button_pressed(mb_any) && (!receiving))
{
	var list_size = ds_list_size(list_ingredient);
	var ingr = ds_list_find_value(list_ingredient, list_size-1); //picks las one
	
		
	switch ingr
	{
		case "milk":
		var ig = instance_create_depth(obj_cursor.x,obj_cursor.y, depth_foreground,obj_milk);
		
		with(obj_cursor)
		{
			lockon = true;
			selected_id = ig;
		}
		
		break;
		
		case "sugar":
		var ig= instance_create_depth(obj_cursor.x,obj_cursor.y, depth_foreground,obj_sugar);
		
		with(obj_cursor)
		{
			lockon = true;
			selected_id = ig;
		}
		
			
		break;
		
		case "alcohol":
		var ig= instance_create_depth(obj_cursor.x,obj_cursor.y, depth_foreground,obj_alcohol);
		
		with(obj_cursor)
		{
			lockon = true;
			selected_id = ig;
		}
		
		break;
		
		case "hotsauce":
		var ig= instance_create_depth(obj_cursor.x,obj_cursor.y, depth_foreground,obj_hotsauce);
		
		with(obj_cursor)
		{
			lockon = true;
			selected_id = ig;
		}
		
		break;
		
		case "energy":
		var ig= instance_create_depth(obj_cursor.x,obj_cursor.y, depth_foreground,obj_energy);
		
		with(obj_cursor)
		{
			lockon = true;
			selected_id = ig;
		}
		
		break;
			
		case "pickle":
		var ig= instance_create_depth(obj_cursor.x,obj_cursor.y, depth_foreground,obj_pickles);
		
		with(obj_cursor)
		{
			lockon = true;
			selected_id = ig;
		}
		
		break;
	
	}
	
	//remove from list
	ds_list_delete(list_ingredient, list_size-1);


}