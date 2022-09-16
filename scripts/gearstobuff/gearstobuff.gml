function gearsToBuff(){
	var i = 0;
	repeat(array_length(myGears.equiped)){
		var effect_index = 0;
		var gearEffect = myGears.equiped[i].effect;
		repeat(array_length(gearEffect)){
			if(gearEffect[effect_index].variant == ACTION_KEY ){ 
				if(gearEffect[effect_index].key != "") actionKeys.add(gearEffect[effect_index].key, skills(gearEffect[effect_index].skillCode));
			}
			else
				array_push(myBuffs, myGears.equiped[i].effect[effect_index] )
			
			effect_index++;
		}
		i++;
	}
}