draw_set_halign(fa_left)
draw_set_font(GUI);
draw_set_color(c_white);

#region //IMPORT LAYER FOR GUI
	var gui_x = gui_gear.gui_x;
	var gui_y = gui_gear.gui_y;
	layer_set_target_room(gui_room);

		var map_id = layer_tilemap_get_id(layer_get_id(gui_layer));
			for (var i = 0; i < tilemap_get_width(map_id); i++;)
			{
				for (var j = 0; j < tilemap_get_height(map_id); j++;)
				{
				    var coord = coordinates_to_gui((i)*tilemap_get_tile_width(map_id), (j)*tilemap_get_tile_height(map_id))
					var data = tilemap_get(map_id, i, j);
					draw_tile(tile_golden, data,0, gui_x+coord.x, gui_y+coord.y);	
				}
			}
	
	layer_reset_target_room();
	
#endregion

with(oGame.mainPlayer){	// SHOW PLAYER STATS
	draw_healthbar(10,40,200,50,myRelativeHP, c_yellow, c_teal, c_green,0,true,true);
	draw_text(30,47, string(myHP))
	
	if(myTempHP){
		draw_healthbar(10,60,200,70,myRelativeHPTemp, c_black, c_yellow, c_orange, 0,false,true);
		draw_text(30,67, string(myTempHP))
	}

		#region // SHOW STATS
		var statistics = ["strength", "dexterity", "constitution", "intelligence", "wisdom", "charisma"];
		for(var st = 0; st < array_length(statistics); st++){
			var stat = variable_instance_get(my.stat(), statistics[st])
			draw_text(gui_x+30+(st*60), gui_y+ 32, string_copy(statistics[st],1, 3)+":"+ string(stat.total)+"("+string(stat.modificator)+")");
		}
		#endregion
}

// GUI	EQUIPMENT DRAG N DROP
		gui_gear.draw_buttons();
		gui_gear.draw_while_drag()