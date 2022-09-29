function execute(script_, _id){
	function roll_for_attack(script_, target, _id){
	#region attack CA || saves
		var multiplier = 1;
		if (script_.require_attack.target){
				switch(is_sucess_attack(target, script_.require_attack, _id) ){
					case attack.fail:
						if  (script_.data.sucess == take_effect.half) multiplier = 0.5;
						else return;
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
		return {approved: true, multiplier: multiplier }
		#endregion
	}
	
	#region  Get [targets]
		var targets = []
		if variable_struct_exists(script_.data, "area")
			targets = detect_targets_by_shape(script_.data);
		else{
			targets = get_targets(script_.data)
		}
		#endregion
		
		if (array_length(targets) > 0) {
			#region turn direction of sprite to target
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
						#region check for skill attack ===============================
						var next_step = roll_for_attack(script_, targets[pointed], _id);
						if (next_step.approved) multiplier = next_step.multiplier
						else continue;
						#endregion
						#region run for each instruction object
						for(var index = 0; index < script_.pending.len(); index++){
						
							var deployment = script_.pending.item(index);																					
							#region check for sub attack  =================================
							var next_step = roll_for_attack(script_, targets[pointed], _id);
							if (next_step.approved) multiplier = next_step.multiplier
							else continue;
							#endregion
							#region change vitals or put Buff on-air
							switch(deployment.target ) {
								case actor_base.damage:
									myHP = my.change_vital(myHP, do_damage(deployment, _id, multiplier, ), bonus.base)		
									break;
								case actor_base.heal:
									myHP =(my.change_vital(myHP, floor(extractByStat(deployment.value)* multiplier), bonus.base) );
									break;
								case actor_base.temporal_hitpoints:
									myBuffs.add(deployment)
									myTempHP = floor(extractByStat(deployment.value)* multiplier);
									break;
								default:
									myBuffs.add(deployment)
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