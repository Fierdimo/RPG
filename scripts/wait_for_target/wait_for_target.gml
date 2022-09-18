function wait_for_target(){
	
	if (status == "WAIT" || status == "CASTING + WAIT"){	
		with(other){
				search_origin = true;
				cursor = cr_cross;
				
				if (origin_in_main_player || attack_from_front){ // not wait for predefined center
					origin_x = mainPlayer.x;
					origin_y = mainPlayer.y;
					found_origin = true;
				}
				
				if (found_origin) {
				
					search_origin = false;
					cursor = cr_size_all;
				
					// seleccion de area
					TRIANGLE = true;
				
					//variables de area
					maxDistance = (1.5) *10; //metros * 10 >> definidos en el script
					angle = (point_direction(origin_x, origin_y, mouse_x, mouse_y)/2)-22.5;
				
					if(attack_from_front) angle = ((mainPlayer.direction * 90)/2)-22.5;
				//==========================
				
					var count_actors = []
					for(var i = angle; i <= 45+angle; ++i;){
						var enemy = (collision_line(origin_x, origin_y, origin_x + lengthdir_x(maxDistance, 90 * i / 45), origin_y + lengthdir_y(maxDistance, 90 * i / 45),all, true, false))
							if(enemy != -4 && enemy != mainPlayer){
								if(!is_in_array(count_actors, enemy.myName)){
										array_push(count_actors, enemy.myName)
								}
							}
					}
				}			
		}
	}
}