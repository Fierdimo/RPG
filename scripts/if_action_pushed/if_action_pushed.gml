function if_action_pushed(action){
	static pending= [];
	if(action.pushed){
		pending = action
		if(action.require_attack){
				if (status == "CASTING") status = "CASTING + WAIT";
				else status = "WAIT";
		}
		else {
				if (status == "CASTING") status = "CASTING + EXECUTE"
				else status = "EXECUTE";
		}
	}
	return pending
}