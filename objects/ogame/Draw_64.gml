draw_set_halign(fa_left)
draw_set_font(GUI);
draw_set_color(c_white);

//draw_text(10,287, Actors[target].myName+" >> " + string(Actors[target].distance)+" mts")
with(mainPlayer){	
	draw_healthbar(10,40,200,50,myRelativeHP, c_yellow, c_teal, c_green,0,true,true);
	draw_text(30,47, string(myHP))
	
	if(myTempHP){
		draw_healthbar(10,60,200,70,myRelativeHPTemp, c_black, c_yellow, c_orange, 0,false,true);
		draw_text(30,67, string(myTempHP))
	}

		var gui_x = 0;
		var gui_y = 100
		layer_set_target_room(GUI_GEARS);
		var lay_id = layer_get_id("equipment");
		var map_id = layer_tilemap_get_id(lay_id);
		draw_tilemap(map_id, gui_x,gui_y);
		layer_reset_target_room();
		
		#region //STATS
		var statistics = ["strength", "dexterity", "constitution", "intelligence", "wisdom", "charisma"];
		for(var st = 0; st < array_length(statistics); st++){
			var stat = variable_instance_get(my.stat(), statistics[st])
			draw_text(gui_x+30+(st*60), gui_y+ 32, string_copy(statistics[st],1, 3)+":"+ string(stat.total)+"("+string(stat.modificator)+")");
		}
		#endregion
		
		
	
		
}

		gui_gear.set_origin(0,100);
		gui_gear.draw_buttons();

//423 .72