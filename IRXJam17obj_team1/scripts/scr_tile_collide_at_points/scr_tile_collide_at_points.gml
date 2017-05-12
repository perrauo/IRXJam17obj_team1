///@description Check for a collision with a tile at a list of point
///@param tilemap_id
///@param point_arrays...

//checking collision with a tile at multiple points


var tilemap_id = argument[0]; //passing in an unknown amount of argument

//found
var found = false;

//loop through the points and check for a tile
for(var i= 1; i < argument_count; i++) //loop through remaining arguments (arg0 was done)
{
	//the remaining arguments are points
	var point = argument[i];
		
	found = found || tilemap_get_at_pixel(tilemap_id, point[vec2_x], point[vec2_y]); //retrieve point if found
		
}


return found; //return false or the point;