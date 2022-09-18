
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
	targetDistance = 0;
	touch = false;
	TRIANGLE = false;
	doubleClick = false;
	clickTime = current_time;
	search_origin = false;
	found_origin = false;
	status = "";
	cursor = cr_cross;
	origin_x = mouse_x;//Center x
	origin_y = mouse_y;//Center y
	maxDistance=0;
	angle = 0
	origin_in_main_player = false;
	attack_from_front= false;
	
	
	show_debug_overlay(true);
	
	
	

	

