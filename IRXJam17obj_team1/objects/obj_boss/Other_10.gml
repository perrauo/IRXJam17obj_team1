/// @description state machine boss
// You can write your code in this editor


switch boss_state
{
	case STATE_BOSS.FREE:
	instance_activate_object(obj_icon_door);
	
	sprite_index = spr_boss_idle; //set correct sprite
	
	//activate receive mug event
	event_user(1);
	
	break;
	
	case STATE_BOSS.TALKING:
	instance_deactivate_object(obj_icon_door);
	
	if(!audio_is_playing(snd_talk))
	{
	audio_sound_pitch(snd_talk, 2);
	audio_play_sound(snd_talk, 1, false);
	}
	
	sprite_index = spr_talking;  //set correct sprite
	
	break;
		
	
	case STATE_BOSS.INTERACTABLE:
	instance_deactivate_object(obj_icon_door);
	sprite_index = spr_idle; //set correct sprite
		
		if(keyboard_check_pressed(vk_space))
		{
		//reset timer
		timer_text = 0;
		timeline_speed = 1;
		
		
		boss_state = STATE_BOSS.TALKING;
		timeline_running = true;	
		
		curr_text = scr_skip_lines(next_text, line_size);
		curr_char_index = 0;
	
		}


	break;
	
	case STATE_BOSS.TOCLOSE:
	instance_deactivate_object(obj_icon_door);
	sprite_index = spr_idle; //set correct sprite
		
		if(keyboard_check_pressed(vk_space))
		{
		
		if(global.cups_count > 7)
		{
			game_end(); //end the game
		
		}
		
		//reset timer
		timer_text = 0;
		timeline_speed = 1;
		
		
		boss_state = STATE_BOSS.OVER;
		
		
		instance_create_depth(x,room_height-100, depth_foreground, obj_mug);	
		}
	
	break;
	
		
	case STATE_BOSS.OVER:
	sprite_index = spr_boss_idle; //set correct sprite
	
	instance_activate_object(obj_icon_door);
	
	break;
	
}