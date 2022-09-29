function checkMainActor(actor){		
		
	with(mainPlayer){
		
		pendingAction = if_action_pushed(actionKeys.scan(status));
		wait_for_target();
		catch_script(try_script());
		
		//TODO: generate Attack of opportunity when casting
	}	
	manageBuffs()	
}