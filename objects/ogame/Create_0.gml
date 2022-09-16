
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
	
	show_debug_overlay(true);
	
	
	

	

