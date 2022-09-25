
//if (global.search_origin && global.in_range){
		
//	global.origin_x = mouse_x;
//	global.origin_y = mouse_y
//	global.found_origin = true;
//}

get_target_from_cursor();

doubleClick = checkDoubleClick(doubleClick)

if(doubleClick && global.in_range){
	doubleClick = false;
	with(mainPlayer){
		if (status == state.waiting_for_target || status == state.waiting_for_target + state.casting)
			status = state.trying_script;
	}
}

