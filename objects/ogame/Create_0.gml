
	randomize();
	
	//Start variables	
	global.paused_game = false;
	global.pulse = 0.0;
	
	//	Time factors
	actionTimer = get_timer();	
	global.timerStandardAction = 0;
	global.timerMoveAction = 0;
	global.timerSwiftAction = 0;
	global.timerCounterAction = 0;
		
	//create actors
	Actors = createActors(actor_list());
	mainPlayer = Actors[0];			
	target = mainPlayer.myArrayPosition;
	doubleClick = false;
	
	//=== DRAWING EFFECTS VARIABLES ===
	clickTime = current_time;
	search_origin = false;
	found_origin = false;	
	cursor = cr_default;
	origin_x = mouse_x;
	origin_y = mouse_y;
	
	angle = 0
	
	// test 
	origin_in_main_player = false;
	attack_from_front= false;
	maxDistance=0;
	TRIANGLE = false;
	
	status = "";
	touch = false;
	
	show_debug_overlay(true);
	
	
	

	

