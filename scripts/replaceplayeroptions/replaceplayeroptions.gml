function replace_playerOptions(gear, gear_from_character){
	
	var index = 0;
	repeat(array_length(gear.effect)){
		if(gear.effect[index].variant == ACTION_KEY) 
				gear.effect[index].key = 
				gear_from_character.playerDefined[index];	
		else 
			if(gear.effect[index].value.increase == PLAYER_DEFINED)  gear.effect[index].value.increase = gear_from_character.playerDefined[index];
		index++;
	}
	gear.experience_conditions.value = gear_from_character.experience;
}