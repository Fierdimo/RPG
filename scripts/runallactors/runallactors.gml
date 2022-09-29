function runAllActors(actor){
var indx = 0;
while(indx < array_length(actor)){	
	with(actor[indx]){	
		sAdd = global.pulse;
		distance = distance_to_object(oGame.mainPlayer);
		//if (distance >= 100000) distance = 0;
	}
	indx++;
}
}