/// @description state machine
// You can write your code in this editor


switch interaction_state
{
	case STATE_INTERACTION.NOT:
	instance_deactivate_object(obj_icon_door);
	
	break;
	
	
	case STATE_INTERACTION.INTERACTABLE:
	instance_deactivate_object(obj_icon_door);
		
		if(keyboard_check_pressed(vk_space))
		{
		interaction_state = STATE_INTERACTION.NOT;
		timeline_running = true;	
		
		curr_text = scr_skip_lines(next_text, line_size);
		curr_char_index = 0;
	
		}

	
	break;
	
	case STATE_INTERACTION.OVER:
	instance_activate_object(obj_icon_door);
	
	break;
	
}