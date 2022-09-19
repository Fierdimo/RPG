
if (global.search_origin && global.in_range){

	global.origin_x = mouse_x;
	global.origin_y = mouse_y
	global.found_origin = true;
}

doubleClick = checkDoubleClick(doubleClick)
if(doubleClick && global.in_range){
	doubleClick = false;
	if (mainPlayer.status == "WAIT" or mainPlayer.status == "CASTING + WAIT")
		mainPlayer.status = "EXECUTE"
}