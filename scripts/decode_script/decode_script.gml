function decode_script(execution_function, cast_time){
	if (status = "RUN" || status == "CASTING + RUN"){
			
		if status == "CASTING + RUN"
			status = "CASTING";
		else{
			if (pendingAction.data.cast_time == STANDARD || pendingAction.data.cast_time == MOVE) status = "CASTING";
			else status = ""
		}
				
		var timer = time_source_create(time_source_game, cast_time, time_source_units_seconds, execution_function, [pendingAction, id]);
		time_source_start(timer);
			
	}
}