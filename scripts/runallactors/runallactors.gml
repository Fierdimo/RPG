function runAllActors(actor){
var indx = 0;
while(indx < array_length(actor)){	
	with(actor[indx]){	
		sAdd = global.pulse;
		distance = distance_to_object(oGame.mainPlayer);
		//if (distance >= 100000) distance = 0;
		if(changed){
			changed = false;
			
			myRelativeHP = (myHP/my.stat().HP.base)*100;
			myRelativeHPTemp = (myTempHP/my.stat().HP.temporal)*100;	
			
			myTempHP = my.stat().HP.temporal;
			walkSpeed = my.stat().walkSpeed;			
		}
	}
	indx++;
}
}