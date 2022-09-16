function Player() constructor{
	
	name = "";
	changed = false
	
	//Stats
	str = new Ability();
	dex = new Ability();
	con = new Ability();
	int = new Ability();
	wis = new Ability();
	cha = new Ability();
	
	//Basics
	hitPoints = new HitPoints();
	armorClass = new ArmorClass();
		 		 
	//Saves
	fortitude = new BaseStat();
	reflex = new BaseStat();
	will = new BaseStat();
		 
	//Skills
	acrobatics = new BaseStat();
	alchemy = new BaseStat();
	armors = new BaseStat();
	appraise = new BaseStat();
	bluff = new BaseStat();
	climb = new BaseStat();
	diplomacy = new BaseStat();
	disableDevice = new BaseStat();
	escape = new BaseStat();
	heal = new BaseStat();
	heavyWeapons = new BaseStat();
	intimidate = new BaseStat();
	lightWeapons = new BaseStat();
	perception = new BaseStat();
	senseMotive = new BaseStat();
	spellCraft = new BaseStat();
	stealth = new BaseStat();
	survival = new BaseStat();
	taylor = new BaseStat();		 
		 
	//Specials
	standardActionSpeed = new BaseStat();
	moveActionSpeed = new BaseStat();
	swiftActionSpeed = new BaseStat();
	counterActionSpeed = new BaseStat();
	moveSpeed = new BaseStat();
			
	function stat(skill = UNTYPED, value = 0, type = UNTYPED, maxVal = 0 ){
		
		if(skill == HIT_POINTS)		hitPoints.add(value, type, maxVal);		
		if(skill == ARMOR_CLASS)	armorClass.add(value, type);
		
		//Stats		 
		if (skill == STR) {
			str.add(value, type);
			armors.add(str.modificator(), ABILITY);
			climb.add(str.modificator(), ABILITY);
			heavyWeapons.add(str.modificator(), ABILITY);			
		}
				
		if (skill == DEX) {
			dex.add(value, type);
			reflex.add(dex.modificator());
			armorClass.add(dex.modificator());
			
			acrobatics.add(str.modificator(), ABILITY);
			disableDevice.add(str.modificator(), ABILITY);
			escape.add(str.modificator(), ABILITY);
			lightWeapons.add(str.modificator(), ABILITY);
			stealth.add(str.modificator(), ABILITY);
			
			moveSpeed.add(((dex.total()-10)/100));
		}
		
		if (skill == CON) {
			con.add(value, type);
			fortitude.add(dex.modificator());
		}
		
		if (skill == INT) {
			int.add(value, type);
			alchemy.add(str.modificator(), ABILITY);
			appraise.add(str.modificator(), ABILITY);
			spellCraft.add(str.modificator(), ABILITY);
			taylor.add(str.modificator(), ABILITY);
			
			standardActionSpeed.add(((int.total()-10)/100));
		}
		
		if (skill == WIS){
			wis.add(value, type);
			will.add(dex.modificator());
			
			heal.add(str.modificator(), ABILITY);
			perception.add(wis.modificator(), ABILITY);
			senseMotive.add(str.modificator(), ABILITY);
			survival.add(str.modificator(), ABILITY);
		}
		
		if (skill == CHA) {
			cha.add(value, type);	
			bluff.add(str.modificator(), ABILITY);
			diplomacy.add(str.modificator(), ABILITY);
			intimidate.add(str.modificator(), ABILITY);
		}
		
		//Saves
		if (skill ==	FORTITUDE)		fortitude.add(value, type);
		if (skill ==	REFLEX)			reflex.add(value, type);
		if (skill ==	WILL)				will.add(value, type);
		
		//Skills
		
		if (skill ==	ACROBATICS)		acrobatics.add(value, type);
		if (skill ==	ALCHEMY)			alchemy.add(value, type);
		if (skill ==	ARMORS)			armors.add(value, type);
		if (skill ==	APPRAISE)			appraise.add(value, type);
		if (skill ==	BLUFF)			bluff.add(value, type);
		if (skill ==	CLIMB)			climb.add(value, type);
		if (skill ==	DIPLOMACY)		diplomacy.add(value, type);
		if (skill ==	DISABLE_DEVICE)	disableDevice.add(value, type);
		if (skill ==	ESCAPE)			escape.add(value, type);
		if (skill ==	HEAL)				heal.add(value, type);
		if (skill ==	HEAVY_WEAPONS)	heavyWeapons.add(value, type);
		if (skill ==	INTIMIDATE)		intimidate.add(value, type);
		if (skill ==	LIGHT_WEAPONS)	lightWeapons.add(value, type);
		if (skill ==	PERCEPTION)		perception.add(value, type);
		if (skill ==	SENSE_MOTIVE)	senseMotive.add(value, type);
		if (skill ==	SPELLCRAFT)		spellCraft.add(value, type);
		if (skill ==	STEALTH)			stealth.add(value, type);
		if (skill ==	SURVIVAL)			survival.add(value, type);
		if (skill ==	TAYLOR)			taylor.add(value, type);
		
		//specials
		if (skill ==	SASPD)		standardActionSpeed.add(value, type);
		if (skill ==	MASPD)		moveActionSpeed.add(value, type);
		if (skill ==	SWASPD)		swiftActionSpeed.add(value, type);
		if (skill ==	CASPD)		counterActionSpeed.add(value, type);
		if (skill ==	MSPEED)		moveSpeed.add(value, type);
		
		changed = true;
		return
			{				
				name:			name,
				HP:				hitPoints.showme(),
				CA:				armorClass,
				
				strength:			{ total: str.total(), modificator: str.modificator()},
				dexterity:		{ total: dex.total(), modificator: dex.modificator()},
				constitution:	{ total: con.total(), modificator: con.modificator()},
				intelligence:	{ total: int.total(), modificator: int.modificator()},
				wisdom:			{ total: wis.total(), modificator: wis.modificator()},
				charisma:		{ total: cha.total(), modificator: cha.modificator()},
				
				fortitude:		fortitude.total(),
				reflex:			reflex.total(),
				will:				will.total(),
				
				acrobatics:			acrobatics.total(),
				alchemy:				alchemy.total(),
				armors:				armors.total(),
				appraise:			appraise.total(),
				bluff:					bluff.total(),
				climb:					climb.total(),
				diplomacy:			diplomacy.total(),
				disableDevice:	disableDevice.total(),
				escape:				escape.total(),
				heal:					heal.total(),
				heavyWeapons:	heavyWeapons.total(),
				intimidate:			intimidate.total(),
				lightWeapons:	lightWeapons.total(),
				perception:			perception.total(),
				senseMotive:		senseMotive.total(),
				spellCraft:			spellCraft.total(),
				stealth:				stealth.total(),
				survival:				survival.total(),
				taylor:					taylor.total(),
				
				standardActionSpeed:	standardActionSpeed.total(),
				moveActionSpeed:			moveActionSpeed.total(),
				swiftActionSpeed:			swiftActionSpeed.total(),
				counterActionSpeed:		counterActionSpeed.total(),
				walkSpeed:						moveSpeed.total(),
			}
	}
}