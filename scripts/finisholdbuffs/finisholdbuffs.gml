function finishOldBuffs(){
	var currentTime = get_timer() - buffTimer;
	if(currentTime >= 1000000) {
		var indTimer = 0;
		while(indTimer < array_length(myBuffs)){
			if(variable_struct_exists(myBuffs[indTimer], "time")){
				if(typeof(myBuffs[indTimer].time) == "struct"){
					myBuffs[indTimer].time.increase--;
					if(myBuffs[indTimer].time.increase <= 0) {
						array_delete(myBuffs, indTimer, 1);
						changed = true;
						continue;
					}
				}
				else {
					myBuffs[indTimer].time --;
					if(myBuffs[indTimer].time.increase <= 0){
						array_delete(myBuffs, indTimer, 1);
						changed = true;
						continue;
					}
				}
			}
			indTimer++;
		}
		buffTimer = get_timer();
	}
	
	if changed{ 
	
		my = create_player(db);
		
		my.essemble_equipment(db.gears_db);
		reBuffActor();
		walkSpeed = my.stat().walkSpeed;	
		}
}

