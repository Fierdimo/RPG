function execute(script_, _id){
	
	#region // GET TAGET(S)
		if variable_struct_exists(script_.data, "area")
			var targets = detect_targets_by_shape(script_.data);
		else{
			targets = get_targets(script_.data)
		}
		#endregion
		
		if (array_length(targets) > 0) {
			
			var max_targets;
			with (_id){
			if (variable_instance_exists(script_.data, "targets")) max_targets = extractByStat(script_.data.targets);
			else max_targets = 10000;
			}
			
			for(var pointed = 0; pointed < min(array_length(targets), max_targets); pointed++){
				var multiplier = 1;
				with(targets[pointed]){
					
					// code for selected target ========
					if (script_.require_attack){
						//		if not is_sucess_attack then 
						//			
					}
					
					if  (script_.data.save == take_effect.half) multiplier = 0.5
					
					for(var index = 0; index < array_length(script_.pending); index++){
						
							//code for each instruction
							var deployment = script_.pending[index];					
							
							show_debug_message(deployment)											
							
								//if instruction_required_Attack then 
								//		if not is_sucess_attack then 
								
								switch(deployment.target ) {
									case actor_base.damage:
										myHP = my.change_vital(myHP, do_damage(deployment, id, multiplier), bonus.base)										
										break;
									case actor_base.heal:
										myHP =(my.change_vital(myHP, floor(extractByStat(deployment.value)* multiplier), bonus.base) );
										break;
									case actor_base.temporal_hitpoints:
										array_push(myBuffs, deployment)
										myTempHP = floor(extractByStat(deployment.value)* multiplier);
										break;
									default:
										array_push(myBuffs, deployment)
								}
								
								
							show_debug_message(my.stat().HP)
							show_debug_message(myHP)
							show_debug_message(myTempHP)
								
							//====================================================
								changed = true;
															
					}		
				}
				global.in_range = false;
			}			
		}
		
		#region //SHOW MSG NO TARGETS
		else{
			show_debug_message(" ------------ NO EXECUTION: NO TARGETS -----------")
		}
		#endregion
		
		if (script_.data.cast_time == movement.standard || script_.data.cast_time == movement.move) _id.status = state.bored;
}