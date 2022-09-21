with(mainPlayer){
	if ((status == state.waiting_for_target or status == state.waiting_for_target + state.casting)&& global.found_origin)
		status = state.trying_script
}