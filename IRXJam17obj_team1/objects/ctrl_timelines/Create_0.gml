/// @description Insert description here
// You can write your code in this editor
state = noone;

//default timeline
if(global.ctrl_timelines_first_init) //exit if first init
{
	with(obj_boss)
	{
	timeline_index = tl_boss_interaction0;
	timeline_running = true;
	
	spr_idle = spr_boss_idle;
	spr_talking = spr_boss_talking;
	}
	
global.ctrl_timelines_first_init = false;

exit;
}



if(global.cups_count > 6) //if applied more than 6 cups
{
	with(obj_boss)
	{	
	timeline_index = tl_boss_interaction7;
	timeline_running = true;
	
	//assign correct sprites
	spr_idle = spr_boss_pissed;
	spr_talking = spr_boss_pissed;
	}
}
else
{


//determine tl based on state of the mug
state = obj_mug.mug_state;

switch state
{
	case STATE_MUG.ANNOYED:
	with(obj_boss)
	{	
	timeline_index = choose(tl_boss_interaction1_A, tl_boss_interaction1_B, tl_boss_interaction1_C, tl_boss_interaction1_D, tl_boss_interaction1_E);
	timeline_running = true;
	
	//assign correct sprites
	spr_idle = spr_boss_idle;
	spr_talking = spr_boss_talking;
	}
	break;	
		
	case STATE_MUG.PISSED: //TODO ADD angry
	with(obj_boss)
	{	
	timeline_index = choose(tl_boss_interaction2_A, tl_boss_interaction2_B, tl_boss_interaction2_C, tl_boss_interaction2_D);
	timeline_running = true;
	
	//assign correct sprites
	spr_idle = spr_boss_pissed;
	spr_talking = spr_boss_pissed;
	}
	break;
	
		
	case STATE_MUG.DRUNK:
	with(obj_boss)
	{	
	timeline_index = choose(tl_boss_interaction3_A, tl_boss_interaction3_B, tl_boss_interaction3_C);
	timeline_running = true;
	
	//assign correct sprites
	spr_idle = spr_boss_drunk;
	spr_talking = spr_boss_drunk;
	}
	
	break;
	
	case STATE_MUG.FIRE:
	with(obj_boss)
	{	
	timeline_index = choose(tl_boss_interaction4_A, tl_boss_interaction4_B, tl_boss_interaction4_C);
	timeline_running = true;
	
	//assign correct sprites
	spr_idle = spr_boss_fire;
	spr_talking = spr_boss_fire;
	}
	break;
	
	case STATE_MUG.SPEEDY:
	with(obj_boss)
	{	
	timeline_index = choose(tl_boss_interaction5_A, tl_boss_interaction5_B, tl_boss_interaction5_C);
	timeline_running = true;
	
	spr_idle = spr_boss_speedy;
	spr_talking = spr_boss_speedy;
	}
	
	break;
	
	case STATE_MUG.WEIRD:
	with(obj_boss)
	{	
	timeline_index = choose(tl_boss_interaction6_A, tl_boss_interaction6_B, tl_boss_interaction6_C);
	timeline_running = true;
	
	spr_idle= spr_boss_idle;
	spr_talking = spr_boss_talking;
		
	}	
	break;

}
}//end else


//destroy mug
with(obj_mug)
{
	instance_destroy();
}