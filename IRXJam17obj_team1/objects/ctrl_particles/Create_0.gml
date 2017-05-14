/// @description Init
// You can write your code in this editor

//depth
depth = -10001;

//create part system
//we created a global var
global.ps_smoke = part_system_create();
var ps = global.ps_smoke;
part_system_depth(ps, -10000); //set depth of smoke


//initialize our global dust particles
global.pt_smoke1 = part_type_create(); //only one used
var pt = global.pt_smoke1 ;

gray = c_gray;

if(instance_exists(obj_mug))
part_type_color_mix(pt,c_gray, obj_mug.coffee_color);


part_type_gravity(pt,.03,90);//set alpha
part_type_alpha3(pt,.03,.2,.5);//set alpha
part_type_speed(pt,.1,2,0,.5);
part_type_direction(pt, 90, 90,0,0);
part_type_life(pt, 20,30);
part_type_sprite(pt,spr_pt_smoke,1,0,true);


//create emiter
global.em_smoke = part_emitter_create(global.ps_smoke);


