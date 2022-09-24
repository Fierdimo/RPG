
	randomize();
	
	//	Time factors
	actionTimer = get_timer();	
		
	//create actors
	Actors = createActors(actor_list());
	mainPlayer = Actors[0];			
	target = mainPlayer.myArrayPosition;
	doubleClick = false;
	
	// GUI CONTROLLER
	//instance_create_layer(0, 0, "Instances", oGUI_CONTROLLER)
	
	selected = false; //IT NEVER MUST CHANGE

		
		

