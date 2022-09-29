function manageBuffs(){
	var msg = ""
	
	var currentTime = get_timer() - global.buff_timer;
	if(currentTime >= 1000000) {
		global.buff_timer = get_timer();
		
		for (var in_turn = 0; in_turn < array_length(Actors); in_turn++){
			with(Actors[in_turn]){
				#region Check timer of buffs and modify each counter
				var indTimer = 0;
				while(indTimer < myBuffs.len()){
					if(variable_struct_exists(myBuffs.item(indTimer), "time")){						
						myBuffs.item(indTimer).time.increase--;
						if(myBuffs.item(indTimer).time.increase <= 0) {
							myBuffs.del(indTimer);
							msg = "bye buff"
							changed = true;
							continue;
						}						
					}
					indTimer++;
				}
				#endregion
				#region Rebuild if changed buff status
				if (changed){								
					changed = false;
					my = create_player(db);		
					my.essemble_equipment(db.gears_db);
		
					for(var i = 0; i < myBuffs.len(); i++){
						my.stat(myBuffs.item(i).target, extractByStat(myBuffs.item(i).value), myBuffs.item(i).type);
					}
					
					if (my.stat().HP.temporal == 0) myTempHP = 0;
					
					myRelativeHP = (myHP/my.stat().HP.base)*100;
					myRelativeHPTemp = (myTempHP/my.stat().HP.temporal)*100;
						
					walkSpeed = my.stat().walkSpeed;	
				}
				#endregion
			}
		}
	}
}



				