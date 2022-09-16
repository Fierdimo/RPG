function create_player(db){
	
	_player = new Player();
	
	_player.name = db.name; 
	
	_player.stat(HIT_POINTS, db.hitPoints, BASE);
	_player.stat(HIT_POINTS, db.hitPointsMarked, MARKED);
	_player.stat(HIT_POINTS, db.hitPointsTemp, TEMP);
	
	_player.stat(ARMOR_CLASS, db.armor_class, BASE);
	
	_player.stat(STR, db.fue, BASE);
	_player.stat(DEX, db.dex, BASE);
	_player.stat(CON, db.con, BASE);
	_player.stat(INT, db.int, BASE);
	_player.stat(WIS, db.sab, BASE);
	_player.stat(CHA, db.car, BASE);
	
	_player.stat(FORTITUDE, db.fortitude, BASE);
	_player.stat(REFLEX, db.reflex, BASE);
	_player.stat(WILL, db.will, BASE);

	_player.stat(ACROBATICS, db.fortitude, BASE);
	_player.stat(ALCHEMY, db.fortitude, BASE);
	_player.stat(ARMORS, db.fortitude, BASE);
	_player.stat(APPRAISE, db.fortitude, BASE);
	_player.stat(BLUFF, db.fortitude, BASE);
	_player.stat(CLIMB, db.fortitude, BASE);
	_player.stat(DIPLOMACY, db.fortitude, BASE);
	_player.stat(DISABLE_DEVICE, db.fortitude, BASE);
	_player.stat(ESCAPE, db.fortitude, BASE);
	_player.stat(HEAL, db.fortitude, BASE);
	_player.stat(HEAVY_WEAPONS, db.fortitude, BASE);
	_player.stat(INTIMIDATE, db.fortitude, BASE);
	_player.stat(LIGHT_WEAPONS, db.fortitude, BASE);
	_player.stat(PERCEPTION, db.fortitude, BASE);
	_player.stat(SENSE_MOTIVE, db.fortitude, BASE);
	_player.stat(SPELLCRAFT, db.fortitude, BASE);
	_player.stat(STEALTH, db.fortitude, BASE);
	_player.stat(SURVIVAL, db.fortitude, BASE);
	_player.stat(TAYLOR, db.fortitude, BASE);
	
	_player.stat(SASPD, db.standardActionSpeed, BASE);
	_player.stat(MASPD, db.moveActionSpeed, BASE);
	_player.stat(SWASPD, db.swiftActionSpeed, BASE);
	_player.stat(CASPD, db.counterActionSpeed, BASE);
	_player.stat(MSPEED, db.walkSpeed, BASE);
	
	return _player

}