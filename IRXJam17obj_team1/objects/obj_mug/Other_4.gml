/// @description clean up mug when entering kitchen

if(room_get_name(room) = "rm_kitchen")
{
list_ingredient = ds_list_create(); //list of ingredients
mug_empty = true; //if mug is empty
}

