function execute(script_, _id){
	
	#region  GET TAGET(S)
		if variable_struct_exists(script_.data, "area")
			var targets = detect_targets_by_shape(script_.data);
		else{
			targets = get_targets(script_.data)
		}
		#endregion
		
		if (array_length(targets) > 0) {
			
			#region Target limit=10000
			var max_targets;
			with (_id){
				if (variable_instance_exists(script_.data, "targets")) max_targets = extractByStat(script_.data.targets);
				else max_targets = 10000;
			}
			#endregion
			
			for(var pointed = 0; pointed < min(array_length(targets), max_targets); pointed++){
				var multiplier = 1;
				with(targets[pointed]){
					// code for selected target ========
					#region attack CA//saves
					if (variable_instance_exists(script_, "require_attack")){
							switch(is_sucess_attack(targets[pointed], script_.require_attack, oGame.mainPlayer) ){
								case attack.fail:
									if  (script_.data.save == take_effect.half) multiplier = 0.5;
									else continue;
								case attack.critical:
									if  (script_.data.save == take_effect.half) multiplier = 2; // need weapon multiplier
									break;
								default:									
							}									
					}
					#endregion
					
					for(var index = 0; index < array_length(script_.pending); index++){
						
							//code for each instruction
							var deployment = script_.pending[index];												
							show_debug_message(deployment)											
							
								//if instruction_required_Attack then 
								//		if not is_sucess_attack then 
								
								#region change vitals or put Buff on-air
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
								#endregion
																
							//====================================================
								changed = true;															
					}		
				}
				global.in_range = false;
			}			
		}
		
		#region SHOW MSG IF NO FOUND TARGETS
		else{
			show_debug_message(" ------------ NO EXECUTION: NO TARGETS -----------")
		}
		#endregion
		
		//clear state
		if (script_.data.cast_time == movement.standard || script_.data.cast_time == movement.move) _id.status = state.bored;
}