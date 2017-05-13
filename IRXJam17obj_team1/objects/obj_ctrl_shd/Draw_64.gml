/// @description Insert description here
// You can write your code in this editor


//shaders applied to main application_surface
//if(toggle_shd_...)
//shader_set(shd_...) e.g changes position of pixels
//...

//draw_surface_stretched(application_surface,0,0,view_get_wport(view_current),view_get_hport(view_current)); //draw application surface;

if(toggle_shd_transition_in)
shader_set(shd_transition_in)
draw_surface(surface_screen1,0,0); //draw screen overlay
//reset shaders so that they dot get applied elsewhere
shader_reset();

if(toggle_shd_transition_out)
shader_set(shd_transition_out)
draw_surface(surface_screen1,0,0); //draw screen overlay
//reset shaders so that they dot get applied elsewhere
shader_reset();

if(toggle_shd_approach_bord)
shader_set(shd_approach_bord)
draw_surface(surface_screen1,0,0); //draw screen overlay
//reset shaders so that they dot get applied elsewhere
shader_reset();



