function execute(script_, _id){
	
	#region  Get [targets]
		var targets = []
		if variable_struct_exists(script_.data, "area")
			targets = detect_targets_by_shape(script_.data);
		else{
			targets = get_targets(script_.data)
		}
		#endregion
		
		if (array_length(targets) > 0) {
			#region mainPlayer to target
				_id.direction = round(point_direction(_id.x, _id.y, targets[0].x, targets[0].y)/90);
			#endregion
			
			#region Target limit=10000
			var max_targets;
			with (_id){
				if (variable_instance_exists(script_.data, "targets")) max_targets = extractByStat(script_.data.targets);
				else max_targets = 10000;
			}
			#endregion
			
			#region Run for each target, until max targets in script
				for(var pointed = 0; pointed < min(array_length(targets), max_targets); pointed++){
					
					var multiplier = 1;
										
					with(targets[pointed]){
						// code for selected target ========
						#region attack CA || saves
						if (variable_instance_exists(script_, "require_attack")){
								switch(is_sucess_attack(targets[pointed], script_.require_attack, _id) ){
									case attack.fail:
										if  (script_.data.sucess == take_effect.half) multiplier = 0.5;
										else continue;
									case attack.critical:
										//define critical range by main weapon. (default x2)
										if (variable_struct_exists(_id.my.weapons.show()[0], "critical")) 
											multiplier = _id.my.weapons.show()[0].critical.multiplier;
										else
											multiplier = 2;
										break;
									default:									
								}									
						}
						#endregion
						#region run for each instruction object
						for(var index = 0; index < array_length(script_.pending); index++){
						
								var deployment = script_.pending[index];																					
							
									//if instruction_required_Attack then 
									//		if not is_sucess_attack then 
								
									#region change vitals or put Buff on-air
									switch(deployment.target ) {
										case actor_base.damage:
											myHP = my.change_vital(myHP, do_damage(deployment, _id, multiplier, ), bonus.base)		
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
						#endregion
					}
					global.in_range = false;
				}	
			#endregion
		}
		
		#region NO EXECUTION IF NO FOUND TARGETS
		else{
			show_debug_message(" ------------ NO EXECUTION: NO TARGETS -----------")
		}
		#endregion
		
		#region Clear state
		if (script_.data.cast_time == movement.standard || script_.data.cast_time == movement.move) _id.status = state.bored;
		#endregion
}