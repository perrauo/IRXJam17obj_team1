/// @description draw
// You can write your code in this editor



//x1	The x coordinate of the left side of the rectangle to check.
//y1	The y coordinate of the top side of the rectangle to check.
//x2	The x coordinate of the right side of the rectangle to check.
//y2	The y coordinate of the bottom side of the rectangle to check.


w = c_white;
r = c_red;
g = c_green;


//draw debug
if(debug_enabled)
{
draw_set_alpha(.5);
draw_rectangle_color(0, counter_top, room_width, counter_bottom, r,r,r,r,false);
draw_rectangle_color(bbox_left, y-10, bbox_right, bbox_bottom, g,g,g,g,false);
draw_set_alpha(1);
}


//draw sprite
draw_sprite_ext(sprite_index,image_index,x,y,scale,scale,0,w,1);