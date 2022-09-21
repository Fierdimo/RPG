function if_action_pushed(action){
	static pending= [];
	if(action.pushed){
		pending = action
		if(action.require_attack){
				if (status == state.casting) status = state.casting + state.waiting_for_target;
				else status = state.waiting_for_target;
		}
		else {
				if (status == state.casting) status = state.casting + state.trying_script
				else status = state.trying_script;
		}
	}
	return pending
}