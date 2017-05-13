/// @description state machine
// You can write your code in this editor


//ANNOYED: empty
//PISSED: milk, sugar (only)
//DRUNK: alcohol
//FIRE: hotsauce
//WEIRD: alcohol, hotsauce, pickles, energy
//SPEEDY: energy


//state machine//
switch mug_state
{
	case STATE_MUG.ANNOYED:
	sprite_index = spr_mug_empty;
	deb_text = "annoy";
	
	
	break
	
	
	case STATE_MUG.PISSED:
	sprite_index = spr_mug_full;
	deb_text = "piss";
	
	
	break
	
	case STATE_MUG.DRUNK:
	sprite_index = spr_mug_full;
	deb_text = "drun";
	
	break
	
	
	case STATE_MUG.FIRE:
	sprite_index = spr_mug_full;
	deb_text = "fire";
	
	break
	
	case STATE_MUG.WEIRD:
	sprite_index = spr_mug_full;
	deb_text = "weird";
	
	break
	
	case STATE_MUG.SPEEDY:
	sprite_index = spr_mug_full;
	deb_text = "speedy";
	
	break

}