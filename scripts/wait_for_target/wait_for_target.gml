function wait_for_target(){	
	static count_actors = []
	if (status == "WAIT" || status == "CASTING + WAIT"){
		count_actors = [];
	
		global.shape = SHAPE.none;
		global.search_origin = true;
		global.cursor = cr_cross;
				
		if (!global.found_origin) global.in_range = get_range(pendingAction.data)
				
		if (pendingAction.data.origin != ORIGIN.TARGET ){ 
			global.origin_x = x;
			global.origin_y = y;
			global.found_origin = true;
			global.in_range = true;
		}
//================ FOUND ========================		
		if (global.found_origin) {			
			global.search_origin = false;
			global.cursor = cr_size_all;
					
			if variable_struct_exists(pendingAction.data, "area") global.shape = pendingAction.data.area.shape;
			global.area_spread = (pendingAction.data.area.spread/ 3.281) *10; //transform to meters
			
			//   Defining angle =========================
			switch(pendingAction.data.origin){
				case ORIGIN.FRONT:
					global.angle = ((direction * 90)/2)-22.5;
					break;
				default:
					global.angle = (point_direction(global.origin_x, global.origin_y, mouse_x, mouse_y)/2)-22.5;
			}
			
			//	Detecting by shape ======================
			switch(global.shape){
				case SHAPE.CONE:
					for(var i = global.angle; i <= 45+global.angle; ++i;){
						var enemy = (collision_line(global.origin_x, global.origin_y, global.origin_x + lengthdir_x(global.area_spread, 90 * i / 45), global.origin_y + lengthdir_y(global.area_spread, 90 * i / 45),all, true, false))
							if(enemy != -4 && enemy != id){
								if(!is_in_array(count_actors, enemy)){
										array_push(count_actors, enemy)
								}
							}
					}
					break;
							
					default:
						break;				
			}
				
				
				
		}						
		
	}
	return count_actors
}