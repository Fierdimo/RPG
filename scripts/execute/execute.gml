function execute(script_, id){
	var targets = detect_targets_by_shape()
	show_debug_message(targets)
		show_debug_message("run script:");
		
		show_debug_message(script_.data.cast_time)
		show_debug_message(script_.pending)
		if (script_.data.cast_time == STANDARD || script_.data.cast_time == MOVE) id.status = "";
}