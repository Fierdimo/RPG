function manageBuffs(){
	
	
	var in_turn = 0;
	while(in_turn < array_length(Actors)){
		with(Actors[in_turn]){
			
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
								myBuffs[indTimer].time--;
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
		
					changed = false;
					my = create_player(db);		
					my.essemble_equipment(db.gears_db);
		
					for(var i = 0; i < array_length(myBuffs); i++){
						my.stat(myBuffs[i].target, extractByStat(myBuffs[i].value), myBuffs[i].type);
						if(myBuffs[i].target == actor_base.hit_points && myBuffs[i].type == bonus.temporal) myTempHP = change_vital(myTempHP, 0, bonus.temporal)
					}
					walkSpeed = my.stat().walkSpeed;	
				}
		}
	in_turn++;
	}
}

