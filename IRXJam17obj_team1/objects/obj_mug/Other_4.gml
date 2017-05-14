/// @description clean up mug when entering kitchen

if(room_get_name(room) = "rm_kitchen")
{
list_ingredient = ds_list_create(); //list of ingredients
mug_empty = true; //if mug is empty
}

//make sure the mug is not filled by mystake
if(place_meeting(x,y,obj_coffee_maker))
{
	x = room_width -100;
	mug_empty = true;

}
