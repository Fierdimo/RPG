function buildActor(){
my = create_player(db);
essemble_gears(db.gear, EQUIPMENT);
essemble_gears(db.bag, BAG);
					
if(object_index == oPlayer){
	myName = db.name
	actionKeys = new CheckActionKeys();
	skill_seconds = current_second;
}
gearsToBuff();
					
for(var i = 0; i < array_length(myBuffs); i++)
	{my.stat(myBuffs[i].target, extractByStat(myBuffs[i].value), myBuffs[i].type );}
				
walkSpeed = my.stat().walkSpeed;
}