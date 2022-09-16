function damageHitPoints(){
	var _actual_ = 0;
	while(_actual_ < array_length(myBuffs)){
		if(typeof(myBuffs[_actual_].type) == "struct"){
			var toMark = extractByStat(myBuffs[_actual_].value);
			var typeOfThisBuff = myBuffs[_actual_].type.source
			array_delete(myBuffs, _actual_, 1);
	
			//check for DR/ER
			var subSearch = 0
			while(array_length(myBuffs) > subSearch){
				if(myBuffs[subSearch].stat == DAMAGE_REDUCTION && myBuffs[subSearch].type == typeOfThisBuff){
						
					toMark += extractByStat(myBuffs[subSearch].value);
					if (toMark >= 0) return 0;
				}
				subSearch++;
			}
	
			//check for temp HP
			var search = 0;
			while(array_length(myBuffs) > search){
						
				if(myBuffs[search].stat == HIT_POINTS && myBuffs[search].type == TEMP){ 
					if (myBuffs[search].value.magnitude != STATIC_VALUE) convertToStatic (myBuffs[search].value )
										
					var hitPointsTemp = myBuffs[search].value.increase
					if(-toMark >= hitPointsTemp) {
						toMark += hitPointsTemp;
						array_delete(myBuffs, search, 1);
						continue;
					}else{
						myBuffs[search].value.increase += toMark
						return 0;
					}
				}
				search++
			}	
	
			//Final stage
			if (my.stat().HP.marked + toMark < 0) toMark -=  my.stat().HP.marked + toMark
			if (my.stat().HP.marked + toMark > my.stat().HP.base) toMark =  my.stat().HP.base - my.stat().HP.marked
	
			db.hitPointsMarked +=  toMark
		}
		_actual_++;
	}
}

