function execute(script_, _id){
	
		if variable_struct_exists(script_.data, "area")
			var targets = detect_targets_by_shape();
		else{
			var targets = []
			with(all){
				if (selected && get_range(script_.data, id)) array_push(targets, id);
				selected = false;
			}
		}
		if (array_length(targets)) {
			show_debug_message(targets)
			show_debug_message(script_.pending)
			
		}else{
			show_debug_message(" ------------ ALERT: NO TARGETS -----------")
		}
		if (script_.data.cast_time == movement.standard || script_.data.cast_time == movement.move) _id.status = state.bored;
}