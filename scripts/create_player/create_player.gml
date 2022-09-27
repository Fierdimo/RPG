function create_player(db){
	
	_player = new Player();
	
	_player.name = db.name; 
		
	_player.stat(actor_base.armor_class, db.armor_class, bonus.base);
	_player.stat(actor_base.size, db.size )
	
	_player.stat(actor_stat.strength, db.fue, bonus.base);
	_player.stat(actor_stat.dexterity, db.dex, bonus.base);
	_player.stat(actor_stat.constitution, db.con, bonus.base);
	_player.stat(actor_stat.intelligence, db.int, bonus.base);
	_player.stat(actor_stat.wisdom, db.sab, bonus.base);
	_player.stat(actor_stat.charisma, db.car, bonus.base);
	
	_player.stat(save.fortitude, db.fortitude, bonus.base);
	_player.stat(save.reflex, db.reflex, bonus.base);
	_player.stat(save.will, db.will, bonus.base);

	_player.stat(actor_ability.acrobatics, db.fortitude, bonus.base);
	_player.stat(actor_ability.alchemy, db.fortitude, bonus.base);
	_player.stat(actor_ability.armors, db.fortitude, bonus.base);
	_player.stat(actor_ability.appraise, db.fortitude, bonus.base);
	_player.stat(actor_ability.bluff, db.fortitude, bonus.base);
	_player.stat(actor_ability.climb, db.fortitude, bonus.base);
	_player.stat(actor_ability.diplomacy, db.fortitude, bonus.base);
	_player.stat(actor_ability.disable_device, db.fortitude, bonus.base);
	_player.stat(actor_ability.escape, db.fortitude, bonus.base);
	_player.stat(actor_ability.heal, db.fortitude, bonus.base);
	_player.stat(actor_ability.heavy_weapons, db.fortitude, bonus.base);
	_player.stat(actor_ability.intimidate, db.fortitude, bonus.base);
	_player.stat(actor_ability.light_weapons, db.fortitude, bonus.base);
	_player.stat(actor_ability.perception, db.fortitude, bonus.base);
	_player.stat(actor_ability.sense_motive, db.fortitude, bonus.base);
	_player.stat(actor_ability.spellcraft, db.fortitude, bonus.base);
	_player.stat(actor_ability.stealth, db.fortitude, bonus.base);
	_player.stat(actor_ability.survival, db.fortitude, bonus.base);
	_player.stat(actor_ability.taylor, db.fortitude, bonus.base);
	
	_player.stat(spd.standard_action, db.standardActionSpeed, bonus.base);
	_player.stat(spd.move_action, db.moveActionSpeed, bonus.base);
	_player.stat(spd.swift_action, db.swiftActionSpeed, bonus.base);
	_player.stat(spd.inmediate_action, db.inmediateActionSpeed, bonus.base);
	_player.stat(spd.move_action, db.walkSpeed, bonus.base);
	
	return _player

}