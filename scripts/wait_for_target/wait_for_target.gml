function wait_for_target(){
	
	if (status == state.waiting_for_target || status == state.waiting_for_target + state.casting){
				
		global.cursor = cr_cross;
		
		var closest_enemy = get_targets(pendingAction.data); // from manually selected targets
		if (array_length(closest_enemy) > 0) global.in_range = get_range(pendingAction.data, closest_enemy[0] )
		else global.in_range = false;
		
		
//================ IF EXIST ORIGIN POINT FOR AREA DETECTION ========================		
		if ( variable_struct_exists(pendingAction.data, "area")) {	
			
			global.cursor = cr_size_all;
			
			global.in_range = get_range(pendingAction.data)
			
			
			global.origin_x = x;
			global.origin_y = y;
						
			global.shape = pendingAction.data.area.shape;
			global.area_spread = transform_size_to(size.meters, extractByStat(pendingAction.data.area.spread)+5);
			
			switch(pendingAction.data.origin){
				case ORIGIN.SELF:					
					global.angle = (point_direction( global.origin_x, global.origin_y, mouse_x, mouse_y, ));
					break;
				case ORIGIN.TARGET:
					global.origin_x= mouse_x;
					global.origin_y= mouse_y;
					global.angle = (point_direction( x, y, global.origin_x, global.origin_y, ));
					break;					
				default:
					global.angle = ((direction * 90))+pendingAction.data.origin;
			}
		}
	}
}