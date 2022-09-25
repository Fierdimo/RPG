function buildActor(){
	if(object_index == oPlayer){
		myName = db.name;
	}
	if db.hitPoints > 0 db.hitPoints = 0;
	
	actionKeys = new CheckActionKeys();
	
	my = create_player(db);	
	my.essemble_equipment(db.gears_db);
	my.equipment_to_buff(actionKeys, myBuffs);
	
	myHP = my.stat().HP.base + db.hitPoints;
	myTempHP = my.stat().HP.temporal + db.hitPointsTemp;
	
	walkSpeed = my.stat().walkSpeed;	
}