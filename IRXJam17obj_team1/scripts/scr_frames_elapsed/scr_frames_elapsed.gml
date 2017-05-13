/// @description frames elapsed since first invocation of the script
/// @param event_time


var miliseconds = (current_time - argument0);
var seconds = miliseconds * (0.001)
var frames_elapsed = (seconds/60)*delta_time; //actual game frames

return frames_elapsed;