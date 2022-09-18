function try_script(){
	var cast_time = 0;
	
	if (status == "EXECUTE" || status == "CASTING + EXECUTE") {	
		with(other){ // clear variables				
			TRIANGLE = false;
			found_origin = false;
			search_origin = false;
			origin_in_main_player = false;
			cursor = cr_default;
		}
		
		var not_pass = false;
		
		if (status == "EXECUTE") status = ""
		else status = "CASTING"
	
		switch (pendingAction.data.cast_time){
			case STANDARD:
				if(global.timerStandardAction <= 0) {
						global.timerStandardAction = max(0, MAX_CAST_TIME - my.stat().standardActionSpeed);
					cast_time = global.timerStandardAction;
				} else not_pass = true;
				break;
			case MOVE:
				if(global.timerMoveAction <= 0){
					global.timerMoveAction = max(0, (MAX_CAST_TIME-my.stat().moveActionSpeed)/2);
					cast_time = global.timerMoveAction;
				} else not_pass = true;
				break;
			case SWIFT:
				if(global.timerSwiftAction <= 0) {
					global.timerSwiftAction = max(0, MAX_CAST_TIME-my.stat().swiftActionSpeed);
				} else not_pass = true;
				break;
			case COUNTER:
				if(global.timerCounterAction <= 0) {
					global.timerCounterAction = max(0, MAX_CAST_TIME-my.stat().counterActionSpeed);
				} else not_pass = true;
				break;
			default:
				show_debug_message("! WARNING -- No action type-- !");
				not_pass = true;
				return;
		}				
				
		if (not_pass){					
			myPendigBuffs = [];
			return;
		}			
			
		if status == "CASTING"
				status = "CASTING + RUN"
		else status = "RUN";
	}
	return cast_time;
}