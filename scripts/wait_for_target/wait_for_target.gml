function wait_for_target(){
	if (status == state.waiting_for_target || status == state.waiting_for_target + state.casting){
//===========WAITING FOR ORIGIN POINT ==========================
		global.search_origin = true;
		global.cursor = cr_cross;
				
		if (!global.found_origin) global.in_range = get_range(pendingAction.data)
				
		if (pendingAction.data.origin != ORIGIN.TARGET ){ 
			global.origin_x = x;
			global.origin_y = y;
			global.found_origin = true;
			global.in_range = true;
		}
//================ IF EXIST ORIGIN POINT ========================		
		if (global.found_origin) {	
			
			global.search_origin = false;
			global.cursor = cr_size_all;
					
			if variable_struct_exists(pendingAction.data, "area"){
				global.shape = pendingAction.data.area.shape;
				global.area_spread = (pendingAction.data.area.spread/ 3.281) *10; //transform to meters
			}
			
			//   Defining angle =========================
			if (pendingAction.data.origin == ORIGIN.TARGET || pendingAction.data.origin == ORIGIN.SELF ){
				global.angle = (point_direction(global.origin_x, global.origin_y, mouse_x, mouse_y));}
			else
				global.angle = ((direction * 90))+pendingAction.data.origin;
			
			
		}
	}
}