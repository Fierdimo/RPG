function buildActor(){
	if(object_index == oPlayer){
		myName = db.name;
	}
	
	actionKeys = new CheckActionKeys();
	
	my = create_player(db);	
	my.essemble_equipment(db.gears_db);
	my.equipment_to_buff(actionKeys, myBuffs);
	walkSpeed = my.stat().walkSpeed;	
}