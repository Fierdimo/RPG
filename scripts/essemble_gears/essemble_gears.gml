function essemble_gears(gear_array, destine){
		
	var index = 0;
	repeat(array_length(gear_array)){
		
			var gear = equipment_db(gear_array[index].code);
										
			if(gear.code != -1) replace_playerOptions(gear, gear_array[index]); // reemplazar valores 
			else continue;
			
			if (destine = EQUIPMENT){ myGears.add(gear, index); }				
			if (destine = BAG){myBag.add(gear, index);}
			
			index++;
	}
}