/// @description textbox shake

	
if(instance_exists(ctrl_timelines))//if controller exists
{
			
		//state_machine
		switch ctrl_timelines.state
		{
			case STATE_MUG.ANNOYED:
			shake_amount = 0;
			
			audio_sound_gain(snd_talk, 1, 1);
			audio_sound_pitch(snd_talk, 2);
			
			break;
			
			case STATE_MUG.PISSED:
			shake_amount = 2;
			
			audio_sound_gain(snd_talk, 2, 2);
			audio_sound_pitch(snd_talk, 3);
			
			break;
			
			case STATE_MUG.DRUNK:
			shake_amount = 1.02;
			
			audio_sound_gain(snd_talk, .5, .5);
			audio_sound_pitch(snd_talk, .5);
			
			break;
			
			case STATE_MUG.FIRE:
			shake_amount = 2.2;
			
			audio_sound_gain(snd_talk, 4, 4);
			audio_sound_pitch(snd_talk, 4);
			
			break;
			
			case STATE_MUG.WEIRD:
			shake_amount = 1;
			
			audio_sound_gain(snd_talk, 4, 4);
			audio_sound_pitch(snd_talk, 4);
			
			break;
			
			case STATE_MUG.SPEEDY:
			shake_amount = 2;
			
			audio_sound_gain(snd_talk, 4, 4);
			audio_sound_pitch(snd_talk, 4);
			
			break;
			
			default:
			shake_amount= 0;
			
			break;
		
		}
		
	
}


if(global.cups_count > 7)
{
	shake_amount =2;

}

if(shake_amount != 0) //if shakeamount is greater than 0
{		
	if(timer2 >= lim2) //if timer fires
	{
		var shake = irandom_range(-shake_amount,shake_amount);
	
		tb_posx = clamp(tb_posx+shake, tb_posx-shake_amount, tb_posx+shake_amount);
		tb_posy = clamp(tb_posy+shake, tb_posy-shake_amount, tb_posy+shake_amount);
							
	}		
	
	
		if(timer3 >= lim3) //if reset to initial pos
		{
		tb_posx = init_tb_posx;
		tb_posy = init_tb_posy;
		}
		
}
		