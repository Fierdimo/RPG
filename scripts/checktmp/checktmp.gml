function checkTmp(){
	
	for(var ind1 = 0; ind1 < array_length(myBuffs); ind1++){
				if(myBuffs[ind1].type == TEMP){
					for(var ind2 = 0; ind2 < array_length(myBuffs); ind2++){
						if(myBuffs[ind2].type == TEMP && myBuffs[ind2].value.increase <= myBuffs[ind1].value.increase && ind1 != ind2){
							array_delete(myBuffs, ind2, 1);
							return
						}
					}
				}
	}
				
}