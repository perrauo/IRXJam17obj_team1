/// @description movement logic

//get the inputs
x_input = (keyboard_check(vk_right) - keyboard_check(vk_left)); //-1 left, 0 both, noone, 1 right
key_jmp = vk_space;

//movement logic
event_user(0);