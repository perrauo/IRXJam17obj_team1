//set interactable to true
boss_state = STATE_BOSS.OVER;


//pauses the timeline until next interaction
timeline_running = false;

instance_create_depth(x,room_height-100, depth_foreground, obj_mug);