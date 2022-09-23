
	randomize();
	
	//	Time factors
	actionTimer = get_timer();	
		
	//create actors
	Actors = createActors(actor_list());
	mainPlayer = Actors[0];			
	target = mainPlayer.myArrayPosition;
	doubleClick = false;
	
	selected = false; //IT NEVER MUST CHANGE
	
	gui_gear = new buttons_DnD();
	
			var bag_slot = 1;
			var myBag = variable_instance_get(mainPlayer.my, "bag" ).show(); // valido solo si consigo el maximo por slot, que estan en DB
			repeat 12 { 
				var x_slot = (ceil(bag_slot/4)*4)-bag_slot;
				var y_slot = ((ceil(bag_slot/4)*4)/4)-1;
				if bag_slot <= array_length(myBag) gui_gear.add(44+(x_slot*80), 96+y_slot*(32), btn_green, btn_blue, true);
				else  gui_gear.add(44+(x_slot*80), 96+y_slot*(32), btn_void);
				
				
				bag_slot++;
			}
			
			var myWeapons = variable_instance_get(mainPlayer.my, "weapons").show();  // valido solo si consigo el maximo por slot, que estan en DB
			var weapons_slot = 0
			repeat 2{
				if weapons_slot < array_length(myWeapons){
					gui_gear.add(423+(weapons_slot*48), 72, icn_cross_swords, btn_blue );
					//draw_text(gui_x+423+(weapons_slot*48), gui_y+80, myWeapons[weapons_slot].name);
				} else gui_gear.add(423+(weapons_slot*48), 72, icn_void );
				weapons_slot ++;
			}
			
			
		
		gui_gear.set_function_press(mark_availability)
		gui_gear.set_function_release(change_slot)

