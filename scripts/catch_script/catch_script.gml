function catch_script( cast_time){
	if (status = state.running_script || status == state.running_script + state.casting){
			
		if status == state.running_script + state.casting{
			execute(pendingAction, id);
			status = state.casting
		}
		else{
			if (pendingAction.data.cast_time == movement.standard || pendingAction.data.cast_time == movement.move) {
				status = state.casting;
				global.actionExecution = {
					script_: pendingAction,
					_id: id
					};
				}
		}			
	}
	show_debug_message(global.timerMoveAction -((MAX_CAST_TIME-my.stat().moveActionSpeed)/2))
	show_debug_message(global.timerMoveAction)
	
	if(global.actionExecution){
		switch (global.actionExecution.script_.data.cast_time){
			case movement.standard:
				if(((global.timerStandardAction)-(MAX_CAST_TIME-my.stat().standardActionSpeed)/2) <= 0){
					execute(global.actionExecution.script_, global.actionExecution._id);
					global.actionExecution = noone;
				}
				
				break;
			case movement.move:
				if(((global.timerMoveAction)-(MAX_CAST_TIME-my.stat().moveActionSpeed)/4) <= 0){
					execute(global.actionExecution.script_, global.actionExecution._id)
					global.actionExecution = noone;
				}
				break;
		}
	}
}