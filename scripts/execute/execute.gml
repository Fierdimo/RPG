function execute(script_, _id){
	
	#region // GET TAGET(S)
		if variable_struct_exists(script_.data, "area")
			var targets = detect_targets_by_shape(script_.data);
		else{
			targets = get_targets(script_.data)
		}
		#endregion
		
		if (array_length(targets)) {
			
			show_debug_message(targets)
			show_debug_message(script_.pending)
			
			for(var pointed = 0; pointed < array_length(targets); pointed++){
				for(var index = 0; index < array_length(script_.pending); index++){
					
					var deployment = script_.pending[index];					
					
						with(targets[pointed]){
							// code for selected target ========
					
							myHP = my.change_vital(myHP, -10, bonus.base)
					
							//show_debug_message(my.stat().HP)
							//show_debug_message(myHP)
							show_debug_message("==============")
					
							//===================================
							changed = true;
							global.in_range = false
						}	
					
				}
			}			
		}
		
		#region //SHOW MSG NO TARGETS
		else{
			show_debug_message(" ------------ NO EXECUTION: NO TARGETS -----------")
		}
		#endregion
		
		if (script_.data.cast_time == movement.standard || script_.data.cast_time == movement.move) _id.status = state.bored;
}