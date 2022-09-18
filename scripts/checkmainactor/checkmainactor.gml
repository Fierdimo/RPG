function checkMainActor(actor){		
	
	window_set_cursor(cursor);

	with(mainPlayer){		
		var action = actionKeys.scan(status); //catch key action 
		pendingAction = if_action_pushed(action);
		wait_for_target(); // if <status> is WAIT
		var cast_time = try_script()
		decode_script(execute, cast_time);
		
		finishOldBuffs();
	}//============= END WITH ==========================
		

		



		
		
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
		
	
}