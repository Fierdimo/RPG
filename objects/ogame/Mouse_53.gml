if (search_origin){
	origin_x = mouse_x;//Center x
	origin_y = mouse_y;//Center y
	found_origin = true;
}

doubleClick = checkDoubleClick(doubleClick)
if(doubleClick){
	doubleClick = false;
	if (status == "WAIT" or status == "CASTING + WAIT")
	status = "EXECUTE"
}