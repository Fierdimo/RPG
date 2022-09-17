function checkMainActor(actor){
	
	var action;
	
	with(mainPlayer){ action = actionKeys.scan();}
		
		if(action.pushed){	
			mainPlayer.pendingAction = action
			if(action.require_attack){
				status = "WAIT";
				//origin_in_main_player= true;
				attack_from_front= true;
				}
			else status = "EXECUTE";
		}
		
		if (status == "WAIT"){			
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
				show_debug_message(angle)
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
				show_debug_message(count_actors)
			}			
		}
		
		if (status == "EXECUTE") {
			
			window_set_cursor(cr_default)
			TRIANGLE = false;
			status = "";
			found_origin = false;
			search_origin = false;
			origin_in_main_player = false
			
			
			with(mainPlayer){
				var not_pass = false;
				switch (pendingAction.data.cast_time){
						case STANDARD:
							if(global.timerStandardAction <= 0) {
								with(oGame.mainPlayer) global.timerStandardAction = max(0, MAX_CAST_TIME - my.stat().standardActionSpeed);
							} else not_pass = true;
							break;
						case MOVE:
							if(global.timerMoveAction <= 0){
								with(oGame.mainPlayer) global.timerMoveAction = max(0, (MAX_CAST_TIME-my.stat().moveActionSpeed)/2);
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
							show_debug_message("! WARNING -- No action -- !");
							not_pass = true;
							return;
					}				
				if (not_pass){
					myPendigBuffs = [];
					return;
				}
				show_debug_message(pendingAction.data.cast_time)
				show_debug_message("run script");
				show_debug_message(pendingAction.pending)
			}
		}
		
		/*	if(action.pushed){	
			return;
			
			var skill_ = processSkillData(action.data)
			if !skill_.approved return;
			
			with(skill_.target) checkTmp(); //Delete redundant temporal hitpoints
			
			if(action.require_attack) 
				if successfulAttack(action.data)
					 if !changeHitPoints(action.data.dmg_factor) return;
			
	//=============================================================================	
			with(skill_.target){
				my = create_player(db);
				reBuffActor();
			}
		}*/
		//with ALL ??
		with(mainPlayer) finishOldBuffs();
	
}