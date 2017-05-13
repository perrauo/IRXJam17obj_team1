/// @description init player
// You can write your code in this editor

velocity = [0,0]; //players velocity
grav = 1.5; 
jmp_spd = 28;
max_velocity = [8, 16];
acc = 2.1;

grounded = false;


//get tilemap id
var layer_id = layer_get_id("lay_tiles_collision");
tilemap_id_collision = layer_tilemap_get_id(layer_id);
