function reBuffActor(){
	for(var i = 0; i < array_length(myBuffs); i++){
		var tempHP = 0
		if(myBuffs[i].type == TEMP) tempHP = extractByStat(myBuffs[i].value,true)
		my.stat(myBuffs[i].stat, extractByStat(myBuffs[i].value), myBuffs[i].type, tempHP);
		changed = true;
	}
}