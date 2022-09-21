function catch_script(execution_function, cast_time){
	if (status = state.running_script || status == state.running_script + state.casting){
			
		if status == state.running_script + state.casting
			status = state.casting
		else{
			if (pendingAction.data.cast_time == movement.standard || pendingAction.data.cast_time == movement.move) status = state.casting;
			else status = state.bored
		}
		var timer = time_source_create(time_source_game, cast_time, time_source_units_seconds, execution_function, [pendingAction, id]);
		time_source_start(timer);
			
	}
}