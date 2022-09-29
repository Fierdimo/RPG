function do_damage(deployment, source, multiplier = 1){
		
		var subSearch = 0;
		with (source) var change =  floor(extractByStat(deployment.value)*multiplier);
		
			#region	check DR/ER
			while(subSearch < myBuffs.len()){				
				if(myBuffs.item(subSearch).target == actor_base.damage_reduction && myBuffs.item(subSearch).type == deployment.type){						
					change -= extractByStat(myBuffs.item(subSearch).value);
					if ( change < 0) return 0;
					break;
				}
				subSearch++;
			}
			#endregion
					
			#region check temp HP
			if (change >= myTempHP){
				change -= myTempHP; 
				myTempHP = 0;					
			}else{
				myTempHP -=change;
				change = 0;
			}
			#endregion		
		
		return -floor(change);	
}

