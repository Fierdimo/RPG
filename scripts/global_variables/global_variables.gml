
	//Start variables	
	global.paused_game = false;
	global.pulse = 0.0;
	global.buff_timer = get_timer();
	
	global.timerStandardAction = 0;
	global.timerMoveAction = 0;
	global.timerSwiftAction = 0;
	global.timerCounterAction = 0;
	
	global.actionExecution = noone;
	
		
	//=== DRAWING EFFECTS VARIABLES ===
	global.clickTime = current_time;
	global.search_origin = false;
	global.found_origin = false;	
	global.cursor = cr_default;
	global.origin_x = 0;
	global.origin_y = 0;	 
	global.angle = 0;
	global.area_spread = 0;
	global.shape = SHAPE.none;
	global.in_range = true;