function CheckActionKeys() constructor{
	
	actions= [];
	wait_delay = MAX_CAST_TIME;
	
	function add(key, skill){
		array_push(actions, {key: string_upper(key), skill: skill})
	}
	
	function scan (myBuffs){
		var index = 0;
		repeat(array_length(actions)){
			
			var action_key = keyboard_check(ord(actions[index].key));
			
			if (action_key){
				switch (actions[index].skill.type){
					case STANDARD:
						if(global.timerStandardAction <= 0) {
							with(oGame.mainPlayer) global.timerStandardAction = max(0, MAX_CAST_TIME - my.stat().standardActionSpeed);
						} else continue;
						break;
					case MOVE:
						if(global.timerMoveAction <= 0){
							with(oGame.mainPlayer) global.timerMoveAction = max(0, MAX_CAST_TIME-my.stat().moveActionSpeed);
						} else continue;
						break;
					case SWIFT:
						if(global.timerSwiftAction <= 0) {
							with(oGame.mainPlayer) global.timerSwiftAction = max(0, MAX_CAST_TIME-my.stat().swiftActionSpeed);
						} else continue;
						break;
					case COUNTER:
						if(global.timerCounterAction <= 0) {
							with(oGame.mainPlayer) global.timerCounterAction = max(0, MAX_CAST_TIME-my.stat().counterActionSpeed);
						} else continue;
						break;
					default:
						show_debug_message("! WARNING -- No action -- !");
						continue;
				}
				
				//show_debug_message("pressed: "+ actions[index].key+" for "+string(actions[index].skill.name));
				
				var command = 0;
				
				var myBuffos = actions[index].skill.effect
			
				
				repeat(array_length(myBuffos)){
					if(variable_struct_exists(myBuffos[command], "time")) 
						myBuffos[command].time.increase = myBuffos[command].time.fixed;					
;					if(myBuffos[command].stat == HIT_POINTS && myBuffos[command].type == TEMP ) 
						myBuffos[command].value.increase = myBuffos[command].value.fixed;
						
					array_push(myBuffs, myBuffos[command++]);					
				}
				return true;
			}		
			index++;
		}
	}	
	return false;
}