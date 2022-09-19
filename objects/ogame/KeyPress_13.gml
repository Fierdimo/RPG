with(mainPlayer){
	if ((status == "WAIT" or status == "CASTING + WAIT")&& global.found_origin)
		status = "EXECUTE"
}