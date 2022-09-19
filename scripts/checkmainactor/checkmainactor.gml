function checkMainActor(actor){		
	
	window_set_cursor(global.cursor);

	with(mainPlayer){		
		var action = actionKeys.scan(status); //catch key action 
		pendingAction = if_action_pushed(action);
		
		var cast_time = try_script(wait_for_target())
		decode_script(execute, cast_time);
		
		finishOldBuffs();
	}
		

			
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
		
	
}