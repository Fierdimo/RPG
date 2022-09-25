function detect_targets_by_shape(data){
	var count_actors = [];
	var _list = ds_list_create();
	var ind = 0;
	
	#region // funcion accesoria
	function add_to_array(array, collided){
		if(collided != -4){
				if(!is_in_array(array, collided)){
						array_push(array, collided);
				}
		}
	}
	#endregion

//	Detecting targets by shape ======================
			switch(global.shape){
					case SHAPE.CONE:
						for(var i = global.angle; i <= 90+global.angle; i++){
							 var collided = collision_line(global.origin_x, global.origin_y, global.origin_x + lengthdir_x(global.area_spread, i-45 ), global.origin_y + lengthdir_y(global.area_spread, i-45),all , true, false);
							add_to_array(count_actors, collided)
						}
						break;
				case SHAPE.SQUARE:
						var lenght = collision_rectangle_list(global.origin_x-global.area_spread, global.origin_y-global.area_spread,global.origin_x+global.area_spread , global.origin_y+global.area_spread,all, false, false, _list,true)
						repeat (lenght) array_push(count_actors, _list[|ind++]);
						break;
					
				case SHAPE.BURST:
						var lenght = collision_circle_list(global.origin_x, global.origin_y,global.area_spread,all, false, false, _list,true)
						repeat (lenght) array_push(count_actors, _list[|ind++]);
						break;
						
				case SHAPE.LINE :
						var _ngle = ( global.area_spread/60)*(160/global.area_spread)	
						var newOriginX = global.origin_x + lengthdir_x(_ngle*_ngle*0.5, global.angle+90)
						var newOriginY = global.origin_y + lengthdir_y(_ngle*_ngle*0.5, global.angle+90)
						var lenght = collision_line_list(newOriginX + lengthdir_x(_ngle*_ngle, global.angle-90), newOriginY + lengthdir_y(_ngle*_ngle,global.angle-90), newOriginX + lengthdir_x(global.area_spread, global.angle-_ngle), newOriginY + lengthdir_y(global.area_spread, global.angle-_ngle),all , true, false,_list, true);
						repeat (lenght) add_to_array(count_actors, _list[|ind++])
						ind = 0;
						lenght = collision_line_list(newOriginX, newOriginY, newOriginX + lengthdir_x(global.area_spread, global.angle), newOriginY + lengthdir_y(global.area_spread, global.angle),all , true, false,_list, true);
						repeat (lenght) add_to_array(count_actors, _list[|ind++])
						break;
						
				default:
						break;				
			}
	global.shape = SHAPE.none;
	
	if(!data.effect.on_caster) { seek_in_array_and_destroy(count_actors, oGame.mainPlayer, false);}	
	
	return count_actors
}