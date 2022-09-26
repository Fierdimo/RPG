function do_damage(deployment, origin, multiplier = 1){
		
		var subSearch = 0;
		var myBuffs = origin.myBuffs;
		var change =  floor(extractByStat(deployment.value));
		
		
			while(subSearch < array_length(myBuffs) ){
				
					//check DR/ER
				if(myBuffs[subSearch].target == actor_base.damage_reduction && myBuffs[subSearch].type == deployment.type){						
					change -= extractByStat(myBuffs[subSearch].value);
					if ( change < 0) return 0;
					break;
				}
				subSearch++;
			}
				
				change = floor(change*multiplier);
					
					//check temp hp
				if (change >= origin.myTempHP){
					change -= origin.myTempHP; 
					origin.myTempHP = 0;					
				}else{
					origin.myTempHP -=change;
					change = 0;
				}
						
		return -floor(change);
	
}

