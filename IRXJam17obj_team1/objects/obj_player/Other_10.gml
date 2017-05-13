/// @description movement logic
// You can write your code in this editor

var x_spd =  x_input * acc; 

//hor movement
//apply movement and clamp it
velocity[vec2_x] = clamp(velocity[vec2_x]+ x_spd, -max_velocity[vec2_x], max_velocity[vec2_x]);

if(x_spd = 0)// apply fric
{
	//apply a 20 percent fric to velocity until we reach 0;
	velocity[vec2_x] = lerp(velocity[vec2_x],0, .2);
}

//Gravity
velocity[vec2_y] = clamp(velocity[vec2_y]+grav, -max_velocity[vec2_y], max_velocity[vec2_y]);

//move and contact tiles
//tile size: 16
scr_move_and_contact_tile(tilemap_id_collision, 16, velocity);


//jumping 
//were are checking one pixel below the player
grounded = scr_tile_collide_at_points(tilemap_id_collision , [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom])


if(grounded)
{
	if(keyboard_check_pressed(key_jmp))
	{
		velocity[vec2_y] = -jmp_spd;
	}

}
else //control jmp height
{
	//min jump height and released
	if(keyboard_check_released(key_jmp) && (velocity[vec2_y] <= -(jmp_spd/3)) )
	{
		velocity[vec2_y] = -(jmp_spd/3); //if released y vel as min jmp spd;
	}

}