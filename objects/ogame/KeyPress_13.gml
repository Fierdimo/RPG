with(mainPlayer){
	if ((status == "WAIT" or status == "CASTING + WAIT")&& oGame.found_origin)
		status = "EXECUTE"
}