function replace_playerOptions(gear, gear_from_character){
	
	var index = 0;
	repeat(array_length(gear.effect)){
		if(variable_struct_exists(gear.effect[index], "skillCode")) 
				gear.effect[index].key = gear_from_character.playerDefined[index];	
		else 
			if(gear.effect[index].value.increase == PLAYER_DEFINED)  gear.effect[index].value.increase = gear_from_character.playerDefined[index];
		index++;
	}
	gear.experience_conditions.value = gear_from_character.experience;
}