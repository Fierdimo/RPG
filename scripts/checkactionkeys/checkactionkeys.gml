function CheckActionKeys() constructor{
	
	actions= [];
	wait_delay = MAX_CAST_TIME;
	
	function add(key, skill){
		array_push(actions, {key: string_upper(key), skill: skill})
	}
	
	function scan (){
		var index = 0;
		repeat(array_length(actions)){
			
			var action_key = keyboard_check(ord(actions[index].key));
			var _skill = actions[index].skill
			
			if (action_key){
				var pending = [];				
				var command = 0;				
				var myBuffos = _skill.effect
				
				repeat(array_length(myBuffos)){
					if(variable_struct_exists(myBuffos[command], "time")) 
						myBuffos[command].time.increase = myBuffos[command].time.fixed;					
;					if(myBuffos[command].type == TEMP ) 
						myBuffos[command].value.increase = myBuffos[command].value.fixed;
						
					array_push(pending, myBuffos[command++]);					
				}
				return { pushed: true, require_attack: _skill.require_attack, data: _skill.data, pending: pending};
			}		
			index++;
		}
		return {pushed: false};
	}	
	
}