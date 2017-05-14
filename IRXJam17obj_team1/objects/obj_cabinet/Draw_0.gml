/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(cabin_alpha);
draw_sprite(spr_cabinet,0, x,y);


//draw objects in the cupboard

//TODO ADD SHADOW IN CABINET
//todo add proper list size
w = c_white;

var xoffset = 32;
var yoffset = 64;
for(var i=0; i<6; i++)
{
	var ingr = ds_list_find_value(list_ingredient,i);
	
	switch ingr
	{
		case "milk":
		draw_sprite_ext(spr_milk,0,x+xoffset,y+yoffset, cabinet_item_scale, cabinet_item_scale,0,w,cabin_alpha);
		
		xoffset += 32;
		break;
		
		case "sugar":
		draw_sprite_ext(spr_sugar,0,x+xoffset,y+yoffset, cabinet_item_scale, cabinet_item_scale,0,w,cabin_alpha);
		
		xoffset += 32;
		break;
		
		case "alcohol":
		draw_sprite_ext(spr_alcohol,0,x+xoffset,y+yoffset, cabinet_item_scale, cabinet_item_scale,0,w,cabin_alpha);
		
		xoffset += 32;
		break;
		
		case "hotsauce":
		draw_sprite_ext(spr_hotsauce,0,x+xoffset,y+yoffset, cabinet_item_scale, cabinet_item_scale,0,w,cabin_alpha);
		
		xoffset += 32;
		break;
		
		case "energy":
		draw_sprite_ext(spr_energy_drink,0,x+xoffset,y+yoffset, cabinet_item_scale, cabinet_item_scale,0,w,cabin_alpha);
		
		xoffset += 32;
		break;
		
		case "pickle":
		draw_sprite_ext(spr_pickles,0,x+xoffset,y+yoffset, cabinet_item_scale, cabinet_item_scale,0,w,cabin_alpha);
		
		xoffset += 32;
		break;
		
		default:
		//do nothing
		break;
	
	}		
}



//x1	The x coordinate of the left side of the rectangle to check.
//y1	The y coordinate of the top side of the rectangle to check.
//x2	The x coordinate of the right side of the rectangle to check.
//y2	The y coordinate of the bottom side of the rectangle to check.

if(cabin_alpha)
{
draw_set_color(c_black);
draw_set_alpha(.5)
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom,false);
draw_set_alpha(1)
draw_set_color(noone);
}


////print ingr
//var i = 0;
//var s = "";
//repeat(ds_list_size(list_ingredient))
//{
//	s += ds_list_find_value(list_ingredient, i)+", "
	
//	i++
//}

////show_debug_message(s);
	

draw_set_alpha(1);




