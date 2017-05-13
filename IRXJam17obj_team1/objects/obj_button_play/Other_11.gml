/// @description button clicked
// You can write your code in this editor


//if clicked
if(mouse_check_button_pressed(mb_any))
{
	pulse =  0; //reset pulse val to pulse again
	pulse_size = .5;

	//deactivate everything
	instance_deactivate_all(false);
		
	//instance create leaderboard
	room_goto(rm_1);
}
