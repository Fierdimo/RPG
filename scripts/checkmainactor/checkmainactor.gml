function checkMainActor(actor){
with(actor[0]){
	if(actionKeys.scan(myBuffs)){
		checkTmp();				
		// searchForAttacks >> if (successfullAttack) damageHitPoints   <<<<<<<<<<<<<<<<<< TODO
		damageHitPoints();
		my = create_player(db);
		reBuffActor();
	}
	finishOldBuffs();
}
}