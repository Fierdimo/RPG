function runAllActors(actor){
var indx = 0;
while(indx < array_length(actor)){	
	with(actor[indx]){	
		sAdd = global.pulse;
		distance = distance_to_object(oGame.mainPlayer)/10;
		if (distance >= 100000) distance = 0;
		if(changed){
			changed = false;
			myRelativeHP = ((my.stat().HP.marked/my.stat().HP.base)*100);
			myRelativeHPTemp = ((my.stat().HP.temporal/my.stat().HP.max_temp)*100);
			myHP =  my.stat().HP.marked
			myTempHP = my.stat().HP.temporal;
			walkSpeed = my.stat().walkSpeed;			
		}
	}
	indx++;
}
}