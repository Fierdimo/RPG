function try_script(){

	var cast_time = 0;
	if (status == state.trying_script|| status == state.trying_script + state.casting) {
		
		 // clear global variables				
			//global.found_origin = false;
			//global.search_origin = false;
			global.cursor = cr_default;

		var not_pass = false;
		
		if (status == state.trying_script) status = state.bored
		else status = state.casting
	
		switch (pendingAction.data.cast_time){
			case movement.standard:
				if(global.timerStandardAction <= 0) {
						global.timerStandardAction = max(0, MAX_CAST_TIME - my.stat().standardActionSpeed);
						cast_time = global.timerStandardAction/2;
				} else not_pass = true;
				break;
			case movement.move:
				if(global.timerMoveAction <= 0){
					global.timerMoveAction = max(0, (MAX_CAST_TIME-my.stat().moveActionSpeed)/2);
					cast_time = global.timerMoveAction;
				} else not_pass = true;
				break;
			case movement.swift:
				if(global.timerSwiftAction <= 0) {
					global.timerSwiftAction = max(0, MAX_CAST_TIME-my.stat().swiftActionSpeed);
				} else not_pass = true;
				break;
			case movement.inmediate:
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
			global.shape = SHAPE.none
			return;
		}			
			
		if status == state.casting
				status = state.casting + state.running_script
		else status = state.running_script;
	}
	return cast_time;
}