function checkMainActor(actor){	
	show_debug_message(status)
	

	with(mainPlayer){var action = actionKeys.scan(oGame.status);}
		
		if(action.pushed){	
			mainPlayer.pendingAction = action
			if(action.require_attack){
				if (status == "CASTING"){
					status = "CASTING + WAIT";
					show_debug_message(status)
				}
				else
					status = "WAIT";
				//origin_in_main_player= true;
				attack_from_front= true;
				}
			else {
				if status == "CASTING"
					status = "CASTING + EXECUTE"
				else
					status = "EXECUTE";
			}
		}
		
		if (status == "WAIT" || status == "CASTING + WAIT"){			
			search_origin = true;	
			window_set_cursor(cursor);
			
			if (origin_in_main_player){
				origin_x = mainPlayer.x;//Center x
				origin_y = mainPlayer.y;//Center y
				found_origin = true;
			}
			
			if(attack_from_front){
				origin_x = mainPlayer.x;//Center x
				origin_y = mainPlayer.y;//Center y
				found_origin = true;
			}
			
			
			if (found_origin) {
				
				search_origin = false;
				cursor = cr_size_all;
				
				// seleccion de area
				TRIANGLE = true;
				
				//variables de area
				maxDistance = (1.5) *10; //metros * 10
				angle = (point_direction(origin_x, origin_y, mouse_x, mouse_y)/2)-22.5;
				
				if(attack_from_front) angle = ((mainPlayer.direction * 90)/2)-22.5;
				//==========================
				
				var count_actors = []
				for(var i = angle; i <= 45+angle; ++i;){
					var enemy = (collision_line(origin_x, origin_y, origin_x + lengthdir_x(maxDistance, 90 * i / 45), origin_y + lengthdir_y(maxDistance, 90 * i / 45),all, true, false))
						if(enemy != -4 && enemy != mainPlayer){
							if(!is_in_array(count_actors, enemy.myName)){
									array_push(count_actors, enemy.myName)
							}
						}
				}
			}			
		}

		if (status == "EXECUTE" || status == "CASTING + EXECUTE") {
			show_debug_message(status)
			window_set_cursor(cr_default)
			TRIANGLE = false;
			found_origin = false;
			search_origin = false;
			origin_in_main_player = false;
			if (status == "EXECUTE") status = ""
			else status = "CASTING"
			
			var cast_time = 0;
			with(mainPlayer){
				var not_pass = false;
				
				switch (pendingAction.data.cast_time){
						case STANDARD:
							if(global.timerStandardAction <= 0) {
								with(oGame.mainPlayer) global.timerStandardAction = max(0, MAX_CAST_TIME - my.stat().standardActionSpeed);
								other.cast_time = global.timerStandardAction;
							} else not_pass = true;
							break;
						case MOVE:
							if(global.timerMoveAction <= 0){
								with(oGame.mainPlayer) global.timerMoveAction = max(0, (MAX_CAST_TIME-my.stat().moveActionSpeed)/2);
								other.cast_time = global.timerMoveAction;
							} else not_pass = true;
							break;
						case SWIFT:
							if(global.timerSwiftAction <= 0) {
								with(oGame.mainPlayer) global.timerSwiftAction = max(0, MAX_CAST_TIME-my.stat().swiftActionSpeed);
							} else not_pass = true;
							break;
						case COUNTER:
							if(global.timerCounterAction <= 0) {
								with(oGame.mainPlayer) global.timerCounterAction = max(0, MAX_CAST_TIME-my.stat().counterActionSpeed);
							} else not_pass = true;
							break;
						default:
							show_debug_message("! WARNING -- No action type-- !");
							not_pass = true;
							return;
					}				
				if (not_pass){					
					myPendigBuffs = [];
					return;
				}	
			}			
			
				if status == "CASTING"
						status = "CASTING + RUN"
				else status = "RUN";
				show_debug_message("accept script...")
		}
		
		//script execution
	var runScript = function(script_){
				show_debug_message("run script:");
				show_debug_message(script_.data.cast_time)
				show_debug_message(script_.pending)
				if (script_.data.cast_time == STANDARD || script_.data.cast_time == MOVE) status = "";
				show_debug_message(status)
		}
		
		if (status = "RUN" || status == "CASTING + RUN"){
			
				if status == "CASTING + RUN"
					status = "CASTING";
				else{
					if (mainPlayer.pendingAction.data.cast_time == STANDARD || mainPlayer.pendingAction.data.cast_time == MOVE) status = "CASTING";
					else status = ""
				}
				
				show_debug_message("Casting...")
				with(mainPlayer) var timer = time_source_create(time_source_game, other.cast_time, time_source_units_seconds, runScript, [pendingAction]);
				time_source_start(timer);
			
		}
		
		
	//		if(action.pushed){	
	//		return;
			
	//		var skill_ = processSkillData(action.data)
	//		if !skill_.approved return;
			
	//		with(skill_.target) checkTmp(); //Delete redundant temporal hitpoints
			
	//		if(action.require_attack) 
	//			if successfulAttack(action.data)
	//				 if !changeHitPoints(action.data.dmg_factor) return;
			
	////=============================================================================	
	//		with(skill_.target){
	//			my = create_player(db);
	//			reBuffActor();
	//		}
	//	}
		//with ALL ??
		with(mainPlayer) finishOldBuffs();
	
}