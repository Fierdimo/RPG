function CheckActionKeys() constructor{
	
	actions= [];
	
	function add(key, skill){
		array_push(actions, {key: string_upper(key), skill: skill})
	}
	
	function scan (status){
		
		static last_key = "";
		
		if(keyboard_check_pressed(vk_escape)){		
			if(status != state.casting){
				global.doubleClick = false
				global.search_origin = false;
				global.found_origin = false;
				global.shape = SHAPE.none;
				global.cursor= cr_default;
				last_key = "";
				with(all) selected = false;
				return {escape: 1};
			}
		}
		
		var index = 0;
		repeat(array_length(actions)){					
			
			var action_key = keyboard_check_pressed(ord(actions[index].key));			
			
			if (action_key){
				
				if (action_key == last_key){					
					if ((status == state.waiting_for_target or status == state.waiting_for_target + state.casting) && global.in_range){
						last_key = "";
						return {escape: 2};
					}
				}
				last_key = action_key;
				
				var pending = [];				
				var command = 0;	
				var _skill = actions[index].skill;							
				var myBuffos = _skill.effect
				
				#region //interrupt if is casting standar or move actions
					if((_skill.data.cast_time == movement.standard || _skill.data.cast_time == movement.move) && status == state.casting){
						show_debug_message("ERROR: can't cast while casting standard or move action")
						return  {pushed: false, escape: 0};
					}
				#endregion //========================================
				
				global.shape = SHAPE.none
				repeat(array_length(myBuffos)){
					if(variable_struct_exists(myBuffos[command], "time")) 
						myBuffos[command].time.increase = myBuffos[command].time.fixed;					
;					if(myBuffos[command].type == bonus.temporal ) 
						myBuffos[command].value.increase = myBuffos[command].value.fixed;
						
					array_push(pending, myBuffos[command++]);					
				}
				return { pushed: true, require_attack: _skill.require_attack, data: _skill.data, pending: pending, escape: 0};
			}		
			index++;
		}
		return {pushed: false, escape: 0};
	}	
	
}