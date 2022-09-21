function checkMainActor(actor){		
		
	with(mainPlayer){
		//show_debug_message(my.stat().strength)
	
		pendingAction = if_action_pushed(actionKeys.scan(status));
		wait_for_target();
		catch_script(execute, try_script());
		
		//TODO: generate Attack of opportunity when casting
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