///@description handles movement and handles moving to contact pos with the tile
///@param tilemap_id
///@param tile_size
///@param velocity (array containing hor and ver vel)


var tilemap_id = argument0;
var tile_size = argument1;
var velocity = argument2;

// horizontal collision

x+= velocity[vec2_x];

//right vel
if(velocity[vec2_x] > 0) //vel is pos check to the right for tile
{
	//check top right and bottom right
	var tile_right = scr_tile_collide_at_points(tilemap_id, [bbox_right-1, bbox_top], [bbox_right-1, bbox_bottom-1]);
	if(tile_right)
	{
		x = bbox_right & ~(tile_size-1);
		//getting the offset and adjusting pos by the offset to make sure we're flush
		x -= bbox_right-x;
		velocity[@ vec2_x] = 0; //stop movement
	}
}
else //check to the left
{

	//check top left and bottom left
	var tile_left = scr_tile_collide_at_points(tilemap_id, [bbox_left, bbox_top], [bbox_left, bbox_bottom-1]);
	if(tile_left)
	{
		x = bbox_left & ~(tile_size-1);
		//getting the offset and adjusting pos by the offset to make sure we're flush
		x += tile_size +x- bbox_left;
		velocity[@ vec2_x] = 0; //stop movement
	}

}

//vertical collision

y+= velocity[vec2_y];


if(velocity[vec2_y] > 0) //vel is pos check to bottom for tile
{
	//bottom left and bottom right
	var tile_bottom = scr_tile_collide_at_points(tilemap_id, [bbox_left, bbox_bottom-1], [bbox_right-1, bbox_bottom-1]);
	if(tile_bottom)
	{
		y = bbox_bottom & ~(tile_size-1);
		//getting the offset and adjusting pos by the offset to make sure we're flush
		y -= bbox_bottom-y;
		velocity[@ vec2_y] = 0; //stop movement
	}
}
else //check to the left
{

	//check top left and bottom left
	var tile_top = scr_tile_collide_at_points(tilemap_id, [bbox_left, bbox_top], [bbox_right-1, bbox_top]);
	if(tile_top)
	{
		y = bbox_top & ~(tile_size-1);
		//getting the offset and adjusting pos by the offset to make sure we're flush
		y += tile_size +y-bbox_top
		velocity[@ vec2_y] = 0; //stop movement
	}

}