	gui_room = GUI_GEARS;
	gui_layer = "equipment";
	
	gui_gear = new buttons_DnD();
	gui_gear.set_origin(0,100);
	gui_gear.set_function_press(mark_availability);
	gui_gear.set_function_release(change_slot);
	
			var bag_slot = 1;
			var myBag = variable_instance_get(oGame.mainPlayer.my, "bag" ).show(); // valido solo si consigo el maximo por slot, que estan en DB
			repeat 12 { 
				var x_slot = (ceil(bag_slot/4)*4)-bag_slot;
				var y_slot = ((ceil(bag_slot/4)*4)/4)-1;
				
				if bag_slot <= array_length(myBag) gui_gear.add(44+(x_slot*80), 96+y_slot*(32), btn_green_live, btn_blue, oGame.mainPlayer.my.bag.show()[bag_slot-1], true);
				else  gui_gear.add(44+(x_slot*80), 96+y_slot*(32), btn_void);
							
				bag_slot++;
			}
			
			var myWeapons = variable_instance_get(oGame.mainPlayer.my, "weapons").show();  // valido solo si consigo el maximo por slot, que estan en DB
			var weapons_slot = 0
			repeat 2{
				if weapons_slot < array_length(myWeapons){
					gui_gear.add(423+(weapons_slot*48), 72, icn_cross_swords, btn_blue, oGame.mainPlayer.my.weapons.show()[weapons_slot]);
				} else gui_gear.add(423+(weapons_slot*48), 72, icn_void );
				weapons_slot ++;
			}			
			
	layer_set_target_room(gui_room);
			var buttons = 0;
			var map_id = layer_tilemap_get_id(layer_get_id("souls"));
			for (var i = 0; i < tilemap_get_width(map_id); i++;)
			{
				for (var j = 0; j < tilemap_get_height(map_id); j++;)
				{
				    var data = tilemap_get(map_id, i, j);
				    if !tile_get_empty(data)
				    {
						var coord = coordinates_to_gui((i)*tilemap_get_tile_width(map_id), (j)*tilemap_get_tile_height(map_id))
						if buttons <= array_length(myBag) gui_gear.add(coord.x,coord.y, btn_green_live, btn_blue, oGame.mainPlayer.my.bag.show()[buttons], true);
						buttons++;
				    }
				}
			}
	layer_reset_target_room();